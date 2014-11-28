{config_load file=$umLanguageFile section="BlockSender"}

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset={$umLabel.default_char_set}">
<title>UebiMiau Webmail &copy 2003 - Skin by Beauvoir.net - {$umLabel.blk_title}</title>
<link rel="stylesheet" href="inc/themes/beauvoir/webmail.css" type="text/css">
</head>

<!--
Skinned by Arnaud BEAUVOIR -  - 

Thank you to let the copyright in place on the login page and in all sources of pages.
This skin is the work of an author, thank you to respect it and not to remove the
copyright, or worse, to put your name at the place.
-->
<body>

<form name="form1" action="block_address.php" method="POST">
	<input type="hidden" name="sid" value="{$umSid}">
	<input type="hidden" name="lid" value="{$umLid}">
	<input type="hidden" name="ix" value="{$umIx}">
	<input type="hidden" name="folder" value="{$umFolder|escape:"html"}">
<br><br>
<table width="500" border="0" cellspacing="1" cellpadding="0" class="normal" align="center" bgcolor="#999999">
	<tr>
		<td height="30" width="100%" align="center" valign="middle"><b>{$umLabel.blk_information}</b></td>
	</tr>
	{if $umAvailableAddresses gt 0 }
	<tr bgcolor="#EAEAEA">
		<td width="100%" align="center" valign="middle"><b>{$umLabel.blk_email}</b></td>
	</tr>
	{section name=i loop=$umAddressList}
	<tr bgcolor="#EAEAEA">
		<td valign="middle"><input type="checkbox" name="fFilter[]" checked value="{$umAddressList[i].index}">{$umAddressList[i].mail}</td>
	</tr>
	{/section}
	<tr bgcolor="#EAEAEA">
		<td align="center" valign="middle"><br><input type="submit" name="submit" class="normal" value="{$umLabel.blk_save}"><br><br></td>
	</tr>
	{else}
	<tr bgcolor="#EAEAEA">
		<td align="center" valign="middle">{$umLabel.blk_no_address}</td>
	</tr>
	<tr bgcolor="#EAEAEA">
		<td align="center" valign="middle">> <a href="javascript:self.close()">{$umLabel.blk_close}</a> <</td>
	</tr>
	{/if}
</table>
</form>
</body>
</html>
