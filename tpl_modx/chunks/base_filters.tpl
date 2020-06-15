{$_modx->runSnippet('!mFilter2', [
'element' => 'msProducts',
'class' => 'msProduct',
'paginator'=>'pdoPage'
'showEmptyFilters' => false,
'sortby' => '{"menuindex":"ASC"}',
'limit' => 8,
'pageLimit' => 7,
'tplOuter' => '@FILE chunks/tpl_mfilter_outer.tpl',
'tplPageWrapper' => '@INLINE <ul class="pagination justify-content-center align-items-center">{$prev}{$pages}{$next}</ul>',
'tplPageActive' => '@INLINE <li class="page-item"><a class="page-link active" href="{$href}">{$pageNo}</a></li>',
'tplPage' => '@INLINE <li class="page-item"><a class="page-link" href="{$href}">{$pageNo}</a></li>',
'tplPagePrev' => '@INLINE <a href="{$href}"><div class="control-swiper__prev btn btn-outline-dark p-4 position-relative mr-3" href="{$href}"><i class="arrow position-absolute center-block"><svg width="12" height="8" viewBox="0 0 12 8" xmlns="http://www.w3.org/2000/svg">
<path d="M0.646446 3.64645C0.451184 3.84171 0.451184 4.15829 0.646446 4.35355L3.82843 7.53553C4.02369 7.7308 4.34027 7.7308 4.53553 7.53553C4.7308 7.34027 4.7308 7.02369 4.53553 6.82843L1.70711 4L4.53553 1.17157C4.7308 0.976311 4.7308 0.659729 4.53553 0.464467C4.34027 0.269205 4.02369 0.269205 3.82843 0.464467L0.646446 3.64645ZM12 3.5L1 3.5L1 4.5L12 4.5L12 3.5Z" fill="inherit" stroke="inherit"></path>
</svg></i></div></a>',
'tplPageNext' => '@INLINE <a href="{$href}"><div class="control-swiper__next btn btn-outline-dark p-4 position-relative ml-3" href="{$href}"><i class="arrow position-absolute center-block"><svg width="12" height="8" viewBox="0 0 12 8" xmlns="http://www.w3.org/2000/svg">
<path d="M0.646446 3.64645C0.451184 3.84171 0.451184 4.15829 0.646446 4.35355L3.82843 7.53553C4.02369 7.7308 4.34027 7.7308 4.53553 7.53553C4.7308 7.34027 4.7308 7.02369 4.53553 6.82843L1.70711 4L4.53553 1.17157C4.7308 0.976311 4.7308 0.659729 4.53553 0.464467C4.34027 0.269205 4.02369 0.269205 3.82843 0.464467L0.646446 3.64645ZM12 3.5L1 3.5L1 4.5L12 4.5L12 3.5Z" fill="inherit" stroke="inherit"></path>
</svg></i></div></a>',
'tplPageSkip'=> '@INLINE <li class="disabled"><span>...</span></li>',
'tplPagePrevEmpty' => '@INLINE <a href="{$href}"><div class="control-swiper__prev btn btn-outline-dark p-4 position-relative mr-3" href="{$href}"><i class="arrow position-absolute center-block"><svg width="12" height="8" viewBox="0 0 12 8" xmlns="http://www.w3.org/2000/svg">
<path d="M0.646446 3.64645C0.451184 3.84171 0.451184 4.15829 0.646446 4.35355L3.82843 7.53553C4.02369 7.7308 4.34027 7.7308 4.53553 7.53553C4.7308 7.34027 4.7308 7.02369 4.53553 6.82843L1.70711 4L4.53553 1.17157C4.7308 0.976311 4.7308 0.659729 4.53553 0.464467C4.34027 0.269205 4.02369 0.269205 3.82843 0.464467L0.646446 3.64645ZM12 3.5L1 3.5L1 4.5L12 4.5L12 3.5Z" fill="inherit" stroke="inherit"></path>
</svg></i></div></a>',
'tplPageNextEmpty' => '@INLINE <a href="{$href}"><div class="control-swiper__next btn btn-outline-dark p-4 position-relative ml-3" href="{$href}"><i class="arrow position-absolute center-block"><svg width="12" height="8" viewBox="0 0 12 8" xmlns="http://www.w3.org/2000/svg">
<path d="M0.646446 3.64645C0.451184 3.84171 0.451184 4.15829 0.646446 4.35355L3.82843 7.53553C4.02369 7.7308 4.34027 7.7308 4.53553 7.53553C4.7308 7.34027 4.7308 7.02369 4.53553 6.82843L1.70711 4L4.53553 1.17157C4.7308 0.976311 4.7308 0.659729 4.53553 0.464467C4.34027 0.269205 4.02369 0.269205 3.82843 0.464467L0.646446 3.64645ZM12 3.5L1 3.5L1 4.5L12 4.5L12 3.5Z" fill="inherit" stroke="inherit"></path>
</svg></i></div></a>',
'filters' => '{*ms|price:number*},
            ms|vendor:vendors,
            msoption|goals:default,
            msoption|thickness:default,
            msoption|appointment:default,
            msoption|modeproduction:modeproduction,
            msoption|shape:default,
            msoption|length:length',
'aliases' => '{*ms|price==price*},
            ms|vendor==vendor,
            msoption|goals==goals,
            msoption|thickness==thickness,
            msoption|appointment==appointment,
            msoption|modeproduction==modeproduction,
            msoption|shape==shape,
            msoption|length==length',
'ajaxMode' => 'default',
'filterOptions' => '{
			"more_tpl": "<div class=\"text-center\"><button class=\"btn btn-blue btn-rounded btn_more\">Загрузить еще</button></div>"
			}',
'tpls' => '@FILE chunks/tpl_product.tpl',
'tplFilter.outer.default' => '@FILE chunks/tpl_filter_outer.tpl',
'tplFilter.row.default' => '@FILE chunks/tpl_filter_row.tpl',
'tplFilter.outer.price' => '@FILE chunks/tpl_filter_outer_price.tpl',
'tplFilter.row.price' => '@FILE chunks/tpl_filter_row_price.tpl'
'tplFilter.outer.length' => '@FILE chunks/tpl_filter_outer_check.tpl'
'tplFilter.row.length' => '@FILE chunks/tpl_filter_row_check.tpl'
'tplFilter.outer.modeproduction' => '@FILE chunks/tpl_filter_outer_check.tpl'
'tplFilter.row.modeproduction' => '@FILE chunks/tpl_filter_row_check.tpl'
])}