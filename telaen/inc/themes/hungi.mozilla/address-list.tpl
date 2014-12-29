{include file=$headerTemplate pageTitle=$umLabel.adr_title}

{include file=$menuTemplate refresh="false"}
<table width="100%" border="0" cellspacing="0" cellpadding="2" bgcolor="#DDE3EB">
  <tr>
    <td height="15" width="40%" class="headersLeft">.: <b>{$umLabel.adr_name_hea}</b> :.</td>
    <td width="40%" class="headersLeft">.: <b>{$umLabel.adr_email_hea}</b> :.</td>
    <td width="10%" class="headers">.: <b>{$umLabel.adr_edit_hea}</b> :.</td>
    <!--
			<td width="10%" class="headers">{$umLabel.adr_expo_hea}</td>
-->
    <td width="10%" class="headers">.: <b>{$umLabel.adr_dele_hea}</b> :.</td>
  </tr>
  {section name=i loop=$umAddressList}
  <tr>
    <td colspan="4" class="separator"></td>
  </tr>
  <tr>
    <td class="default">&nbsp;<a class="menu" href="{$umAddressList[i].viewlink}">{$umAddressList[i].name}</a></td>
    <td class="default">&nbsp;<a class="menu" href="{$umAddressList[i].composelink}">{$umAddressList[i].email}</a></td>
    <td class="cent">&nbsp;<a class="menu" href="{$umAddressList[i].editlink}">OK</a></td>
    <!--
					<td class="default"> &nbsp;<a class="menu" href="{$umAddressList[i].exportlink}">OK</a></td>
-->
    <td class="cent">&nbsp;<a class="menu" href="{$umAddressList[i].dellink}">OK</a></td>
  </tr>
  {/section}
  <tr>
    <td colspan="4" class="default">&nbsp;&nbsp;<span class="menu"><b>{$umLabel.pages_text}:</b></span> {if $umPreviousLink}<!--<a href="{$umFirstLink}" class="navigation">&laquo; {$umLabel.first_text}</a>&nbsp; --> 
      <a href="{$umPreviousLink}" class="navigation">&laquo; {$umLabel.previous_text}</a>&nbsp;{/if}
      {$umNavBar}
      {if $umNextLink}&nbsp;<a href="{$umNextLink}" class="navigation">{$umLabel.next_text} &raquo;</a> 
      <!--&nbsp;<a href="{$umLastLink}" class="navigation">{$umLabel.last_text} &raquo;</a>-->{/if} </td>
  </tr>
  <tr>
    <td colspan="4" class="usage"><center>
        <table class="buttonTable" cellspacing="0" align="center">
          <tr>
            <td valign="middle" class="buttonLeft">&nbsp;</td>
            <td valign="middle" class="buttonMiddle"><input class="button" type="button" name="button" onclick="javascript:location = '{$umNew}'" value="{$umLabel.adr_new_entry}" /></td>
            <td valign="middle" class="buttonRight">&nbsp;</td>
          </tr>
        </table>
      </center></td>
  </tr>
</table>
{include file=$footerTemplate} 