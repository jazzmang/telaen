<html><body bgcolor="#FFFFFF" text="#000000" link="#0000FF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onLoad="MM_preloadImages('inc/themes/aleborgXP/images/refresh_down.gif','inc/themes/aleborgXP/images/refresh_over.gif','inc/themes/aleborgXP/images/newmsg_down.gif','inc/themes/aleborgXP/images/newmsg_over.gif','inc/themes/aleborgXP/images/search_down.gif','inc/themes/aleborgXP/images/search_over.gif','inc/themes/aleborgXP/images/folders_down.gif','inc/themes/aleborgXP/images/folders_over.gif','inc/themes/aleborgXP/images/options_down.gif','inc/themes/aleborgXP/images/options_over.gif','inc/themes/aleborgXP/images/trash_down.gif','inc/themes/aleborgXP/images/trash_over.gif','inc/themes/aleborgXP/images/addressbook_down.gif','inc/themes/aleborgXP/images/addressbook_over.gif','inc/themes/aleborgXP/images/logout_down.gif','inc/themes/aleborgXP/images/logout_over.gif','inc/themes/aleborgXP/images/inbox_down.gif','inc/themes/aleborgXP/images/inbox_over.gif','inc/themes/aleborgXP/images/previous_down.gif','inc/themes/aleborgXP/images/previous_over.gif','inc/themes/aleborgXP/images/next_down.gif','inc/themes/aleborgXP/images/next_over.gif')">{config_load file=$umLanguageFile section="MessageList"}
{um_welcome_message messages=$smNumMessages unread=$smNumUnread boxname=$smBoxName var="umWelcomeMessage"}

<head>
<title>UebiMiau - {$smLabel.messages_to} {$smUserEmail}</title>
<meta charset="utf-8" />
<link rel="stylesheet" href="inc/themes/aleborgXP/webmail.css" type="text/css">
<script language="JavaScript" src="inc/themes/aleborgXP/webmail.js" type="text/javascript">
</script>
{$smJS}
</head>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr height="1" bgcolor="#FFFFFF">
    <td height="1" bgcolor="#FFFFFF"></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellpadding="0" cellspacing="0" background="inc/themes/aleborgXP/images/menu_back.gif">
        <tr> 
          <td width="100"><img src="inc/themes/aleborgXP/images/logo.gif" width="100" height="32"></td>
          <td width="11"><img src="inc/themes/aleborgXP/images/seperator.gif" width="11" height="38"></td>
          <td width="32">{if $smPreviousLink}<a href="{$smPreviousLink}"><img src="inc/themes/aleborgXP/images/previous.gif" alt="{$smLabel.previous_text}" name="previous" width="32" height="38" border="0" id="previous" onMouseDown="MM_swapImage('previous','','inc/themes/aleborgXP/images/previous_down.gif',1)" onMouseOver="MM_swapImage('previous','','inc/themes/aleborgXP/images/previous_over.gif',1)" onMouseOut="MM_swapImgRestore()"></a>{else}<img src="inc/themes/aleborgXP/images/previous_off.gif">{/if}</td>
          <td width="32">{if $smNextLink}<a href="{$smNextLink}"><img src="inc/themes/aleborgXP/images/next.gif" alt="{$smLabel.next_text}" name="next" width="32" height="38" border="0" id="next" onMouseDown="MM_swapImage('next','','inc/themes/aleborgXP/images/next_down.gif',1)" onMouseOver="MM_swapImage('next','','inc/themes/aleborgXP/images/next_over.gif',1)" onMouseOut="MM_swapImgRestore()"></a>{else}<img src="inc/themes/aleborgXP/images/next_off.gif">{/if}</td>
          <td width="11"><img src="inc/themes/aleborgXP/images/seperator.gif" width="11" height="38"></td>
          <td width="32"><a href="javascript:goinbox()"><img src="inc/themes/aleborgXP/images/inbox.gif" alt="{$smLabel.messages_mnu}" name="inbox" width="32" height="38" border="0" id="inbox" onMouseDown="MM_swapImage('inbox','','inc/themes/aleborgXP/images/inbox_down.gif',1)" onMouseOver="MM_swapImage('inbox','','inc/themes/aleborgXP/images/inbox_over.gif',1)" onMouseOut="MM_swapImgRestore()"></a></td>
          <td width="32"><a href="javascript:newmsg()"><img src="inc/themes/aleborgXP/images/newmsg.gif" alt="{$smLabel.compose_mnu}" name="newmsg" width="32" height="38" border="0" id="newmsg" onMouseDown="MM_swapImage('newmsg','','inc/themes/aleborgXP/images/newmsg_down.gif',1)" onMouseOver="MM_swapImage('newmsg','','inc/themes/aleborgXP/images/newmsg_over.gif',1)" onMouseOut="MM_swapImgRestore()"></a></td>
          <td width="32"><a href="javascript:refreshlist()"><img src="inc/themes/aleborgXP/images/refresh.gif" alt="{$smLabel.refresh_mnu}" name="refresh" width="32" height="38" border="0" id="refresh" onMouseDown="MM_swapImage('refresh','','inc/themes/aleborgXP/images/refresh_down.gif',1)" onMouseOver="MM_swapImage('refresh','','inc/themes/aleborgXP/images/refresh_over.gif',1)" onMouseOut="MM_swapImgRestore()"></a></td>
          <td width="11"><img src="inc/themes/aleborgXP/images/seperator.gif" width="11" height="38"></td>
          <td width="32"><a href="javascript:folderlist()"><img src="inc/themes/aleborgXP/images/folders.gif" alt="{$smLabel.folders_mnu}" name="folders" width="32" height="38" border="0" id="folders" onMouseDown="MM_swapImage('folders','','inc/themes/aleborgXP/images/folders_down.gif',1)" onMouseOver="MM_swapImage('folders','','inc/themes/aleborgXP/images/folders_over.gif',1)" onMouseOut="MM_swapImgRestore()"></a></td>
          <td width="32"><a href="javascript:search()"><img src="inc/themes/aleborgXP/images/search.gif" alt="{$smLabel.search_mnu}" name="search" width="32" height="38" border="0" id="search" onMouseDown="MM_swapImage('search','','inc/themes/aleborgXP/images/search_down.gif',1)" onMouseOver="MM_swapImage('search','','inc/themes/aleborgXP/images/search_over.gif',1)" onMouseOut="MM_swapImgRestore()"></a></td>
          <td width="32"><a href="javascript:addresses()"><img src="inc/themes/aleborgXP/images/addressbook.gif" alt="{$smLabel.address_mnu}" name="addressbook" width="32" height="38" border="0" id="addressbook" onMouseDown="MM_swapImage('addressbook','','inc/themes/aleborgXP/images/addressbook_down.gif',1)" onMouseOver="MM_swapImage('addressbook','','inc/themes/aleborgXP/images/addressbook_over.gif',1)" onMouseOut="MM_swapImgRestore()"></a></td>
          <td width="11"><img src="inc/themes/aleborgXP/images/seperator.gif" width="11" height="38"></td>
          <td width="32"><a href="javascript:emptytrash()"><img src="inc/themes/aleborgXP/images/trash.gif" alt="{$smLabel.empty_trash_mnu}" name="trash" width="32" height="38" border="0" id="trash" onMouseDown="MM_swapImage('trash','','inc/themes/aleborgXP/images/trash_down.gif',1)" onMouseOver="MM_swapImage('trash','','inc/themes/aleborgXP/images/trash_over.gif',1)" onMouseOut="MM_swapImgRestore()"></a></td>
          <td width="32"><a href="javascript:prefs()"><img src="inc/themes/aleborgXP/images/options.gif" alt="{$smLabel.prefs_mnu}" name="options" width="32" height="38" border="0" id="options" onMouseDown="MM_swapImage('options','','inc/themes/aleborgXP/images/options_down.gif',1)" onMouseOver="MM_swapImage('options','','inc/themes/aleborgXP/images/options_over.gif',1)" onMouseOut="MM_swapImgRestore()"></a></td>
          <td width="32"><a href="javascript:goend()"><img src="inc/themes/aleborgXP/images/logout.gif" alt="{$smLabel.logoff_mnu}" name="logout" width="32" height="38" border="0" id="logout" onMouseDown="MM_swapImage('logout','','inc/themes/aleborgXP/images/logout_down.gif',1)" onMouseOver="MM_swapImage('logout','','inc/themes/aleborgXP/images/logout_over.gif',1)" onMouseOut="MM_swapImgRestore()"></a></td>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td height="2" background="inc/themes/aleborgXP/images/list_up.gif"><img src="inc/themes/aleborgXP/images/list_up.gif" width="5" height="2"></td>
  </tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" background="inc/themes/aleborgXP/images/menu_back.gif">
  {if $smNumMessages gt 0}
  <form name="form1" action="process.php" method="post">
    {$smForms}
    <tr> 
      <td height="16" class="default">&nbsp;<img src="inc/themes/aleborgXP/images/pages.gif" align="absmiddle">&nbsp;{$smNavBar}</td>
    </tr>
    <tr> 
      <td height="2" background="inc/themes/aleborgXP/images/list_up.gif"><img src="inc/themes/aleborgXP/images/list_up.gif" width="5" height="2"></td>
    </tr>
    <tr> 
      <td height="16" class="default">&nbsp;<img src="inc/themes/aleborgXP/images/index.gif" align="absmiddle">&nbsp;{$umWelcomeMessage}</td>
    </tr>
    <tr> 
      <td height="2" background="inc/themes/aleborgXP/images/list_up.gif"><img src="inc/themes/aleborgXP/images/list_up.gif" width="5" height="2"></td>
    </tr>
    {if $smErrorMessage neq ""}
    <tr> 
      <td height="16" class="default">&nbsp;<img src="inc/themes/aleborgXP/images/index.gif" align="absmiddle">&nbsp;<font color=red><b>{$smErrorMessage}</b></font></td>
    </tr>
    <tr> 
      <td height="2" background="inc/themes/aleborgXP/images/list_up.gif"><img src="inc/themes/aleborgXP/images/list_up.gif" width="5" height="2"></td>
    </tr>
    {/if} {else} 
    <tr> 
      <td height="16" class="default">&nbsp;<img src="inc/themes/aleborgXP/images/index.gif" align="absmiddle">&nbsp;{$smLabel.no_messages}
        <b>{$smBoxName|escape:"html"}</b></td>
    </tr>
    <tr> 
      <td height="2" background="inc/themes/aleborgXP/images/list_up.gif"><img src="inc/themes/aleborgXP/images/list_up.gif" width="5" height="2"></td>
    </tr>
    {/if} {if $smQuotaEnabled eq 1}
    <tr> 
      <td height="16" class="default">&nbsp;<img src="inc/themes/aleborgXP/images/index.gif" align="absmiddle">&nbsp;{$smLabel.quota_usage_info}:
        {$smLabel.quota_usage_used} <b>{$smTotalUsed}</b>Kb {$smLabel.quota_usage_of} <b>{$smQuotaLimit}</b>Kb
        {$smLabel.quota_usage_avail}&nbsp;&nbsp;{$smUsageGraph}</td>
    </tr>
    <tr> 
      <td height="2" background="inc/themes/aleborgXP/images/list_up.gif"><img src="inc/themes/aleborgXP/images/list_up.gif" width="5" height="2"></td>
    </tr>
    {/if} 
    <tr> 
      <td height="16" class="default">&nbsp;<a href="javascript:delemsg()"><img src="inc/themes/aleborgXP/images/delete.gif" border="0" alt="{$smLabel.delete_selected_mnu}"></a>&nbsp;<a href="javascript:movemsg()"><img src="inc/themes/aleborgXP/images/move_to.gif" border="0" alt="{$smLabel.move_selected_mnu}"></a>&nbsp;
        <select name="aval_folders" class="textbox">
						{section name=i loop=$smAvalFolders}

          <option value="{$smAvalFolders[i].path|escape:"html"}">{$smAvalFolders[i].display|escape:"html"}
          {/section} 
        </select>
      </td>
    </tr>
    <tr> 
      <td bgcolor="#FFFFFF"> 
        <table width="100%" height="20" border="0" cellpadding="0" cellspacing="0" style="background-image: url(themes/aleborgXP/images/back_list.gif); background-repeat: repeat-x">
          <tr> 
            <td width="1"> 
              <table border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" width="100%">
                <tr> 
                  <td background="inc/themes/aleborgXP/images/back_list.gif" class="defaultC"> 
                    <input type=checkbox name=chkall onClick="sel()">
                  </td>
                  <td background="inc/themes/aleborgXP/images/back_list.gif" class="defaultC"><img src="./images/prior_high.gif" width=5 height=11 border=0 alt=""></td>
                  <td background="inc/themes/aleborgXP/images/back_list.gif" class="defaultC"><img src="images/attach.gif" border="0" width="6" height="14" alt=""></td>
                  <td background="inc/themes/aleborgXP/images/back_list.gif" class="defaultC"> 
                    <table border="0" cellspacing="0" cellpadding="0">
                      <tr> 
                        <td><img src="images/trans.gif" border="0" width="5" height="1" alt=""></td>
                        <td><img src="images/msg_read.gif" border="0" width="14" height="14" alt=""></td>
                      </tr>
                    </table>
                  </td>
                  {if $smFolder eq "sent"}
                  <td background="inc/themes/aleborgXP/images/back_list.gif" class="defaultC" nowrap align="left"> 
                    <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><a class="menu" href="javascript:sortby('toname')">{$smLabel.to_hea}{$smToArrow}</a></b></div>
                  </td>
                  {else} 
                  <td background="inc/themes/aleborgXP/images/back_list.gif" class="defaultC" nowrap align="left"> 
                    <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><a class="menu" href="javascript:sortby('fromname')">{$smLabel.from_hea}{$smFromArrow}</a></b></div>
                  </td>
                  {/if} 
                  <td background="inc/themes/aleborgXP/images/back_list.gif" class="defaultC" nowrap align="left"> 
                    <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><a class="menu" href="javascript:sortby('subject')">{$smLabel.subject_hea}{$smSubjectArrow}</a></b></div>
                  </td>
                  <td background="inc/themes/aleborgXP/images/back_list.gif" class="defaultC" nowrap align="left"> 
                    <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><a class="menu" href="javascript:sortby('date')">{$smLabel.date_hea}{$smDateArrow}</a></b></div>
                  </td>
                  <td background="inc/themes/aleborgXP/images/back_list.gif" class="defaultC" align="right" nowrap> 
                    <div align="right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><a class="menu" href="javascript:sortby('size')">{$smLabel.size_hea}{$smSizeArrow}</a></b>
                    </div>
                  </td>
                </tr>
                {section name=i loop=$smMessageList}
                <tr> 
                  <td class="default">{$smMessageList[i].checkbox}</td>
                  <td width="17" height="20" class="defaultC"> 
                    <table width="10%" border="0" cellspacing="0" cellpadding="0">
                      <tr> 
                        <td align="center" valign="middle"> 
                          <div align="center">{$smMessageList[i].priorimg}</div>
                        </td>
                      </tr>
                    </table>
                  </td>
                  <td class="defaultC">{$smMessageList[i].attachimg}</td>
                  <td class="defaultC">{$smMessageList[i].statusimg}</td>
                  {if $smFolder eq "sent"}
                  <td class="default" nowrap>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<acronym title="{$smMessageList[i].to|escape:"html"|default:$smLabel.no_recipient_text}">{if
                    $smMessageList[i].read eq "false"}<b>{/if}<a href="{$smMessageList[i].readlink}">{$smMessageList[i].to|truncate:30:"...":true|escape:"html"|default:$smLabel.no_subject_text}</a>{if
                    $smMessageList[i].read eq "false"}</b>{/if}</acronym></td>
                  {else} 
                  <td class="default" nowrap>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<acronym title="{$smMessageList[i].from|escape:"html"|default:$smLabel.no_recipient_text}">{if
                    $smMessageList[i].read eq "false"}<b>{/if}<a href="{$smMessageList[i].readlink}">{$smMessageList[i].from|truncate:30:"...":true|escape:"html"|default:$smLabel.no_subject_text}</a></acronym>{if
                    $smMessageList[i].read eq "false"}</b>{/if}</td>
                  {/if} 
                  <td class="default" nowrap><acronym title="{$smMessageList[i].subject|escape:"html"|default:$smLabel.no_subject_text}">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{if
                    $smMessageList[i].read eq "false"}<b>{/if}<a href="{$smMessageList[i].readlink}">{$smMessageList[i].subject|truncate:30:"...":true|escape:"html"|default:$smLabel.no_subject_text}</a>{if
                    $smMessageList[i].read eq "false"}</b>{/if}</acronym></td>
                  <td class="defaultC" nowrap align="left"> 
                    <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{if $smMessageList[i].read
                      eq "false"}<b>{/if}{$smMessageList[i].date|date_format:$smLabel.date_format}</b></div>
                  </td>
                  <td class="defaultC" align="right" nowrap> 
                    <div align="right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{if $smMessageList[i].read
                      eq "false"}<b>{/if}{$smMessageList[i].size}Kb{if $smMessageList[i].read
                      eq "false"}</b>{/if}</div>
                  </td>
                </tr>
                {/section} 
              </table>
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </form>
</table>
</body>
</html>
