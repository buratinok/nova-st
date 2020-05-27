
            <div class="col-12 col-sm-6 col-md-4 p-2">
                <div class="card  border-0" >
                    <img src="{if $_pls['tv.img_information']} {$_pls['tv.img_information']} {else} {$_modx->getPlaceholder('+noimage')} {/if}" class="card-img-top border-r0" alt="{$pagetitle | htmlent}" title="{$pagetitle | htmlent}">
                    <div class="card-body pl-0">
                        <h5 class="card-title">{$longtitle}</h5>
                        <p class="news-date">{$publishedon| date_format : "%d.%m.%Y"}</p>
                        <p class="card-text">{$description}</p>
                        <a href="{$modx->makeUrl($id)}" class="btn btn-outline-danger btn-call px-5 py-2">Подробнее</a>
                    </div>
                </div>
            </div>
