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

$smarty->assign('pageMetas', $pmetas);

extract(Telaen::pullFromArray($_POST, ['rem'], 'str'));
$userfile = $_FILES['userfile'];

if (isset($rem) && $rem != "") {
    $rem = urldecode($rem);
    $attch = $TLN->tdb->getAttachments(['uidl' => '_upload', 'folder' => '_upload']);
    foreach ($attch as $a) {
        if ($a['name'] == $rem) {
            $TLN->tdb->delAttachment($rem, $a);
            if (substr($a['localname'], 0, 3) == 'u__') {
                @unlink($TLN->getPath($a)[0]);
            }
            break;
        }
    }
} elseif (isset($userfile) && is_array($userfile) && $userfile['tmp_name']) {

    $safefilename = Telaen::fsSafeFile($userfile['name']);
    $type = 'application';
    $subtype = 'octet-stream';
    if (preg_match('|(.+)/(.+)|', $userfile['type'], $m)) {
        $type = $m[1];
        $subtype = $m[2];
    }

    $upload['name'] = $userfile['name'];
    $upload['size'] = $userfile['size'];
    $upload['localname'] = Telaen::uniqID('u__').$safefilename;
    $upload['type'] = $type;
    $upload['subtype'] = $subtype;
    $upload['flat'] = true;
    $upload['uidl'] = '_upload';
    $upload['folder'] = '_upload';
    $filename = $TLN->getPath($upload)[0];
    $TLN->debugMsg("Adding upload attachment: {$userfile['tmp_name']} -> {$filename}");
    move_uploaded_file($userfile['tmp_name'], $filename);
    $TLN->tdb->addAttachment($upload);
}

$attch = $TLN->tdb->getAttachments(['uidl' => '_upload', 'folder' => '_upload']);
echo '<table width="100%" border=0 cellspacing=1 cellpadding=0>'."\n";
foreach ($attch as $a) {
    echo "
    <script language='javascript' type='text/javascript'>
//<![CDATA[
    function delatt2(rem) {
        $.post('upload.php', {rem: rem}, function(data) {
            $('#nm_attachs').html(data);
        });
        return false;
    }
//]]>
    </script>
    <tr>
     <td width='50%' class='default'>".urlencode($a['name'])."</td>
     <td width='10%' class='right'>".Telaen::bytes2bkmg($a['size'])."</td>
     <td width='30%' class='default' align='center'>".$a['type'].'/'.$a['subtype']."</td>
     <td width='10%' class='default' align='center'><a href='javascript:void(0)' onclick='delatt2(\"".urlencode($a['name'])."\")'>OK</a></td>
     </tr>
";
}
echo '</table>'."\n";
