{if $files}
    {foreach $files as $file}
        <a class="swiper-slide position-relative" href="{$file['url']}" style="max-height: 300px">
            <img class="mx-auto d-block img-fluid img_gallery" src="{$file['url']}" alt="{$_modx->resource.pagetitle | htmlent}" title="{$_modx->resource.pagetitle | htmlent}" itemprop="image" style="max-height: 300px;">
        </a>
    {/foreach}
{else}
    <div class="swiper-slide"><img class="mx-auto d-block img-fluid" src="{$_modx->getPlaceholder('+conf_noimage')}" alt="{$_modx->resource.pagetitle | htmlent}" title="{$_modx->resource.pagetitle | htmlent}" itemprop="image" style="max-height: 300px">
    </div>
{/if}