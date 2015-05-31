<div id="social" class="annc-container" style="display: block;">
	<form id="form-social" class="" method="post">
        <div class="annc-content">
            <div class="input-holder">
                <label for="">{l s='Explanation to customers' mod='announcement'}</label>
                {foreach from=$annc.langs item=lang}
                <div id="text_{$lang.id_lang}" class="multilingual-holder" style="display: {if $lang.id_lang == $annc.lang_active}block{else}none{/if};">
                    <textarea name="text[{$lang.id_lang}]" id="explanation_{$lang.iso_code}" class="autoload_rte">{if $annc.text}{$annc.text.{$lang.id_lang}}{elseif isset($smarty.post.text.{$lang.id_lang})}{$smarty.post.text.{$lang.id_lang}}{/if}</textarea>
                </div>
                {/foreach}
                {$annc.flags.text}
                <script type="text/javascript">

                </script>
                <script type="text/javascript">
                    var iso = '{$annc.lang_iso}';
                    var pathCSS = '{$annc.css_dir}';
                    var ad = '{$annc.ad}';

                    $(document).ready(function(){
                        // Colorpicker
                        $('#bg-color').mColorPicker();
                        // tinyMCE
                        tinySetup({
                            editor_selector :"autoload_rte"
                        });
                    });
                </script>
            </div>
            <div class="input-holder">
                <label for="more-info-link">{l s='More info link' mod='announcement'}</label>
                {foreach from=$annc.langs item=lang}
                <div id="link_{$lang.id_lang}" class="multilingual-holder" style="display: {if $lang.id_lang == $annc.lang_active}block{else}none{/if};">
                    <input type="text" name="link[{$lang.id_lang}]" id="link_{$lang.iso_code}" value="{if isset($smarty.post.link.{$lang.id_lang})}{$smarty.post.link.{$lang.id_lang}}{elseif $annc.link}{$annc.link.{$lang.id_lang}}{/if}" placeholder="{l s='Paste the link here' mod='announcement'}">
                </div>
                {/foreach}
                {$annc.flags.link}
                <!-- <input type="text" id="more-info-link" name="link" value="{if $annc.settings.link}{$annc.settings.link}{elseif isset($smarty.post.link)}{$smarty.post.link}{/if}" placeholder="{l s='Paste the link here' mod='announcement'}"> -->
            </div>
            <div class="switch-holder">
                <label for="autohide">{l s='Always show' mod='instauro'}</label>
                <div class="switch small {if $annc.settings.always}active{else}inactive{/if}">
                    <input type="radio" id="always" class="" name="always"  value="{if $annc.settings.always}1{else}0{/if}" checked="false" />
                </div>
                <p style="clear:both;">{l s='Enable this if you want to show the information all the time' mod='announcement'}</p>
            </div>
            <div class="switch-holder">
                <label for="autohide">{l s='Auto hide' mod='instauro'}</label>
                <div class="switch small {if $annc.settings.autohide}active{else}inactive{/if}">
                    <input type="radio" id="autohide" class="" name="autohide"  value="{if $annc.settings.autohide}1{else}0{/if}" checked="true" />
                </div>
            </div>
            <div class="input-holder">
                <label for="time">{l s='Seconds to hide' mod='announcement'}</label>
                <input type="text" id="time" name="time" value="{if $annc.settings.time}{$annc.settings.time}{elseif isset($smarty.post.time)}{$smarty.post.time}{/if}">
            </div>
            <div class="input-holder">
                <label for="bg-color">{l s='Background color' mod='announcement'}</label>
                <input type="text" id="bg-color" name="bg_color" value="{if $annc.settings.bg_color}{$annc.settings.bg_color}{elseif isset($smarty.post.bg_color)}{$smarty.post.bg_color}{/if}">
            </div>
        </div>
        <div class="annc-bottom">
            <input type="submit" name="submitSettings" class="button-large green" value="{l s='Update' mod='announcement'}">
        </div>
	</form>
</div>
