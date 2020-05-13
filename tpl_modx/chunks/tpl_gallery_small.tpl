{if $files}
    {foreach $files as $file}
        <div class="swiper-slide mx-2"><img class="img-fluid" src="{$file['url']}" alt="{$modx->resource->pagetitle | htmlent}"
                                       style="height: 70px;"></div>
    {/foreach}
{else}
    <div class="swiper-slide"><img src="{$_modx->getPlaceholder('+conf_noimage')}" alt="{$modx->resource->pagetitle | htmlent}"
                                   style="height: 70px;"></div>
{/if}