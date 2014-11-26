<?php
/************************************************************************
Telaen is a GPL'ed software developed by

 - The Telaen Group
 - http://jimjag.github.io/telaen/

*************************************************************************/

/*
 * This module takes care of setting and/or initializing
 * pre-init core aspects of Telaen before main initialization.
 *
 * Why not simply fold into init.php? index.php doesn't require
 * or work if init.php is scarfed in.
 */

defined('I_AM_TELAEN') or die('Direct access not permitted');

require_once './inc/class/class.Telaen.php';
require_once './inc/class/class.MyMonth.php';
require_once './inc/class/class.Mbox.php';
require_once './inc/class/class.Session.php';

@set_magic_quotes_runtime(0);            // Smarty and magic_quotes_runtime ON do not mix.

$phpver = phpversion();
$phpver = doubleval($phpver[0].'.'.$phpver[2]);
if ((double) $phpver < 5.4) {
    die('PHP version 5.4 and and greater are required');
}
/*
 * "emulate" register_globals ON: These are semi-global
 * vars used by just about all main entry points (see inc/init.php)
 */

extract(Telaen::pull_from_array($_GET, array('pag', 'folder', 'sortby', 'sortorder', 'err', 'ix', 'lng', 'tem'), 's'));
extract(Telaen::pull_from_array($_POST, array('pag', 'folder', 'f_email', 'f_user', 'f_pass', 'six', 'lng', 'tem'), 's'));

$textout = <<<EOF
<!-- Page generated by Telaen (http://jimjag.github.io/telaen/) -->
EOF;

if (!isset($pag)) {
    $pag = 1;
}

define('FL_TYPE_MOVE',      (1 << 0));
define('FL_TYPE_DELETE',    (1 << 1));
define('FL_TYPE_MARK_READ', (1 << 2));
define('FL_TYPE_SPAM',      (1 << 3));

define('FL_FIELD_FROM',    (1 << 0));
define('FL_FIELD_SUBJECT', (1 << 1));
define('FL_FIELD_TO',      (1 << 2));
define('FL_FIELD_HEADER',  (1 << 3));
define('FL_FIELD_BODY',    (1 << 4));
