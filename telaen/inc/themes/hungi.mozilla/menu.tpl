<!-- Menu -->

<div id="menu">
  <div class="menuItem"> <a href="javascript:goinbox()"><img src="inc/themes/hungi.mozilla/images/inbox.gif" alt="" /></a>
    <p><a href="javascript:goinbox()">{$umLabel.messages_mnu}</a></p>
  </div>
  <div class="menuItem"> <a href="javascript:newmsg()"><img src="inc/themes/hungi.mozilla/images/compose.gif" alt="" /></a>
    <p><a href="javascript:newmsg()">{$umLabel.compose_mnu}</a></p>
  </div>
  {if $refresh neq "false"}
  <div class="menuItem"> <a href="javascript:refreshlist()"><img src="inc/themes/hungi.mozilla/images/refresh.gif" alt="" /></a>
    <p><a href="javascript:refreshlist()">{$umLabel.refresh_mnu}</a></p>
  </div>
  {else}
  <div class="menuItem"> <img src="inc/themes/hungi.mozilla/images/refresh.gif" alt="" />
    <p>{$umLabel.refresh_mnu}</p>
  </div>
  {/if}
  <div class="menuItem"> <a href="javascript:folderlist()"><img src="inc/themes/hungi.mozilla/images/folders.gif" alt="" /></a>
    <p><a href="javascript:folderlist()">{$umLabel.folders_mnu}</a></p>
  </div>
  <div class="menuItem"> <a href="javascript:search()"><img src="inc/themes/hungi.mozilla/images/search.gif" alt="" /></a>
    <p><a href="javascript:search()">{$umLabel.search_mnu}</a></p>
  </div>
  <div class="menuItem"> <a href="javascript:addresses()"><img src="inc/themes/hungi.mozilla/images/address.gif" alt="" /></a>
    <p><a href="javascript:addresses()">{$umLabel.address_mnu}</a></p>
  </div>
  <div class="menuItem"> <a href="javascript:emptytrash()"><img src="inc/themes/hungi.mozilla/images/trash.gif" alt="" /></a>
    <p><a href="javascript:emptytrash()">{$umLabel.empty_trash_mnu}</a></p>
  </div>
  <div class="menuItem"> <a href="javascript:prefs()"><img src="inc/themes/hungi.mozilla/images/preferences.gif" alt="" /></a>
    <p><a href="javascript:prefs()">{$umLabel.prefs_mnu}</a></p>
  </div>
  <div class="menuItem"> <a href="javascript:goend()"><img src="inc/themes/hungi.mozilla/images/logout.gif" alt="" /></a>
    <p><a href="javascript:goend()">{$umLabel.logoff_mnu}</a></p>
  </div>
</div>
<!--Menu end--> 
