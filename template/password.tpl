<div id="content" class="content">

  <div class="titrePage">
    <ul class="categoryActions">
      <li><a href="{$U_HOME}" title="{'Home'|@translate}"><img src="{$themeconf.icon_dir}/home.png" class="button" alt="{'Home'|@translate}"></a></li>
    </ul>
    <h2>{'Password forgotten'|@translate}</h2>
  </div>

<div id="autre_content">
  {if count($errors)}
  <div class="errors">
    <ul>
      {foreach from=$errors item=error}
      <li>{$error}</li>
      {/foreach}
    </ul>
  </div>
  {/if}

  {if count($infos)}
  <div class="infos">
    <ul>
      {foreach from=$infos item=info}
      <li>{$info}</li>
      {/foreach}
    </ul>
  </div>
  {/if}

<form action="{$F_ACTION}" method="post" class="properties">
  <fieldset>
    <legend>{'Retrieve password'|@translate}</legend>

    <ul>
      <li>
        <span class="property">
          <label for="mail_address">{'Email address'|@translate}</label>
        </span>
        <input class="login" type="text" name="mail_address" id="mail_address" size="40" maxlength="40" >
      </li>
      <li>
        <span class="property">
          <label for="no_mail_address">{'No email address'|@translate}</label>
        </span>
        <input type="checkbox" id="no_mail_address" name="no_mail_address" value="1">
      </li>
    </ul>
  </fieldset>

  <p><input class="submit" type="submit" name="submit" value="{'Send new password'|@translate}"></p>
</form>
</div>
</div> <!-- content -->
