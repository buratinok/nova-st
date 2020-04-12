<div class="msearch2" id="mse2_mfilter">
    <div class="catalog-form my-5 py-5 border-bottom border-top">
        <div class="container-fluid container-lg">
            <div class="row">
                <div class="col">
                    <form action="{$id | url}" method="post" id="mse2_filters">
                        <div class="form-row flex-column flex-md-row">
                        {$filters}
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>
    <div class="catalog-category__tab container-lg">
        <div class="row">
            <div class="tab-content w-100" id="pills-tabContent">
                <div class="row row-cols-2 row-cols-sm-4 w-100 no-gutters" id="mse2_results">
                    {$results}
                </div>

            </div>
        </div>
    </div>
    <div class="col pt-4 pagination-arow mse2_pagination">
        <nav aria-label="Page navigation example">
            {'page.nav' | placeholder}
        </nav>
    </div>

</div>
