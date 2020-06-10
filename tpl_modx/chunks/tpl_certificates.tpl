{set $rows = json_decode($_pls["tv.resourcealbum"])}

{if $rows}
{foreach $rows as $key => $row}

<div class="col mt-2 mt-md-0">
    <div class="card border-0 border-r0 item" data-src="assets/resourceimages/{$id}/{$row.image}">
        <img class="img-fluid" src="assets/resourceimages/{$id}/{$row.image}" alt="certificat" title="certificat">
       
    </div>
</div>

{/foreach}
{/if}
