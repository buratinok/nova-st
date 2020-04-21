{if $files}
    {foreach $files as $file}
        <div class="swiper-slide"><img class="mx-auto d-block img-fluid" src="{$file['url']}" alt="{$_modx->resource.pagetitle | htmlent}" itemprop="image" style="min-height: 326px">
        </div>
    {/foreach}
{else}
    <div class="swiper-slide"><img class="mx-auto d-block img-fluid" src="{$_modx->getPlaceholder('+conf_noimage')}" alt="{$_modx->resource.pagetitle | htmlent}" itemprop="image" style="min-height: 326px">
    </div>
{/if}