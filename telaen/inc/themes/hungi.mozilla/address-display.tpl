{include file=$headerTemplate pageTitle=$umLabel.adr_title}

{include file=$menuTemplate refresh="false"}
<table cellspacing="0" cellpadding="0" border="0" align="center" width="100%" bgcolor="#DDE3EB">
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="1" cellpadding="0">
        <tr>
          <td class="headerright" width="40%">{$umLabel.adr_name} &nbsp;</td>
          <td class="default">&nbsp;{$umAddrName|escape:"html"}</td>
        </tr>
        <tr>
          <td class="headerright">{$umLabel.adr_email} &nbsp;</td>
          <td class="default">&nbsp;{$umAddrEmail|escape:"html"}</td>
        </tr>
        <tr>
          <td class="headerright">{$umLabel.adr_street} &nbsp;</td>
          <td class="default">&nbsp;{$umAddrStreet|escape:"html"}</td>
        </tr>
        <tr>
          <td class="headerright">{$umLabel.adr_city} &nbsp;</td>
          <td class="default">&nbsp;{$umAddrCity|escape:"html"}</td>
        </tr>
        <tr>
          <td class="headerright">{$umLabel.adr_state} &nbsp;</td>
          <td class="default">&nbsp;{$umAddrState|escape:"html"}</td>
        </tr>
        <tr>
          <td class="headerright">{$umLabel.adr_work} &nbsp;</td>
          <td class="default">&nbsp;{$umAddrWork|escape:"html"}</td>
        </tr>
        <tr>
          <td class="headerright">{$umLabel.adr_phone} &nbsp;</td>
          <td class="default">&nbsp;{$umAddrPhone|escape:"html"}</td>
        </tr>
        <tr>
          <td class="headerright">{$umLabel.adr_cell} &nbsp;</td>
          <td class="default">&nbsp;{$umAddrCell|escape:"html"}</td>
        </tr>
        <tr>
          <td class="headerright">{$umLabel.adr_note} &nbsp;</td>
          <td class="default">&nbsp;{$umAddrNote|escape:"html"}</td>
        </tr>
        <tr>
          <td class="usage" colspan="2"><center>
              <table class="buttonTable" cellspacing="0" >
                <tr>
                  <td valign="middle" class="buttonLeft">&nbsp;</td>
                  <td valign="middle" class="buttonMiddle"><input class="button" type="button" name="button" onclick="javascript:location = '{$umGoBack}'" value="{$umLabel.adr_back}" /></td>
                  <td valign="middle" class="buttonRight">&nbsp;</td>
                </tr>
              </table>
            </center></td>
        </tr>
      </table></td>
  </tr>
</table>
{include file=$footerTemplate} 