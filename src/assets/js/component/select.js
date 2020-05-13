


var $select = function () {
    // Сортировка по цене mfilter2
    $(document).ready(function() {
        $(document).on('change', '.sorting_cat', function() {
            var selected = $(this).find('option:selected');
            var sort = selected.data('sort');
            sort += mse2Config.method_delimeter + selected.val();
            mse2Config.sort =  sort;
            mSearch2.submit();
        });
    });
    // Сортировка по цене mfilter2
}

export default $select;