<?php
/************************************************************************
Telaen is a GPL'ed software developed by 

 - The Telaen Group
 - http://jimjag.github.io/telaen/

*************************************************************************/

/*
 * This module takes care of setting and/or initializing
 * various aspects of Telaen that should be universal.
 */

if (!defined('I_AM_TELAEN')) {die('Direct access not premitted');}

umask($default_umask);

@set_magic_quotes_runtime(0);			// Smarty and magic_quotes_runtime ON do not mix.

$phpver = phpversion();
$phpver = doubleval($phpver[0].'.'.$phpver[2]);
if ((double)$phpver < 5.4) {
	die('PHP version 5.4 and and greater are required');
}
/*
 * "emulate" register_globals ON: These are semi-global
 * vars used by just about all main entry points (see inc/init.php)
 */

extract(pull_from_array($_GET, array('pag', 'folder', 'sortby', 'sortorder', 'err', 'ix', 'lng', 'tem'), 's'));
extract(pull_from_array($_POST, array('pag', 'folder', 'f_email', 'f_user', 'f_pass', 'six', 'lng', 'tem'), 's'));

$textout = <<<EOF
<!-- Page generated by Telaen (http://jimjag.github.io/telaen/) -->
EOF;

if(!isset($pag)) $pag = 1;


define('FL_TYPE_MOVE', 1);
define('FL_TYPE_DELETE', 2);
define('FL_TYPE_MARK_READ', 4);

define('FL_FIELD_FROM', 1);
define('FL_FIELD_SUBJECT', 2);
define('FL_FIELD_TO', 4);

?>
