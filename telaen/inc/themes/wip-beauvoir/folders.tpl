{config_load file=$umLanguageFile section="Folders"}

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset={$umLabel.default_char_set}">
<title>UebiMiau Webmail &copy 2003 - Skin by Beauvoir.net - {$umLabel.folders_to} {$umUserEmail}</title>
<link rel="stylesheet" href="inc/themes/beauvoir/webmail.css" type="text/css">
<script language="JavaScript" src="inc/themes/beauvoir/webmail.js" type="text/javascript"></script>
</head>
{$umJS}
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
			<table cellspacing="0" cellpadding="0" width="100%" border="0" class="normal" >
				<tr><td align="center" valign="middle" bgcolor="#EAEAEA" height="70" width="84" onmouseover="mOvr(this,'#ACB6D1');" onmouseout="mOut(this,'#EAEAEA');" onclick="mClk(this);"><a href="javascript:goinbox()"><img src="inc/themes/beauvoir/inbox.gif" border="0" width="31" height="31"><br>{$umLabel.messages_mnu}</a></td>
				<td align="center" valign="middle" bgcolor="#EAEAEA" height="70" width="84" onmouseover="mOvr(this,'#ACB6D1');" onmouseout="mOut(this,'#EAEAEA');" onclick="mClk(this);"><a href="javascript:newmsg()"><img src="inc/themes/beauvoir/write.gif" border="0" width="31" height="31"><br>{$umLabel.compose_mnu}</a></td>
				<td align="center" valign="middle" bgcolor="#EAEAEA" height="70" width="84" onmouseover="mOvr(this,'#ACB6D1');" onmouseout="mOut(this,'#EAEAEA');" onclick="mClk(this);"><a href="javascript:refreshlist()"><img src="inc/themes/beauvoir/refresh.gif" border="0" width="31" height="31"><br>{$umLabel.refresh_mnu}</a></td>
				<td align="center" valign="middle" bgcolor="#EAEAEA" height="70" width="83"><font class="inactive"><img src="inc/themes/beauvoir/folder.gif" border="0" width="31" height="31"><br>{$umLabel.folders_mnu}</font></td>
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
				<tr>
					<td colspan="5">&nbsp;</td>
				</tr>
				<tr bgcolor="#ACB6D1">
			    	<td width="35%" align="center" height="20">.: {$umLabel.fld_name_hea} :.</td>
			    	<td width="25%" align="center">.: {$umLabel.fld_messages_hea} :.</td>
			    	<td width="20%" align="center">.: {$umLabel.fld_size_hea} :.</td>
			    	<td width="10%" align="center">.: {$umLabel.fld_empty_hea} :.</td>
			    	<td width="10%" align="center">.: {$umLabel.fld_delete_hea} :.</td>
				</tr>
				{section name=i loop=$umFolderList}
				<tr bgcolor="#EAEAEA" onmouseover="mOvr(this,'#ACB6D1');" onmouseout="mOut(this,'#EAEAEA');">
					<td align="center" height="20"><a href="{$umFolderList[i].chlink}">{$umFolderList[i].name|escape:"html"}</a></td>
					<td align="center">{$umFolderList[i].msgs}</td>
					<td align="center">{$umFolderList[i].boxsize} Kb</td>
					<td align="center"><a href="{$umFolderList[i].emptylink}">OK</a></td>
					<td align="center">{$umFolderList[i].del}</td>
					</tr>
				{/section}
				<tr bgcolor="#ACB6D1">
					<td align="center" height="20">&nbsp;</td>
					<td align="center"><b>{$umLabel.fld_total}</b></td>
					<td align="center"><b>{$umTotalUsed}</b> Kb</td>
					<td align="center">&nbsp;</td>
					<td align="center">&nbsp;</td>
				</tr>
				<tr>
					<form name="form1" action="folders.php" method="POST" onsubmit="return create();">
					<input type="hidden" name="sid" value="{$umSid}">
					<input type="hidden" name="lid" value="{$umLid}">
					<input type="hidden" name="tid" value="{$umTid}">
					<td align="center" colspan="5"><br><input type="Text" name="newfolder" class="normal" style="width:180px;"> <input type="button" class="normal" value="{$umLabel.fld_make_new}" onClick="create()"></td>
					</form>
				</tr>
				{if $umQuotaEnabled eq 1}
				<tr>
					<td colspan="5">&nbsp;</td>
				</tr>
				<tr>
					<td align="center" colspan="5">{$umLabel.quota_usage_info} : <b>{$umTotalUsed}</b>Kb {$umLabel.quota_usage_used} {$umLabel.quota_usage_of} <b>{$umQuotaLimit}</b>Kb {$umLabel.quota_usage_avail}<br> {$umUsageGraph}</td>
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
