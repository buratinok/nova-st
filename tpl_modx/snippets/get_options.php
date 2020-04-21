<?php
/** @var modX $modx */
/** @var array $scriptProperties */


$product = !empty($product) && $product != $modx->resource->id
    ? $modx->getObject('msProduct', array('id' => $product))
    : $modx->resource;
if (!($product instanceof msProduct)) {
    return "[msProductOptions] The resource with id = {$product->id} is not instance of msProduct.";
}

/** @var msProductData $data */
if ($data = $product->getOne('Data')) {
    $optionKeys = $data->getOptionKeys();
}
if (empty($optionKeys)) {
    return '';
}
$productData = $product->loadOptions();

$options = array();
$catoptions = array();

foreach ($optionKeys as $key) {
    // Filter by key
    if (!empty($onlyOptions) && $onlyOptions[0] != '' && !in_array($key, $onlyOptions)) {
        continue;
    } elseif (in_array($key, $ignoreOptions)) {
        continue;
    }
    $option = array();
    foreach ($productData as $dataKey => $dataValue) {
        $dataKey = explode('.', $dataKey);
        if ($dataKey[0] == $key && (count($dataKey) > 1)) {
            $option[$dataKey[1]] = $dataValue;
        }
    }
    $option['value'] = $product->get($key);

    // Filter by groups
    $skip = !empty($groups) && !in_array($option['category'], $groups) && !in_array($option['category_name'], $groups);
    if ($skip || empty($option['value'])) {
        continue;
    }
    $options[$key] = $option;
    $catoptions[] = $option;
}

if ($tpl) {

    /** @var pdoTools $pdoTools */
    $pdoTools = $modx->getService('pdoTools');

    return $pdoTools->getChunk($tpl, array(
        'options' => $options,
    ));
}else{
    echo "<pre>";
    print_r($catoptions);
    echo "<pre>";
}