
{foreach $colors as $name => $color}

            <li class="fonts-size-14 mt-2"><span>Цвет</span><span class="float-right">
            <ul class="list-inline mb-0 colours-wrapper">

            {foreach $color as $row  index=$index}
                   {set $all='all'} 
                        {if $row["name"] != $all}
                             <li class="list-inline-item m-0">
                            <label for="colour_{$row["name"]}" style="background-color: #{$row['color']}" class="btn-colour border-r50 p-2"> </label>
                        </li>
                            {else}
                             <li class="list-inline-item m-0">
                            <label for="colour_{$row["name"]}" style="background: radial-gradient(circle, rgba(255,4,0,1) 0%, rgba(254,255,0,1) 14%, rgba(0,255,37,1) 28%, rgba(70,86,252,1) 49%, rgba(222,70,252,1) 67%, rgba(252,219,70,1) 93%);"
                            class="btn-colour border-r50 p-2"> </label>
                        </li>
                             {/if}
            {/foreach}
            </ul>
            </span>
            </li>


 {/foreach}