

var $address= function () {
    $(document).ready(function () {
        $("#city").suggestions({
            token: "6ef53e52f9d8f1d6a783221caddb1ae7deeccbb0",
            type: "FIAS",
            count: 5,
            /* Вызывается, когда пользователь выбирает одну из подсказок */
            onSelect: function (suggestions) {
                $("#city").val(suggestions["unrestricted_value"]);
            }
        });
    });
}

export default $address;