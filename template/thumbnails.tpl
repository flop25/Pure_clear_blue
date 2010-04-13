
{if !empty($thumbnails)}
<ul class="thumbnails">
{foreach from=$thumbnails item=thumbnail}
	<li>
	<span class="wrap1">
		<span class="wrap2">
		<a href="{$thumbnail.URL}">
			<img class="thumbnail" src="{$thumbnail.TN_SRC}" alt="{$thumbnail.TN_ALT}" title="{$thumbnail.TN_TITLE}">
		</a>
		</span>
		<span class="thumbLegend">
		{if isset($thumbnail.NAME)}{$thumbnail.NAME}{/if}
		{if !empty($thumbnail.icon_ts)}
		<img title="{$thumbnail.icon_ts.TITLE}" src="{$ROOT_URL}{$themeconf.icon_dir}/recent.png" class="icon" alt="(!)">
		{/if}
		{if isset($thumbnail.NB_COMMENTS)}
		<span class="{if 0==$thumbnail.NB_COMMENTS}zero {/if}nb-comments">
		<br>
		{$pwg->l10n_dec('%d comment', '%d comments',$thumbnail.NB_COMMENTS)}
		</span>
		{/if}

		{if isset($thumbnail.NB_HITS)}
		<span class="{if 0==$thumbnail.NB_HITS}zero {/if}nb-hits">
		<br>
		{$pwg->l10n_dec('%d hit', '%d hits',$thumbnail.NB_HITS)}
		</span>
		{/if}
		</span>
	</span>
	</li>
{/foreach}
</ul>
{/if}


