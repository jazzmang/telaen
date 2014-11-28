{include file=$headerTemplate pageTitle=$umLabel.newmsg_title}

{include file=$menuTemplate refresh="false"}
<form name="composeForm" method="post" action="newmsg.php" onsubmit="return false;">
  {$umForms}
  <table cellspacing="0" cellpadding="0" border="0" align="center"  bgcolor="#DDE3EB" width="100%">
    <tr>
      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#DDE3EB">
          <tr bgcolor="#DDE3EB">
            <td width="26%" height="24" class="headerright">{$umLabel.to_hea} &nbsp;<a href="javascript:addrpopup()"><img src="images/bookmark_it.gif" width="15" height="12" border="0" alt="<!--%address_tip%-->" /></a>&nbsp;</td>
            <td class="default">&nbsp;{$umTo}</td>
          </tr>
          <tr>
            <td class="separator" colspan="2"></td>
          </tr>
          <tr bgcolor="#DDE3EB">
            <td height="24" class="headerright">{$umLabel.cc_hea} &nbsp;<a href="javascript:addrpopup()"><img src="images/bookmark_it.gif" width="15" height="12" alt="<!--%address_tip%-->" /></a>&nbsp;</td>
            <td class="default">&nbsp;{$umCc}</td>
          </tr>
          <tr>
            <td class="separator" colspan="2"></td>
          </tr>
          <tr bgcolor="#DDE3EB">
            <td height="24" class="headerright">{$umLabel.bcc_hea} &nbsp;<a href="javascript:addrpopup()"><img src="images/bookmark_it.gif" width="15" height="12" alt="<!--%address_tip%-->" /></a>&nbsp;</td>
            <td class="default">&nbsp;{$umBcc}</td>
          </tr>
          <tr>
            <td class="separator" colspan="2"></td>
          </tr>
          <tr bgcolor="#DDE3EB">
            <td height="24" class="headerright">{$umLabel.subject_hea} &nbsp;</td>
            <td class="default">&nbsp;{$umSubject}</td>
          </tr>
          <tr>
            <td class="separator" colspan="2"></td>
          </tr>
          <tr bgcolor="#DDE3EB">
            <td height="18" class="headerright">{$umLabel.attach_hea} &nbsp;</td>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                {if $umHaveAttachs eq 1}
                <tr>
                  <td width="40%" class="headersLeft">&nbsp;.: <b>{$umLabel.attch_name_hea}</b> :. </td>
                  <td width="15%" class="headers">.: <b>{$umLabel.attch_size}</b> :.</td>
                  <td width="30%" class="headersLeft">.: <b>{$umLabel.attch_type_hea}</b> :.</td>
                  <td class="headers">.: <b>{$umLabel.attch_dele_hea}</b> :.&nbsp;</td>
                </tr>
                {section name=i loop=$umAttachList}
                <tr>
                  <td class="default">&nbsp; {$umAttachList[i].name|escape:"html"}</td>
                  <td class="cent">{$umAttachList[i].size} </td>
                  <td class="default">{$umAttachList[i].type|truncate:23:"...":true}</td>
                  <td class="cent"><a href="{$umAttachList[i].link}">OK</a></td>
                </tr>
                {/section}
                {else}
                <tr>
                  <td><img src="inc/themes/hungi.mozilla/images/header-bg-left.gif" alt="" /></td>
                  <td height="22" width="100%" class="headers">&nbsp;{$umLabel.attch_no_hea}</td>
                  <td><img src="inc/themes/hungi.mozilla/images/header-bg-right.gif" alt="" /></td>
                </tr>
                {/if}
                <tr>
                  <td class="separator" colspan="4"></td>
                </tr>
              </table>
              <table width="100%" border="0" cellspacing="1" cellpadding="0">
                <tr>
                  <td width="100%" class="default">&nbsp;<a href="javascript:upwin()" class="navigation">{$umLabel.attch_add_new}</a></td>
                </tr>
              </table></td>
          </tr>
          <tr>
            <td class="separator" colspan="2"></td>
          </tr>
          <tr>
            <td class="headerright">&nbsp;</td>
            <td class="default"><textarea cols="100" rows="20" name="body">{$umBody|escape:"html"}</textarea></td>
          </tr>
          <tr>
            <td class="separator" colspan="2"></td>
          </tr>
          <tr>
            <td class="headerright">{$umLabel.require_receipt}  &nbsp;</td>
            <td class="default"><input type="checkbox" value="true" name="requireReceipt"{if $requireReceipt eq true} checked="checked"{/if}/></td>
          </tr>
          {if !$umAddSignature && $umHaveSignature}
          <tr>
            <td class="separator" colspan="2"></td>
          </tr>
          <tr>
            <td class="headerright">{$umLabel.add_signature} &nbsp;</td>
            <td class="default"><input type="checkbox" name="cksig" onclick="return addsig()"{if $umAddSignature eq 1} checked disabled{/if}></td>
          </tr>
          {/if}
          <tr>
            <td class="separator" colspan="2"></td>
          </tr>
          <tr>
            <td class="headerright">{$umLabel.priority_text} &nbsp;</td>
            <td class="default"><select name="priority">
                <option value="1"{if $umPriority eq 1} selected="selected"{/if}>{$umLabel.priority_high}</option>
                <option value="3"{if $umPriority eq 3} selected="selected"{/if}>{$umLabel.priority_normal}</option>
                <option value="5"{if $umPriority eq 5} selected="selected"{/if}>{$umLabel.priority_low}</option>
              </select></td>
          </tr>
          <tr>
            <td colspan="2" class="usage"><center>
                <table class="buttonTable" cellspacing="0" >
                  <tr>
                    <td valign="middle" class="buttonLeft">&nbsp;</td>
                    <td valign="middle" class="buttonMiddle"><a class="login" href="javascript:enviar()" >{$umLabel.send_text}</a></td>
                    <td valign="middle" class="buttonRight">&nbsp;</td>
                  </tr>
                </table>
              </center></td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
{include file=$footerTemplate} 
