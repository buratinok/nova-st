

{$_modx->runSnippet("!getImageList", [
'tvname' => 'resourcealbum',
'tpl' => '@CODE: <div class="col-6 col-md-4 p-1 p-sm-2 image" style="max-height: 202px; overflow: hidden;">
    <div class="item" data-src="[[+image]]">
        <img class="mx-auto d-block img-fluid" src="[[+image]]" alt="[[+published]]">
    </div>
</div>'
])}

