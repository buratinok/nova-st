

{foreach $data_color as $name => $color}

   {foreach $color as $row  index=$index}
   {$row['value']}
    {/foreach}
{/foreach}

{foreach $options as $name => $color}
<div class="fonts-size-18 mt-2 d-flex flex-column flex-md-row align-items-start align-items-md-center justify-content-between">
    <span>Цвета:</span>
    <span class="float-right mt-3 mt-md-auto">
        <ul class="list-inline mb-0 colours-wrapper-product">
                
            
            
            {foreach $color as $key => $row  index=$index}
           
            <li class="list-inline-item m-0">
                <label for="colour_{$row["name"]}" style="background-color: #{$row['color']}"
                       class="btn-colour border-r50 p-2 ml-2  {$index ? '' : "active"}"> </label>
                <input type="hidden" name="options[{$name}]" value="{$row['value']}">       
                <input type="radio" name="options[{$name}]" value="{$row['color']}" id="colour_{$row["name"]}"
                       {$index ? '' : "checked"}
                       class="inut-invisible">
            </li>

            {/foreach}

        </ul>
    </span>
</div>
 {/foreach}


{*
{foreach $colors as $name => $color}
<div class="fonts-size-18 mt-2 d-flex flex-column flex-md-row align-items-start align-items-md-center justify-content-between">
    <span>Цвета:</span>
    <span class="float-right mt-3 mt-md-auto">
        <ul class="list-inline mb-0 colours-wrapper-product">
                
            
            {foreach $color as $row  index=$index}
            <li class="list-inline-item m-0">
                <label for="colour_{$row["name"]}" style="background-color: #{$row['color']}"
                       class="btn-colour border-r50 p-2 ml-2  {$index ? '' : "active"}"> </label>
                <input type="hidden" name="options[{$name}]" value="{$row['value']}">       
                <input type="radio" name="options[{$name}]" value="{$row['color']}" id="colour_{$row["name"]}"
                       {$index ? '' : "checked"}
                       class="inut-invisible">
            </li>

            {/foreach}

        </ul>
    </span>
</div>
 {/foreach}
 *}