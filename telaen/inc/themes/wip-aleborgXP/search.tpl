{config_load file=$umLanguageFile section="Search"}

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
	<title>UebiMiau</title>

	<link rel="stylesheet" href="inc/themes/aleborgXP/webmail.css" type="text/css">

<script language="JavaScript" src="inc/themes/aleborgXP/webmail.js" type="text/javascript">
</script>
{$umJS}
</head>

<body bgcolor="#FFFFFF" text="#000000" link="#0000FF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onLoad="MM_preloadImages('inc/themes/aleborgXP/images/refresh_down.gif','inc/themes/aleborgXP/images/refresh_over.gif','inc/themes/aleborgXP/images/newmsg_down.gif','inc/themes/aleborgXP/images/newmsg_over.gif','inc/themes/aleborgXP/images/search_down.gif','inc/themes/aleborgXP/images/search_over.gif','inc/themes/aleborgXP/images/folders_down.gif','inc/themes/aleborgXP/images/folders_over.gif','inc/themes/aleborgXP/images/options_down.gif','inc/themes/aleborgXP/images/options_over.gif','inc/themes/aleborgXP/images/trash_down.gif','inc/themes/aleborgXP/images/trash_over.gif','inc/themes/aleborgXP/images/addressbook_down.gif','inc/themes/aleborgXP/images/addressbook_over.gif','inc/themes/aleborgXP/images/logout_down.gif','inc/themes/aleborgXP/images/logout_over.gif','inc/themes/aleborgXP/images/inbox_down.gif','inc/themes/aleborgXP/images/inbox_over.gif','inc/themes/aleborgXP/images/previous_down.gif','inc/themes/aleborgXP/images/previous_over.gif','inc/themes/aleborgXP/images/next_down.gif','inc/themes/aleborgXP/images/next_over.gif')" onload="document.form1.srcFrom.focus();">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr height="1" bgcolor="#FFFFFF">
    <td height="1" bgcolor="#FFFFFF"></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellpadding="0" cellspacing="0" background="inc/themes/aleborgXP/images/menu_back.gif">
        <tr> 
          <td width="100"><img src="inc/themes/aleborgXP/images/logo.gif" width="100" height="32"></td>
          <td width="11"><img src="inc/themes/aleborgXP/images/seperator.gif" width="11" height="38"></td>
          <td width="32">{if $umPreviousLink}<a href="{$umPreviousLink}"><img src="inc/themes/aleborgXP/images/previous.gif" alt="{$umLabel.previous_text}" name="previous" width="32" height="38" border="0" id="previous" onMouseDown="MM_swapImage('previous','','inc/themes/aleborgXP/images/previous_down.gif',1)" onMouseOver="MM_swapImage('previous','','inc/themes/aleborgXP/images/previous_over.gif',1)" onMouseOut="MM_swapImgRestore()"></a>{else}<img src="inc/themes/aleborgXP/images/previous_off.gif">{/if}</td>
          <td width="32">{if $umNextLink}<a href="{$umNextLink}"><img src="inc/themes/aleborgXP/images/next.gif" alt="{$umLabel.next_text}" name="next" width="32" height="38" border="0" id="next" onMouseDown="MM_swapImage('next','','inc/themes/aleborgXP/images/next_down.gif',1)" onMouseOver="MM_swapImage('next','','inc/themes/aleborgXP/images/next_over.gif',1)" onMouseOut="MM_swapImgRestore()"></a>{else}<img src="inc/themes/aleborgXP/images/next_off.gif">{/if}</td>
          <td width="11"><img src="inc/themes/aleborgXP/images/seperator.gif" width="11" height="38"></td>
          <td width="32"><a href="javascript:goinbox()"><img src="inc/themes/aleborgXP/images/inbox.gif" alt="{$umLabel.messages_mnu}" name="inbox" width="32" height="38" border="0" id="inbox" onMouseDown="MM_swapImage('inbox','','inc/themes/aleborgXP/images/inbox_down.gif',1)" onMouseOver="MM_swapImage('inbox','','inc/themes/aleborgXP/images/inbox_over.gif',1)" onMouseOut="MM_swapImgRestore()"></a></td>
          <td width="32"><a href="javascript:newmsg()"><img src="inc/themes/aleborgXP/images/newmsg.gif" alt="{$umLabel.compose_mnu}" name="newmsg" width="32" height="38" border="0" id="newmsg" onMouseDown="MM_swapImage('newmsg','','inc/themes/aleborgXP/images/newmsg_down.gif',1)" onMouseOver="MM_swapImage('newmsg','','inc/themes/aleborgXP/images/newmsg_over.gif',1)" onMouseOut="MM_swapImgRestore()"></a></td>
          <td width="32"><img src="inc/themes/aleborgXP/images/refresh_off.gif" alt="{$umLabel.refresh_mnu}" name="refresh" width="32" height="38" border="0" id="refresh"></td>
          <td width="11"><img src="inc/themes/aleborgXP/images/seperator.gif" width="11" height="38"></td>
          <td width="32"><a href="javascript:folderlist()"><img src="inc/themes/aleborgXP/images/folders.gif" alt="{$umLabel.folders_mnu}" name="folders" width="32" height="38" border="0" id="folders" onMouseDown="MM_swapImage('folders','','inc/themes/aleborgXP/images/folders_down.gif',1)" onMouseOver="MM_swapImage('folders','','inc/themes/aleborgXP/images/folders_over.gif',1)" onMouseOut="MM_swapImgRestore()"></a></td>
          <td width="32"><img src="inc/themes/aleborgXP/images/search_off.gif" alt="{$umLabel.search_mnu}" name="search" width="32" height="38" border="0" id="search"></td>
          <td width="32"><a href="javascript:addresses()"><img src="inc/themes/aleborgXP/images/addressbook.gif" alt="{$umLabel.address_mnu}" name="addressbook" width="32" height="38" border="0" id="addressbook" onMouseDown="MM_swapImage('addressbook','','inc/themes/aleborgXP/images/addressbook_down.gif',1)" onMouseOver="MM_swapImage('addressbook','','inc/themes/aleborgXP/images/addressbook_over.gif',1)" onMouseOut="MM_swapImgRestore()"></a></td>
          <td width="11"><img src="inc/themes/aleborgXP/images/seperator.gif" width="11" height="38"></td>
          <td width="32"><a href="javascript:emptytrash()"><img src="inc/themes/aleborgXP/images/trash.gif" alt="{$umLabel.empty_trash_mnu}" name="trash" width="32" height="38" border="0" id="trash" onMouseDown="MM_swapImage('trash','','inc/themes/aleborgXP/images/trash_down.gif',1)" onMouseOver="MM_swapImage('trash','','inc/themes/aleborgXP/images/trash_over.gif',1)" onMouseOut="MM_swapImgRestore()"></a></td>
          <td width="32"><a href="javascript:prefs()"><img src="inc/themes/aleborgXP/images/options.gif" alt="{$umLabel.prefs_mnu}" name="options" width="32" height="38" border="0" id="options" onMouseDown="MM_swapImage('options','','inc/themes/aleborgXP/images/options_down.gif',1)" onMouseOver="MM_swapImage('options','','inc/themes/aleborgXP/images/options_over.gif',1)" onMouseOut="MM_swapImgRestore()"></a></td>
          <td width="32"><a href="javascript:goend()"><img src="inc/themes/aleborgXP/images/logout.gif" alt="{$umLabel.logoff_mnu}" name="logout" width="32" height="38" border="0" id="logout" onMouseDown="MM_swapImage('logout','','inc/themes/aleborgXP/images/logout_down.gif',1)" onMouseOver="MM_swapImage('logout','','inc/themes/aleborgXP/images/logout_over.gif',1)" onMouseOut="MM_swapImgRestore()"></a></td>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td height="2" background="inc/themes/aleborgXP/images/list_up.gif"><img src="inc/themes/aleborgXP/images/list_up.gif" width="5" height="2"></td>
  </tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0" background="inc/themes/aleborgXP/images/menu_back.gif">
  <tr>
    <td>{$umLabel.sch_information_text}</td>
  </tr>
  <tr>
    <td height="2" background="inc/themes/aleborgXP/images/list_up.gif"><img src="inc/themes/aleborgXP/images/list_up.gif" width="5" height="2"></td>
  </tr>
<form name="form1" action="search.php" method="POST">
				<input type=hidden name=tid value="{$umTid}">
				<input type=hidden name=lid value="{$umLid}">
				<input type=hidden name=sid value="{$umSid}">
  <tr>
    <td><table width="710" border="0" cellspacing="0" cellpadding="0">
  <tr>
            <td width="130">&nbsp;{$umLabel.sch_from_hea}:</td>
    <td><input type=text name=srcFrom value="{$umInputFrom|escape:"html"}" class="textbox" size="40" maxlength="40"></td>
  </tr>
</table>
</td>
  </tr>
  <tr>
    <td height="2" background="inc/themes/aleborgXP/images/list_up.gif"><img src="inc/themes/aleborgXP/images/list_up.gif" width="5" height="2"></td>
  </tr>
  <tr>
    <td><table width="710" border="0" cellspacing="0" cellpadding="0">
  <tr>
            <td width="130">&nbsp;{$umLabel.sch_subject_hea}:</td>
    <td><input type=text name=srcSubject value="{$umInputSubject|escape:"html"}" class="textbox" size="40" maxlength="40"></td>
  </tr>
</table>
</td>
  </tr>
  <tr>
    <td height="2" background="inc/themes/aleborgXP/images/list_up.gif"><img src="inc/themes/aleborgXP/images/list_up.gif" width="5" height="2"></td>
  </tr>
  <tr>
    <td><table width="710" border="0" cellspacing="0" cellpadding="0">
  <tr>
            <td width="130">&nbsp;{$umLabel.sch_body_hea}:</td>
    <td><input type=text name=srcBody value="{$umInputBody|escape:"html"}" class="textbox" size="40" maxlength="40"></td>
  </tr>
 </table></td></tr>
  <tr>
    <td height="2" background="inc/themes/aleborgXP/images/list_up.gif"><img src="inc/themes/aleborgXP/images/list_up.gif" width="5" height="2"></td>
  </tr>
  <tr>
    <td><table width="710" border="0" cellspacing="0" cellpadding="0">
  <tr>
            <td width="130">&nbsp;</td>
    <td><input type=submit value="{$umLabel.sch_button_text}"></td>
  </tr>
</table>
</td>
  </tr>
 </form>
  <tr>
    <td height="3" background="inc/themes/aleborgXP/images/list_down.gif"><img src="inc/themes/aleborgXP/images/list_down.gif" width="5" height="3"></td>
  </tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr background="inc/themes/aleborgXP/images/back_list.gif">
    <td height="20" background="inc/themes/aleborgXP/images/back_list.gif"><table width="720" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="35"><img src="./images/prior_high.gif" width=5 height=11 border=0 alt="">&nbsp;<img src="images/attach.gif" border="0" width="6" height="14" alt="">&nbsp;<img src="images/msg_read.gif" border="0" width="14" height="14" alt=""></td>
          <td width="200"><b>{$umLabel.sch_subject_hea}</b></td>
          <td width="160"><b>{$umLabel.sch_from_hea}</b></td>
          <td width="110"><b>{$umLabel.sch_date_hea}</b></td>
          <td width="115"><b>{$umLabel.sch_folder_hea}</b></td>
        </tr>
      </table></td>
  </tr>
</table>
			<table cellspacing=1 cellpadding=1 width="720" border=0 bgcolor=White>
			{if $umDoSearch}
				{section name=i loop=$umMessageList}
				<tr>

    <td width="35" class="default">{$umMessageList[i].priorimg}{$umMessageList[i].attachimg}{$umMessageList[i].statusimg}</td>

    <td width="200" class="default">{if $umMessageList[i].read eq "false"}<b>{/if}<a href="{$umMessageList[i].readlink}">{$umMessageList[i].subject|truncate:30:"...":true|escape:"html"|default:$umLabel.no_subject_text}</a>{if 
      $umMessageList[i].read eq "false"}</b>{/if}</td>

    <td width="160" class="default"><a href="{$umMessageList[i].composelink}">{$umMessageList[i].from|truncate:30:"...":true|escape:"html"|default:$umLabel.no_subject_text}</a></td>

    <td width="110" class="cent">{$umMessageList[i].date|date_format:$umLabel.date_format}</td>

    <td width="115" class="default">&nbsp;<a href="{$umMessageList[i].folderlink}">{$umMessageList[i].foldername|escape:"html"}</a></td>
				</tr>
				{sectionelse}
				<tr>
				    <td width="100%"  class="default"  colspan="5"><center><br>{$umLabel.sch_no_results}<br><br></center></td>
				</tr>
				{/section}
			{/if}
		</table>
</body>
</html>
