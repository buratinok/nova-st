<section class="section-our-qualiti py-5">
    <div class="container-fluid container-xl">
        <div class="row">

            <div class="card mb-3 border-0">
                <div class="row no-gutters">
                    <div class="col-md-6">
                        <div class="card-body">
                            <h1 class="card-title mb-4">{$_modx->resource.pagetitle}</h1>
                            <p class="card-text">{$_modx->resource.content}</p>
                        </div>
                    </div>

                    <div class="col-12 col-md-6 px-3 px-md-0">
                        <img src="{$_modx->resource.imgquality}" class="img-fluid" alt="img quality"  title="img quality">
                    </div>
                </div>
            </div>
        </div>
        {set $rows = json_decode($_modx->resource.ourquality)}
            {if $rows}
        <div class="row">
            <div class="card-columns card-columns_2">
                {foreach $rows as $key => $row}
                <div class="card border-0 w-100">
                    <div class="card-body py-1 py-md-3">
                        <div class=" d-flex text-center text-sm-left indicators">
                            <i class="{$row.icon} mr-2 "></i>
                            <h5 class="card-title mb-0 pt-2 ">
                                {$row.title}
                            </h5>
                        </div>
                        <p class="card-text">{$row.description}</p>
                    </div>
                </div>
                {/foreach}
            </div>
        </div>
        {/if}
        <p class="note">{$_modx->resource.description}</p>
    </div>
</section>
