<div class="container-fluid container-xl">
    <h1 class="text-md-left d-none d-lg-block">{$id | resource : 'longtitle'}</h1>
    <div class="row flex-column flex-md-row msearch2" id="mse2_mfilter">
        <div class="col col-md-3">
            <div class="catalog-form my-5 py-5 border-bottom border-top">
                <form action="{$id | url}" method="post" id="mse2_filters">
                    <div class="form-row row-cols-2 row-cols-md-1">
                        {$filters}
                    </div>
                </form>
            </div>
        </div>
        <div class="col">
            <div class="row justify-content-between d-lg-none">
                <div class="col-7 ml-3 mb-3 px-1">
                    <h3 class="text-md-left">{$id | resource : 'longtitle'}</h3>
                </div>
                <div class="col px-0">
                    <fieldset>
                        <select class="form-control sorting_cat px-2 select-appearance_none custom-select fonts-size-10">
                            <option class="sort" data-sort="ms|price" value="asc" hidden disabled selected>
                            </option>
                            <option class="sort" data-sort="resource|longtitle" value="asc">Название (А - Я)
                            </option>
                            <option class="sort" data-sort="resource|longtitle" value="desc">Название (Я - А)
                            </option>
                            <option class="sort" data-sort="ms|price" value="asc">Цена (по возрастанию)</option>
                            <option class="sort" data-sort="ms|price" value="desc">Цена (по убыванию)</option>
                        </select>
                    </fieldset>
                </div>
            </div>
            <div class="row justify-content-between d-none d-lg-flex">
                <div class="span3 col-2 align-self-center px-md-1 mb-3">
                    <fieldset>
                        <select name="mse_limit" id="mse2_limit"
                                class="form-control select-appearance_none select_arrow px-3 fonts-size-12">
                            <option value="8" {$limit==8 ? 'selected' : ''}>выводить по 8</option>
                            <option value="16" {$limit==16 ? 'selected' : ''}>выводить по 16</option>
                            <option value="32" {$limit==32 ? 'selected' : ''}>выводить по 32</option>
                            <option value="64" {$limit==64 ? 'selected' : ''}>выводить по 64</option>
                        </select>
                    </fieldset>
                </div>
                <div class="col-2 align-self-center pr-0 mb-3">
                    <h6 class="text-muted float-md-right mb-0">Сортировать:</h6>
                </div>

                <div class="col-2 align-self-center px-md-0 mb-3">
                    <fieldset>
                        <select class="form-control sorting_cat select-appearance_none select_arrow px-3 fonts-size-12">
                            <option class="sort" data-sort="ms|price" value="asc" hidden disabled selected>По цене
                            </option>
                            <option class="sort" data-sort="ms|price" value="asc">Цена (по возрастанию)</option>
                            <option class="sort" data-sort="ms|price" value="desc">Цена (по убыванию)</option>
                        </select>
                    </fieldset>
                </div>
                <div class="col-2 align-self-center px-md-0 mb-3">
                    <fieldset>
                        <select class="form-control sorting_cat select-appearance_none select_arrow px-3 fonts-size-12">
                            <option class="sort" data-sort="resource|pagetitle" value="asc" hidden disabled
                                    selected>По названии
                            </option>
                            <option class="sort" data-sort="resource|pagetitle" value="asc">Название (А - Я)
                            </option>
                            <option class="sort" data-sort="resource|pagetitle" value="desc">Название (Я - А)
                            </option>
                        </select>
                    </fieldset>
                </div>
                <div class="col-2 align-self-center px-md-0 mb-3">
                    <fieldset>
                        <select class="form-control sorting_cat select-appearance_none select_arrow px-3 fonts-size-12">
                            <option class="sort" data-sort="popular|pagetitle" value="asc" hidden disabled selected>
                                По популярности
                            </option>
                            <option class="sort" data-sort="popular|pagetitle" value="asc">Популярный</option>
                            <option class="sort" data-sort="new|pagetitle" value="asc">Новый</option>
                            <option class="sort" data-sort="favorite|pagetitle" value="asc">Особый</option>
                        </select>
                    </fieldset>
                </div>
            </div>
            <div class="row catalog-category__tab">
                <div class="tab-content w-100" id="pills-tabContent">
                    <div class="row row-cols-2 row-cols-sm-3 w-100 no-gutters" id="mse2_results">
                        {$results}
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col pt-4 pagination-arow mse2_pagination">
                    <nav aria-label="Page navigation example">
                        {'page.nav' | placeholder}
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>
