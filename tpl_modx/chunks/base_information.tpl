
{$_modx->runSnippet('!pdoResources', [
'parents' => $_modx->resource.id,
'depth'=>'0',
'limit'=>'15',
'tpl' => '@FILE chunks/tpl_information.tpl',
'toPlaceholder' => 'resul',
'includeTVs' => 'img_information',
'processTVs' => '1',
'sortby' => '{"introtext":"ASC"}'
])}