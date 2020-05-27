
{$_modx->runSnippet('!pdoResources', [
'parents' => '3',
'depth'=> '0',
'limit'=> '9',
'sortby' => '{"menuindex":"ASC"}',
'tpl' => '@FILE chunks/tpl_catalog.tpl',
'toPlaceholder' => 'result',
'includeTVs' => 'img_information',
'processTVs' => '1'
])}
