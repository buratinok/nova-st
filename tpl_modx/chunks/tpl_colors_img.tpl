{foreach $colors as $name => $color}
    <h2 class="mb-4">Цвета</h2>
    <ul class="product-color list-unstyled scroll-x d-flex flex-nowrap flex-md-wrap justify-content-md-center">
        {foreach $color as $row  index=$index}
            <li><img class="d-block mx-auto" src="{$row["pattern"]}" alt="{$row["name"]}"></li>
        {/foreach}
    </ul>
{/foreach}