
{set $rows = json_decode($_modx->resource.resourcealbum, true)}
{foreach $rows as $idx => $row}
<div class="col-6 col-md-4 p-1 p-sm-2 image" style="max-height: 270px; overflow: hidden;">
    <div class="item" data-src="{$_modx->runSnippet("!migxResourceMediaPath",[
        'pathTpl'=>'assets/resourceimages/{id}/',
        'createFolder' =>'1'
        ])}{$row.image}">
        
        <img class="img-fluid" src="{$_modx->runSnippet("!migxResourceMediaPath",[
            'pathTpl'=>'assets/resourceimages/{id}/',
            'createFolder' =>'1'
            ])}{$row.image}" alt="{$row.published}" title="{$row.published}">
    </div>
</div>
{/foreach}