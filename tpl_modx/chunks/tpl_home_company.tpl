

{set $rows = json_decode($_pls['tv.ourquality'])}
{if $rows}
    {foreach $rows as $key => $row}
        <div class="col mt-4">
            <div class="media flex-column flex-md-row">
                <h3 class="{$row["icon-carousel"]}"></h6>
                <div class="media-body ml-2">
                    <h6 class="mb-0">{$row.title}</h6>
                    {$row.description}
                </div>
            </div>
        </div>
    {/foreach}
{/if}
