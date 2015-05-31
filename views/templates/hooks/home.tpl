<!-- announcement -->
{if isset($announcement)}
<div id="announcement" style="{if $announcement.settings.bg_color}background-color:{$announcement.settings.bg_color}{/if}">
	<div class="announcement-inner">
		<div class="content"><h5>{$announcement.text}</h5></div>
		{if $announcement.link}<a href="{$announcement.link}" id="announcement-more-info-button" class="announcement-buttons" target="_blank" title="{l s='Click to read more' mod='announcement'}" rel="nofollow">{l s='More info' mod='announcement'}</a>{/if}
		<!-- <span id="announcement-close-button" class="announcement-buttons">{l s='Close' mod='announcement'}</span> -->
	</div>
</div>
<script type="text/javascript">
	var autohide = {if $announcement.settings.autohide}true{else}false{/if};
	var time = {if $announcement.settings.time}{$announcement.settings.time}*1000{else}3000{/if};
</script>
{else}
<script type="text/javascript">
	var autohide = false;
</script>
{/if}
<!-- end announcement -->
