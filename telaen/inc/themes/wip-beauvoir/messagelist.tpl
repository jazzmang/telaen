{config_load file=$umLanguageFile section="MessageList"}
{um_welcome_message messages=$umNumMessages unread=$umNumUnread boxname=$umBoxName var="umWelcomeMessage"}

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset={$umLabel.default_char_set}">
<title>UebiMiau Webmail &copy 2003 - Skin by Beauvoir.net - {$umLabel.messages_to} {$umUserEmail}</title>
<link rel="stylesheet" href="inc/themes/beauvoir/webmail.css" type="text/css">
<script language="JavaScript" src="inc/themes/beauvoir/webmail.js" type="text/javascript"></script>
{$umJS}
</head>
<!--
Skinned by Arnaud BEAUVOIR -  - 

Thank you to let the copyright in place on the login page and in all sources of pages.
This skin is the work of an author, thank you to respect it and not to remove the
copyright, or worse, to put your name at the place.
-->
<body>
<br><br>
<table width="750" border="0" cellspacing="1" cellpadding="0" class="normal" align="center" bgcolor="#999999">
	<tr>
		<td align="center"><img src="inc/themes/beauvoir/logo.gif" border="0" alt="Beauvoir Skin"></td>
	</tr>
</table>
<br><br>
<table width="750" border="0" cellspacing="1" cellpadding="0" class="normal" align="center" bgcolor="#999999">
	<tr>
		<td valign="middle">
			{*{include file=$umMenuTemplate}*}
			<table cellspacing="0" cellpadding="0" width="100%" border="0" class="normal" >
				<tr><td align="center" valign="middle" bgcolor="#EAEAEA" height="70" width="84" onmouseover="mOvr(this,'#ACB6D1');" onmouseout="mOut(this,'#EAEAEA');" onclick="mClk(this);"><a href="javascript:goinbox()"><img src="inc/themes/beauvoir/inbox.gif" border="0" width="31" height="31"><br>{$umLabel.messages_mnu}</a></td>
				<td align="center" valign="middle" bgcolor="#EAEAEA" height="70" width="84" onmouseover="mOvr(this,'#ACB6D1');" onmouseout="mOut(this,'#EAEAEA');" onclick="mClk(this);"><a href="javascript:newmsg()"><img src="inc/themes/beauvoir/write.gif" border="0" width="31" height="31"><br>{$umLabel.compose_mnu}</a></td>
				<td align="center" valign="middle" bgcolor="#EAEAEA" height="70" width="84" onmouseover="mOvr(this,'#ACB6D1');" onmouseout="mOut(this,'#EAEAEA');" onclick="mClk(this);"><a href="javascript:refreshlist()"><img src="inc/themes/beauvoir/refresh.gif" border="0" width="31" height="31"><br>{$umLabel.refresh_mnu}</a></td>
				<td align="center" valign="middle" bgcolor="#EAEAEA" height="70" width="83" onmouseover="mOvr(this,'#ACB6D1');" onmouseout="mOut(this,'#EAEAEA');" onclick="mClk(this);"><a href="javascript:folderlist()"><img src="inc/themes/beauvoir/folder.gif" border="0" width="31" height="31"><br>{$umLabel.folders_mnu}</a></td>
				<td align="center" valign="middle" bgcolor="#EAEAEA" height="70" width="83" onmouseover="mOvr(this,'#ACB6D1');" onmouseout="mOut(this,'#EAEAEA');" onclick="mClk(this);"><a href="javascript:search()"><img src="inc/themes/beauvoir/search.gif" border="0" width="31" height="31"><br>{$umLabel.search_mnu}</a></td>
				<td align="center" valign="middle" bgcolor="#EAEAEA" height="70" width="83" onmouseover="mOvr(this,'#ACB6D1');" onmouseout="mOut(this,'#EAEAEA');" onclick="mClk(this);"><a href="javascript:addresses()"><img src="inc/themes/beauvoir/contact.gif" border="0" width="31" height="31"><br>{$umLabel.address_mnu}</a></td>
				<td align="center" valign="middle" bgcolor="#EAEAEA" height="70" width="83" onmouseover="mOvr(this,'#ACB6D1');" onmouseout="mOut(this,'#EAEAEA');" onclick="mClk(this);"><a href="javascript:emptytrash()"><img src="inc/themes/beauvoir/trash.gif" border="0" width="31" height="31"><br>{$umLabel.empty_trash_mnu}</a></td>
				<td align="center" valign="middle" bgcolor="#EAEAEA" height="70" width="83" onmouseover="mOvr(this,'#ACB6D1');" onmouseout="mOut(this,'#EAEAEA');" onclick="mClk(this);"><a href="javascript:prefs()"><img src="inc/themes/beauvoir/prefs.gif" border="0" width="31" height="31"><br>{$umLabel.prefs_mnu}</a></td>
				<td align="center" valign="middle" bgcolor="#EAEAEA" height="70" width="83" onmouseover="mOvr(this,'#ACB6D1');" onmouseout="mOut(this,'#EAEAEA');" onclick="mClk(this);"><a href="javascript:goend()"><img src="inc/themes/beauvoir/logout.gif" border="0" width="31" height="31"><br>{$umLabel.logoff_mnu}</a></td></tr>
			</table>		
		</td>
	</tr>
	<tr>
		<td valign="top">
			<table cellspacing="1" cellpadding="0" width="100%" border="0" class="normal" bgcolor="#F5F4F4">
			{if $umNumMessages gt 0}
				<tr><form name="form1" action="process.php" method="post">{$umForms}
					<td colspan="7" height="30">&nbsp;{$umWelcomeMessage}</td>
				</tr>
				{if $umErrorMessage neq ""}
				<tr>
					<td colspan="7" height="30"><font class="error"><b>&nbsp;{$umErrorMessage}</b></font></td>
				</tr>
				{/if}
				<tr>
				    <td width="5" bgcolor="#ACB6D1" align="center" valign="middle"><input type="checkbox" name="chkall" onclick="sel()"></td>
				    <td width="35" bgcolor="#ACB6D1" align="center" valign="middle"><img src="./images/prior_high.gif" width="5" height="11" border="0" alt="Priority" align="absmiddle">&nbsp;<img src="images/attach.gif" border="0" width="6" height="14" alt="attach" align="absmiddle">&nbsp;<img src="images/msg_read.gif" border="0" width="14" height="14" alt="read" align="absmiddle"></td>
				    <td width="320" bgcolor="#ACB6D1" align="center" valign="middle">.: <b><a href="javascript:sortby('subject')" class="lien">{$umLabel.subject_hea}{$umSubjectArrow}</a></b> :.</td>
					{if $umFolder eq "sent"}
			    	<td width="220" bgcolor="#ACB6D1" align="center" valign="middle">.: <b><a href="javascript:sortby('toname')" class="lien">{$umLabel.to_hea}{$umToArrow}</a></b> :.</td>
					{else}
				    <td width="220" bgcolor="#ACB6D1" align="center" valign="middle">.: <b><a href="javascript:sortby('fromname')" class="lien">{$umLabel.from_hea}{$umFromArrow}</a></b> :.</td>
					{/if}
				    <td width="100" bgcolor="#ACB6D1" align="center" valign="middle">.: <b><a href="javascript:sortby('date')" class="lien">{$umLabel.date_hea}{$umDateArrow}</a></b> :.</td>
				    <td width="70" bgcolor="#ACB6D1" align="center" valign="middle">.: <b><a href="javascript:sortby('size')" class="lien">{$umLabel.size_hea}{$umSizeArrow}</a></b> :.</td>
				</tr>
				{section name=i loop=$umMessageList}
				<tr bgcolor="#EAEAEA" onmouseover="mOvr(this,'#ACB6D1');" onmouseout="mOut(this,'#EAEAEA');">
					<td align="center" valign="middle">{$umMessageList[i].checkbox}</td>
					<td align="center" valign="middle">{$umMessageList[i].priorimg}{$umMessageList[i].attachimg}{$umMessageList[i].statusimg}</td>
					<td align="left" valign="middle">&nbsp;<acronym title="{$umMessageList[i].subject|escape:"html"|default:$umLabel.no_subject_text}">{if $umMessageList[i].read eq "false"}<b>{/if}<a href="{$umMessageList[i].readlink}">{$umMessageList[i].subject|truncate:50:"...":true|escape:"html"|default:$umLabel.no_subject_text}</a>{if $umMessageList[i].read eq "false"}</b>{/if}</acronym></td>
					{if $umFolder eq "sent"}
					<td align="left" valign="middle">&nbsp;<acronym title="{$umMessageList[i].to|escape:"html"|default:$umLabel.no_recipient_text}"><a href="{$umMessageList[i].composelinksent}">{$umMessageList[i].to|truncate:40:"...":true|escape:"html"|default:$umLabel.no_recipient_text}</a></acronym></td>
					{else}
					<td align="left" valign="middle">&nbsp;<acronym title="{$umMessageList[i].from|escape:"html"|default:$umLabel.no_recipient_text}"><a href="{$umMessageList[i].composelink}">{$umMessageList[i].from|truncate:40:"...":true|escape:"html"|default:$umLabel.no_subject_text}</a></acronym></td>
					{/if}
					<td align="center" valign="middle">{$umMessageList[i].date|date_format:$umLabel.date_format}</td>
					<td align="right" valign="middle">{$umMessageList[i].size} Kb&nbsp;</td>
				</tr>
				{/section}
				<tr>
					<td colspan="7" height="30" valign="middle">&nbsp;<a href="javascript:delemsg()"><img src="./themes/beauvoir/delete.gif" border="0" width="15" height="15" alt="{$umLabel.delete_selected_mnu}" align="absmiddle"> {$umLabel.delete_selected_mnu}</a> | <a href="javascript:movemsg()"><img src="./themes/beauvoir/move.gif" border="0" width="15" height="15" alt="{$umLabel.move_selected_mnu}" align="absmiddle"> {$umLabel.move_selected_mnu}</a> <select name="aval_folders">{section name=i loop=$umAvalFolders}<option value="{$umAvalFolders[i].path|escape:"html"}">{$umAvalFolders[i].display|escape:"html"}{/section}</select></td>
				</tr>
				<tr>
					<td colspan="7" height="30" valign="middle">&nbsp;{if $umPreviousLink}<a href="{$umPreviousLink}">{$umLabel.previous_text}</a> &nbsp;{/if}{$umNavBar}{if $umNextLink} &nbsp;<a href="{$umNextLink}">{$umLabel.next_text}</a>{/if}</td>
				</tr>
			{else}		
				<tr>
					<td colspan="7" height="30" valign="middle"><br>&nbsp;{$umLabel.no_messages} <b>{$umBoxName|escape:"html"}</b>.<br><br></td>
				</tr>
			{/if}
			</form>
			{if $umQuotaEnabled eq 1}
			<tr>
				<td colspan="7" height="30" valign="middle" align="center">{$umLabel.quota_usage_info} : <b>{$umTotalUsed}</b> Kb {$umLabel.quota_usage_used} {$umLabel.quota_usage_of} <b>{$umQuotaLimit}</b> Kb {$umLabel.quota_usage_avail}<br> {$umUsageGraph}</td>
			</tr>
			{/if}
		</table>
		</td>
	</tr>
	<tr>
		<td align="center" bgcolor="#EAEAEA" height="30">
		<font class="normal">Webmail powered by <a href="http://uebimiau.sourceforge.net" target="_blank">Uebimiau</a> - Skinned by <a href="" target="_blank">Beauvoir</a></font>
		</td>
	</tr>
</table>
<br><br>
</body>
</html>
