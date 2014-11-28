{config_load file=$umLanguageFile section="Folders"}

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>sentiMail - {$umLabel.folders_to} {$umUserEmail}</title>
	<meta http-equiv="Content-Type" content="text/html; charset={$umLabel.default_char_set}">
<link rel="stylesheet" href="inc/themes/senti/webmail.css" type="text/css">
{$umJS}
</head>

<body><br><br>
<table width="760" height="400" border="0" cellpadding="0" cellspacing="0" align="center">
	<tr valign="bottom">
		<td height="61">
			<img src="inc/themes/senti/images/mail_01.gif" width="18" height="61" alt=""></td>
		<td>
			<a class="menu" href="javascript:goinbox()"><img src="inc/themes/senti/images/inbox.gif" width="60" height="61" border="0" alt=""></a></td>
		<td>
			<img src="inc/themes/senti/images/mail_03.gif" width="33" height="61" alt=""></td>
		<td>
			<a class="menu" href="javascript:newmsg()"><img src="inc/themes/senti/images/write.gif" width="85" height="61" border="0" alt=""></a></td>
		<td>
			<img src="inc/themes/senti/images/mail_05.gif" width="32" height="61" alt=""></td>
		<td>
			<a class="menu" href="javascript:folderlist()"><img src="inc/themes/senti/images/folders_selected.gif" width="72" height="61" border="0" alt=""></a></td>
		<td>
			<img src="inc/themes/senti/images/mail_07.gif" width="36" height="61" alt=""></td>
		<td>
			<a class="menu" href="javascript:search()"><img src="inc/themes/senti/images/search.gif" width="74" height="61" alt="" border="0"></a></td>
		<td>
			<img src="inc/themes/senti/images/mail_09.gif" width="27" height="61" alt=""></td>
		<td>
			<a class="menu" href="javascript:addresses()"><img src="inc/themes/senti/images/addresses.gif" width="89" height="61" border="0" alt=""></a></td>
		<td>
			<img src="inc/themes/senti/images/mail_11.gif" width="28" height="61" alt=""></td>
		<td>
			<a class="menu" href="javascript:prefs()"><img src="inc/themes/senti/images/preferences.gif" width="88" height="61" border="0" alt=""></a></td>
		<td>
			<img src="inc/themes/senti/images/mail_13.gif" width="31" height="61" alt=""></td>
		<td>
			<a class="menu" href="javascript:goend()"><img src="inc/themes/senti/images/logout.gif" width="70" height="61" border="0" alt=""></a></td>
		<td>
			<img src="inc/themes/senti/images/mail_15.gif" width="17" height="61" alt=""></td>
	</tr>
	<tr>
	<td width="18"><img src="inc/themes/senti/images/leftside.gif" width="18" height="100%"></td>	<td colspan="13" valign="top" bgcolor="#dddcdc"><br />
					<table cellspacing=0 cellpadding=0 height="100%" width="100%" border=0>
					<tr>
					    <td width="30%" class="headers">.: {$umLabel.fld_name_hea} :.</td>
					    <td width="20%" class="headers">.: {$umLabel.fld_messages_hea} :.</td>
					    <td width="15%" class="headers">.: {$umLabel.fld_size_hea} :.</td>
					    <td width="15%" class="headers">.: {$umLabel.fld_empty_hea} :.</td>
					    <td width="20%" class="headers">.: {$umLabel.fld_delete_hea} :.</td>
					</tr>

					{section name=i loop=$umFolderList}
						<tr>
							<td class="default"><a href="{$umFolderList[i].chlink}"><img src="inc/themes/senti/images/folder.gif"  alt="" border="0">&nbsp;&nbsp;&nbsp;{$umFolderList[i].name|escape:"html"}</a></td>
							<td class="cent">{$umFolderList[i].msgs}</td>
							<td class="right">{$umFolderList[i].boxsize}Kb &nbsp;</td>
							<td class="cent"><a href="{$umFolderList[i].emptylink}">OK</a></td>
							<td class="cent">{$umFolderList[i].del}</td>
						</tr>
					{/section}

					<tr>
						<td class="default">&nbsp;</td>
						<td class="right"><b>{$umLabel.fld_total}</b> &nbsp;</td>
						<td class="right"><b>{$umTotalUsed}</b>Kb &nbsp;</td>
						<td class="cent">&nbsp;</td>
						<td class="cent">&nbsp;</td>
					</tr>
					<tr>
						<td colspan="5" align="left"><a class="menu" href="javascript:emptytrash()">
							<img src="inc/themes/senti/images/trash.gif" alt="" border="0">&nbsp;&nbsp;{$umLabel.empty_trash_mnu}</a>
						</td>
					</tr>

					{if $umQuotaEnabled eq 1}
					<tr>
						<td class="default" colspan=5><br><br>&nbsp; {$umLabel.quota_usage_info}: {$umLabel.quota_usage_used} <b>{$umTotalUsed}</b>Kb {$umLabel.quota_usage_of} <b>{$umQuotaLimit}</b>Kb {$umLabel.quota_usage_avail}&nbsp;&nbsp;&nbsp; {$umUsageGraph}</td>
					</tr>
					{/if}
					<tr>
						<form name="form1" action="folders.php" method="POST" onsubmit="return create();">
						<input type=hidden name=sid value="{$umSid}">
						<input type=hidden name=lid value="{$umLid}">
						<input type=hidden name=tid value="{$umTid}">
						<td class="default" colspan="5">
						<br>
							<input type=Text name=newfolder value="" class="textbox"> &nbsp;<input type=button value="{$umLabel.fld_make_new}" class=button onClick="create()">
						</td></form>
					</tr>
				</table>
		</td><td width="17"><img src="inc/themes/senti/images/rightside.gif" width="17" height="100%"></td>
	</tr>
	<tr>
		<td colspan="15" valign="top" height="25">
			<img src="inc/themes/senti/images/footer.gif" width="760" height="25" alt=""></td>
	</tr>
</table>
</body>
</html>
