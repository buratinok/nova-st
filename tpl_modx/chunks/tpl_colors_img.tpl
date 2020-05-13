{foreach $colors as $name => $color}
    <h2 class="mb-4">Цвета</h2>
    <ul class="product-color list-unstyled scroll-x d-flex flex-nowrap  justify-content-md-between p-2">
        {foreach $color as $row  index=$index}
            <li class="col-4 col-lg-1"><img class="img-fluid d-block mx-auto" src="{$row["pattern"]}" alt="{$row["name"]}">
                <p class="text-center text-capitalize fonts-size-10">{$row["value"]}</p>
            </li>
        {/foreach}
    </ul>
{/foreach}