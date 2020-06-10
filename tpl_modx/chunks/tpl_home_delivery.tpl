
{set $rows = json_decode($_pls['tv.delivery'])}
{if $rows}
    {foreach $rows as $key => $row}
        <div class="col mt-4 px-0">
            <div class="media flex-column flex-md-row align-items-md-start">
                <h4 class="p-0 {$row["icon-carousel"]}"></h4>
                <div class="media-body ml-2">
                    {$row.description}
                </div>
            </div>
        </div>
    {/foreach}
{/if}
