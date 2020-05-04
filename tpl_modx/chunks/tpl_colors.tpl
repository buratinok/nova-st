{set $mod = $_modx->runSnippet("!msOptionsPrice.modification", [
                                        'onlyOptions' => $_modx->resource.parent | resource: 'options',
                                        "select" => "id,price",
                                        'product' => $id,
                                        'return' => 'data'
                                         ])}
                                         
        
{set $col = $_modx->runSnippet("!msOptionsColor",[
                                                "options" => "color",
                                                "return" => "data"
                                            ])} 

 <div class="fonts-size-18 mt-2 d-flex flex-column flex-md-row align-items-start align-items-md-center justify-content-between">
    <span>Цвет:</span>
    <span class="float-right mt-3 mt-md-auto">
        <ul class="list-inline mb-0 colours-wrapper-product">
              <li class="list-inline-item m-0">
{foreach $mod as $name => $modf}
{*<pre>
                {$modf | var_dump}
           </pre>    *}
                
   
         <input type="hidden" name="options[{$modf['options']['color']}]" value="{$modf['price']}">
    
{/foreach}  
{foreach $col as $name => $color}


              {foreach $color as $key => $row  index=$index}
                <label for="colour_{$row["name"]}" style="background-color: #{$row['color']}"
                       class="btn-colour border-r50 p-2 ml-2  {$index ? '' : "active"}"> </label>
                <input type="hidden" name="options[{$name}]" value="{$row['value']}">       
                <input type="radio" name="options[{$name}]" value="{$row['color']}" id="colour_{$row["name"]}"
                       {$index ? 'checked' : ""}
                       class="inut-invisible">
            

            {/foreach}
          {/foreach}   
   </li>
        </ul>
    </span>
</div>
 
        