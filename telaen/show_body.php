<?php
/************************************************************************
Telaen is a GPL'ed software developed by

 - The Telaen Group
 - http://jimjag.github.io/telaen/

*************************************************************************/
define('I_AM_TELAEN', basename($_SERVER['SCRIPT_NAME']));

use Telaen\Telaen\Telaen;

require './inc/init.php';
/* @var $TLN Telaen */

if (!isset($folder) || !isset($uidl)) {
    die('Expected parameters');
}
$msg = $TLN->tdb->getMessage($uidl, $folder);
if (empty($msg)) {
    exit;
}
$body = $TLN->mailRetrPbody($msg);
if (!$TLN->config['allow_html']) {
    $body = $TLN->html2Text($body);
}

//$body = preg_replace('|target=["\']?[a-zA-Z_]+["\']?|i', "target='blank'", $body);
//$body = preg_replace('|href="http([s]?)://|i', "target='_blank' href='$redir_path?http$1://", $body);
//$body = preg_replace('|href=["\']mailto:|i', "target='_top' href='newmsg.php?to=", $body);


//$meta_charset = "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=".$lang['default_char_set']."\">";
echo($pmetas);
//echo($meta_charset);
if ($msg['type'] == 'text' && $msg['subtype'] == 'plain') {
    $TLN->myEcho("<div class='ptext'>");
    $TLN->myEcho($TLN->returnTextBody($body));
    $TLN->myEcho("</div>");
} else {
    $TLN->myEcho($body);
}
