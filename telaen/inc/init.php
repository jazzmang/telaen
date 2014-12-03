<?php
/************************************************************************
Telaen is a GPL'ed software developed by

 - The Telaen Group
 - http://jimjag.github.io/telaen/

*************************************************************************/

/*
 * Initialize a working Telaen session
 */
defined('I_AM_TELAEN') or die('Direct access not permitted');

@date_default_timezone_set(@date_default_timezone_get());

@set_time_limit(0);
session_name('telaen');
session_start();
$sid = session_id();
/* We grab the actual session data below with the Session class */

require_once './inc/preinit.php';

$TLN = new Telaen();
$TLN->load_config();

umask($TLN->config['default_umask']);

require_once './inc/errorhandler.php';

require_once $TLN->config['SMARTY_DIR'].'Smarty.class.php';
$smarty = new Smarty();
$smarty->security = true;
$smarty->secure_dir = array('./');
$smarty->compile_dir = $TLN->config['temporary_directory'].'/smarty_ct/';
$smarty->template_dir =     './inc/themes';
$smarty->config_dir = './inc/langs';
$smarty->use_sub_dirs = true;
if (!is_dir($smarty->compile_dir)) {
    mkdir($smarty->compile_dir, (isset($TLN->config['dirperm']) ? $TLN->config['dirperm'] : "0755"));
}

$AuthSession = new Session();
$auth = &$AuthSession->Load('telaen_sess');

// Only process.php is allowed to be run with expired sessions (for login)
if ((I_AM_TELAEN != 'process.php') && (!$auth['auth'])) {
    $TLN->redirect_and_exit('index.php?err=4', true);
}

$TLN->AuthSession = $AuthSession;

if (!array_key_exists('start', $auth)) {
    $auth['start'] = time();
}
$start = $auth['start'];

/*
 * Now load in stored tid and lid, if they exist.
 * otherwise, we init them and store them
 */
require './inc/user_tl.php';

// Assing to smarty the paths for include dinamically menu/header/footer
$smarty->assign('menuTemplate', $menu_template);
$smarty->assign('calendarTemplate', $calendar_template);
$smarty->assign('newsTemplate', $news_template);
$smarty->assign('headerTemplate', $header_template);
$smarty->assign('footerTemplate', $footer_template);
$smarty->assign('popupHeaderTemplate', $popup_header_template);

// For debug in smarty
//$smarty->debugging = true;

$smarty->assign('umLabel', $lang);

// setlocale(LC_ALL, $languages[$lid]['locale']);

// Assign also the webmail title to smarty, check for empty title before
if (!isset($TLN->config['webmail_title'])) {
    $TLN->config['webmail_title'] = 'Telaen Webmail';
}
$smarty->assign('webmailTitle', $TLN->config['webmail_title']);

if (isset($f_pass)) {
    $f_pass = stripslashes($f_pass);
}
if (isset($f_pass) && strlen($f_pass) > 0) {
    // Clean up
    if (isset($f_email)) {
        $f_email = stripslashes($f_email);
    }
    if (isset($f_user)) {
        $f_user = stripslashes($f_user);
    }
    if (isset($f_server)) {
        $f_server = stripslashes($f_server);
    }

    if (isset($f_email) && !PHPMailer::validateAddress($f_email)) {
        $f_email = 'unknown@example.com';
    }
    if (isset($f_user) && !PHPMailer::validateAddress("$f_user@example.com")) {
        $f_user = 'unknown';
    }

    switch (strtoupper($TLN->config['mail_server_type'])) {

    case 'DETECT':
        $f_server = strtolower(getenv('HTTP_HOST'));
        $f_server = str_replace($TLN->config['mail_detect_remove'], "", $f_server);
        $f_server = $TLN->config['mail_detect_prefix'].$f_server;

        if (preg_match('|(.*)@(.*)|', $f_email, $regs)) {
            $f_user = trim($regs[1]);
            $domain = trim($regs[2]);
            if ($TLN->config['mail_detect_login_type'] != "") {
                $f_user = preg_replace('/%user%/i', $f_user, preg_replace('/%domain%/i', $domain, $TLN->config['mail_detect_login_type']));
            }
        }

        $f_protocol = $TLN->config['mail_detect_protocol'];
        $f_port = $TLN->config['mail_detect_port'];
        $f_prefix = $TLN->config['mail_detect_folder_prefix'];

        break;

    case 'ONE-FOR-EACH':
        $domain = trim($TLN->config['mail_servers'][$six]['domain']);
        $f_email = $f_user.'@'.$domain;
        $f_server = $TLN->config['mail_servers'][$six]['server'];
        $login_type = $TLN->config['mail_servers'][$six]['login_type'];

        $f_protocol = $TLN->config['mail_servers'][$six]['protocol'];
        $f_port = $TLN->config['mail_servers'][$six]['port'];
        $f_prefix = $TLN->config['mail_servers'][$six]['folder_prefix'];

        if ($login_type != "") {
            $f_user = preg_replace('/%user%/i', $f_user, preg_replace('/%domain%/i', $domain, $login_type));
        }
        break;

    case 'ONE-FOR-ALL':
        if (preg_match('|(.*)@(.*)|', $f_email, $regs)) {
            $f_user = trim($regs[1]);
            $domain = trim($regs[2]);
            if ($TLN->config['one_for_all_login_type'] != "") {
                $f_user = preg_replace('/%user%/i', $f_user, preg_replace('/%domain%/i', $domain, $TLN->config['one_for_all_login_type']));
            }
        }
        $f_server = $TLN->config['default_mail_server'];
        $f_protocol = $TLN->config['default_protocol'];
        $f_port = $TLN->config['default_port'];
        $f_prefix = $TLN->config['default_folder_prefix'];

        break;
    }

    $TLN->mail_email = $auth['email'] = $f_email = trim(stripslashes($f_email));
    $TLN->mail_user = $auth['user'] = $f_user = trim(stripslashes($f_user));
    $TLN->mail_pass = $auth['pass'] = $f_pass = stripslashes($f_pass);
    $TLN->mail_server = $auth['server'] = $f_server = stripslashes($f_server);

    $TLN->mail_port = $auth['port'] = $f_port;
    $TLN->mail_protocol = $auth['protocol'] = (strcasecmp($f_protocol, 'pop3') ? IMAP : POP3);
    $TLN->mail_prefix = $auth['folder_prefix'] = $f_prefix;

    $TLN->mail_get_capa();
    $auth['capabilities'] = $TLN->capabilities;

    $refr = 1;

    if (is_array($TLN->config['quota_limits'])) {
        foreach ($TLN->config['quota_limits'] as $quota) {
            if (preg_match($quota[0], $TLN->mail_user)) {
                $quota_limit = $quota[1];
                break;
            }
        }
    }
    $quota_limit = Telaen::bkmg2bytes($quota_limit); // ensure bytes
    $auth['quota_limit'] = $quota_limit;
} elseif ($auth['auth'] && ((time() - $start) < ($TLN->config['idle_timeout'] * 60))) {
    $TLN->mail_user = $f_user = $auth['user'];
    $TLN->mail_pass = $f_pass = $auth['pass'];
    $TLN->mail_server = $f_server = $auth['server'];
    $TLN->mail_email = $f_email = $auth['email'];

    $TLN->mail_port = $f_port = $auth['port'];
    $TLN->mail_protocol = $f_protocol = $auth['protocol'];
    $TLN->mail_prefix = $f_prefix = $auth['folder_prefix'];

    $TLN->capabilities = $auth['capabilities'];

    $quota_limit = $auth['quota_limit'];
} else {
    // session expired
        $TLN->redirect_and_exit('index.php?err=4');
}

$auth['start'] = time();

$AuthSession->Save($auth);

$TLN->userfolder = $TLN->config['temporary_directory'].preg_replace('/[^a-z0-9\._-]/', '_', strtolower($f_user)).'_'.strtolower($f_server).'/';

//$UserMbox = new Session();
//$mbox = &$AuthSession->Load('telaen_mbox');

$UserMbox = new Mbox($TLN->userfolder);
$TLN->UserMbox = $UserMbox;

// avoid missing settings allow dirs creation with 000 perms
if (isset($TLN->config['dirperm']) && $TLN->config['dirperm'] != 0000) {
    $TLN->dirperm = $TLN->config['dirperm'];
}

$TLN->load_prefs();

$mymo = new MyMonth($TLN->userfolder);
$mycal = $mymo->monthAsDiv();
$smarty->assign('umCalendar', $mycal);
$smarty->assign('umSystemNews', $TLN->config['systemNews']);

$TLN->charset = $lang['default_char_set'];

/*
Don't remove the following lines, or you will have problems with browser's cache
*/
@Header('Expires: Wed, 11 Nov 1998 11:11:11 GMT');
@Header('Cache-Control: no-cache');
@Header('Cache-Control: must-revalidate');
@Header('Pragma: no-cache');

// No cache metas
$nocache = "
	<meta http-equiv=\"Cache-Control\" content=\"no-cache\" />
	<meta http-equiv=\"Expires\" content=\"-1\" />
	<meta http-equiv=\"Pragma\" content=\"no-cache\" />";

// Common js included system-wide
$commonJS = "
	<script type=\"text/javascript\" src=\"./inc/js/mini_Ajax.js\"></script>
	<script type=\"text/javascript\" src=\"./inc/js/common.js\"></script>
";

// Include also folder list
require_once './folder_list.php';

// Sort rules

$need_save = false;
if (!isset($sortby) || !preg_match('/(subject|fromname|date|size|toname)/', $sortby)) {
    if (array_key_exists('sort-by', $TLN->prefs) && preg_match('/(subject|fromname|date|size|toname)/', $TLN->prefs['sort-by'])) {
        $sortby = $TLN->prefs['sort-by'];
    } else {
        $sortby = $TLN->config['default_sortby'];
    }
} else {
    $need_save = true;
    $TLN->prefs['sort-by'] = $sortby;
}

if (!isset($sortorder) || !preg_match('/ASC|DESC/', $sortorder)) {
    if (array_key_exists('sort-order', $TLN->prefs) && preg_match('/ASC|DESC/', $TLN->prefs['sort-order'])) {
        $sortorder = $TLN->prefs['sort-order'];
    } else {
        $sortorder = $TLN->config['default_sortorder'];
    }
} else {
    $need_save = true;
    $TLN->prefs['sort-order'] = $sortorder;
}

if (isset($need_save)) {
    $TLN->save_prefs($TLN->prefs);
}

if (!isset($folder) || $folder == "" || strpos($folder, '..') !== false) {
    $folder = 'inbox';
} elseif (!file_exists($TLN->userfolder.$TLN->fix_prefix($folder, 1))) {
    $TLN->redirect_and_exit('logout.php');
}
