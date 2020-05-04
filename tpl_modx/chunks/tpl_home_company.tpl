

{set $rows = json_decode($_pls['tv.ourquality'])}
{if $rows}
    {foreach $rows as $key => $row}
        <div class="col mt-4">
            <div class="media flex-column flex-md-row align-items-md-center">
                <i class="p-2"></i>
                <div class="media-body ml-2">
                    {$row.description}
                </div>
            </div>
        </div>
    {/foreach}
{/if}
