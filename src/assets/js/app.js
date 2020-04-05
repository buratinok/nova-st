/**
 * Модули скрипты бандл
 * */

import $iconSvg from "./component/icon-svg";
import $carouselHeader from "./component/carousel";
import $answer from "./component/answer";
import $increaseImages from "./component/gallery";
import $plusMinus from "./component/plus-minus";


$iconSvg();
$carouselHeader();
$answer();
$increaseImages();
$plusMinus();

var $btnColour = document.querySelectorAll('.btn-colour');


$btnColour.forEach(function (e) {

    e.addEventListener('click', function (el) {
        $btnColour.forEach(function (element) {
            element.classList.remove('active');
        })
        this.classList.add('active');
    })
});