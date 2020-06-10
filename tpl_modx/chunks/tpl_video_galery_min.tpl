{set $rows = json_decode($_pls["tv.resourcealbum"])}

{if $rows}
{foreach $rows as $key => $row}

        <a class="swiper-slide swiper-video__slide pb-0 card border-0 border-r0" href="assets/resourceimages/{$id}/{$row.image}" style="height: calc(100% / 2)">
            <img class="img-fluid" src="assets/resourceimages/{$id}/{$row.image}" alt="{$row.published}" title="{$row.published}" style="width: 140px; height: 95px">
        </a>

{/foreach}
{/if}