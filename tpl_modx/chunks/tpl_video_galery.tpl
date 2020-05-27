{set $rows = json_decode($_pls["tv.resourcealbum"])}

{if $rows}
{foreach $rows as $key => $row}

        <a class="swiper-slide swiper-video__slide card border-0 border-r0 position-relative " href="assets/resourceimages/{$id}/{$row.image}" style="width: 133px">
            <img class="px-2 px-xl-0" src="assets/resourceimages/{$id}/{$row.image}" alt="{$row.published}" title="{$row.published}" style="height: 80px; width: 133px">
        </a>

{/foreach}
{/if}
