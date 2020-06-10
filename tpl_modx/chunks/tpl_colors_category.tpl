
{foreach $colors as $name => $color}

            <li class="fonts-size-14 mt-2"><span>Цвет</span><span class="float-right">
            <ul class="list-inline mb-0 colours-wrapper">

            {foreach $color as $row  index=$index}
                        <li class="list-inline-item m-0">
                            <label for="colour_{$row["name"]}" style="background-color: #{$row['color']}" class="btn-colour border-r50 p-2"> </label>
                        </li>
            {/foreach}
            </ul>
            </span>
            </li>


 {/foreach}