{include file="{$annc.admin_tpl_path}javascript.tpl"}
<div id="annc">
	<div class="header">
		<div id="menu-top">
			<a href="http://daoyuan.li" id="annc-studio" class="social" title="Daoyuan Li's Website" target="_blank">Daoyuan Li</a>
			<a href="https://github.com/daoli" class="social" title="Minic studio Github page" target="_blank"><i class="icon-github"></i></a>
		</div>
		<div id="banner"></div>
		<!-- <div id="navigation">
			<a href="">{l s='Menu item' mod='announcement'}</a>
			<a href="">{l s='Menu item' mod='announcement'}</a>
			<a href="">{l s='Menu item' mod='announcement'}</a>
		</div> -->
	</div>
	{if $response.message}
		{include file="{$annc.admin_tpl_path}messages.tpl" id='global' text=$response.message class=$response.type}
	{/if}
	<!-- settings -->
	{include file="{$annc.admin_tpl_path}settings.tpl"}
</div>
