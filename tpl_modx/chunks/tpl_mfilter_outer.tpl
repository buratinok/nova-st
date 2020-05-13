<div class="msearch2" id="mse2_mfilter">
    <div class="catalog-form my-5 py-5 border-bottom border-top">
        <div class="container-fluid container-lg">
            <div class="row">
                <div class="col">
                    <form action="{$id | url}" method="post" id="mse2_filters">
                        <div class="form-row row-cols-2 row-cols-md-5">
                        {$filters}
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid container-lg">
         <div class="row justify-content-between d-md-none">
            <div class="col-7 mb-3 px-1">
             <h3 class="text-md-left">{$id | resource : 'pagetitle'}</h3>
            </div>
            <div class="col px-0">
                 <fieldset>
                 <select class="form-control sorting_cat px-2 select-appearance_none custom-select fonts-size-10">
                     <option class="sort" data-sort="ms|price" value="asc" hidden disabled selected>
                     </option>
                      <option class="sort" data-sort="resource|pagetitle" value="asc">Название (А - Я)</option>
  		              <option class="sort" data-sort="resource|pagetitle" value="desc">Название (Я - А)</option>
          	    	  <option class="sort" data-sort="ms|price" value="asc">Цена (по возрастанию)</option>
          	    	  <option class="sort" data-sort="ms|price" value="desc">Цена (по убыванию)</option>        
          	      </select>
          	    </fieldset>
            </div>
         </div>
        <div class="row justify-content-between d-none d-md-flex">
            <div class="col-auto mb-3">
             <h3 class="text-md-left">{$id | resource : 'pagetitle'}</h3>
            </div>
            <div class="col-4 align-self-center pr-0 mb-3">
                <h5 class="text-muted float-md-right">Сортировать:</h6>
            </div>
            <div class="col-1 align-self-start px-md-0 mb-3">
                <fieldset>
                 <select class="form-control sorting_cat px-2 fonts-size-14">
                    <option class="sort" data-sort="ms|price" value="asc" hidden disabled selected>По цене</option>
          	    	<option class="sort" data-sort="ms|price" value="asc">Цена (по возрастанию)</option>
          	    	<option class="sort" data-sort="ms|price" value="desc">Цена (по убыванию)</option>        
          	      </select>
          	    </fieldset>  
  	        </div>
            <div class="col-auto px-md-0 mb-3">
               <fieldset>
                   <select class="form-control sorting_cat px-2 fonts-size-14">
                       <option class="sort" data-sort="resource|pagetitle" value="asc" hidden disabled selected>По названии</option>
                       <option class="sort" data-sort="resource|pagetitle" value="asc">Название (А - Я)</option>
  		               <option class="sort" data-sort="resource|pagetitle" value="desc">Название (Я - А)</option>
                   </select>
                 </fieldset>   
            </div>
            <div class="col-auto px-md-0 mb-3">
               <fieldset>
                   <select class="form-control sorting_cat px-2 fonts-size-14">
                       <option class="sort" data-sort="popular|pagetitle" value="asc" hidden disabled selected>По популярности</option>
                       <option class="sort" data-sort="popular|pagetitle" value="asc">Популярный</option>
  		               <option class="sort" data-sort="new|pagetitle" value="asc">Новый</option>
  		               <option class="sort" data-sort="favorite|pagetitle" value="asc">Особый</option>
                   </select>
                 </fieldset>   
            </div>
  	  </div>
    </div>
    <div class="catalog-category__tab container-lg" >
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
