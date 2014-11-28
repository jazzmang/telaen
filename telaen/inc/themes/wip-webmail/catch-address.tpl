{config_load file=$umLanguageFile section="Catch"}

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>UebiMiau Webmail - {$umLabel.ctc_title}</title>
	<meta http-equiv="Content-Type" content="text/html; charset={$umLabel.default_char_set}">
	<link rel="stylesheet" href="inc/themes/webmail/css.css" type="text/css">
</head>
<body>
<form name="form1" action="catch.php" method="POST">
	<input type="hidden" name="sid" value="{$umSid}">
	<input type="hidden" name="lid" value="{$umLid}">
	<input type="hidden" name="ix" value="{$umIx}">
	<input type="hidden" name="folder" value="{$umFolder|escape:"html"}">
<br><br>
<table width="500" border="0" cellspacing="1" cellpadding="0" class="normal" align="center" bgcolor="#2D3443">
	<tr bgcolor="#78879C">
		<td height="30" width="100%" colspan="2" align="center" valign="middle"><b>{$umLabel.ctc_information}</b></td>
	</tr>
	{if $umAvailableAddresses gt 0 }
	<tr bgcolor="#BFC6D3">
		<td width="60%" align="center" valign="middle"><b>{$umLabel.ctc_name}</b></td>
		<td align="center" valign="middle"><b>{$umLabel.ctc_email}</b></td>
	</tr>
	{section name=i loop=$umAddressList}
	<tr bgcolor="#BFC6D3">
		<td valign="middle"><input type="checkbox" name="ckaval[]" checked value="{$umAddressList[i].index}">{$umAddressList[i].name|truncate:30:"...":true|escape:"html"}</td>
		<td align="center" valign="middle">{$umAddressList[i].mail}</td>
	</tr>
	{/section}
	<tr bgcolor="#BFC6D3">
		<td align="center" valign="middle" colspan="2"><br><input type="submit" name="submit" class="button" value="{$umLabel.ctc_save}"><br><br></td>
	</tr>
	{else}
	<tr bgcolor="#BFC6D3">
		<td align="center" valign="middle" colspan="2">{$umLabel.ctc_no_address}</td>
	</tr>
	<tr bgcolor="#BFC6D3">
		<td align="center" valign="middle" colspan="2">> <a href="javascript:self.close()">{$umLabel.ctc_close}</a> <</td>
	</tr>
	{/if}
</table>
</form>
</body>
</html>
