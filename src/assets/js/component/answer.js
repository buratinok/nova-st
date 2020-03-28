const $answer = function () {
    $(document).ready(function () {
        $('.accordion').on('shown.bs.collapse', function () {
            $('.btn-accordion').on('click', function () {
                $(this).find('.arrow-bottom').addClass('rotate');
            });
        });

        $('.accordion').on('hide.bs.collapse', function () {
            $(this).find('.btn-accordion').click(function (e) {
                    $('.arrow-bottom').removeClass('rotate');
                }
            );
        });
    });
};


export default $answer;

