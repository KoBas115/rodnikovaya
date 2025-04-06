import { blockBody, unblockBody } from "../functions/blockBody";


// установить высоту меню в зависимости от различных окон браузеров
setHeightMenu();
$(window).on("resize", function () {
    setHeightMenu();
})
function setHeightMenu() {
    $(".menu").css({ "height": `${$(window).outerHeight()}px` });
}

// открываем/закрываем меню от кликов
$(document).on("click", (e) => {
    if ($(".header-menu").is(e.target)) openMenu();
    else if (!$(".menu__cont").is(e.target) && $(".menu__cont").has(e.target).length === 0 && $(".menu").hasClass("open")) closeMenu()
    else if ($(".menu__closer").is(e.target)) closeMenu()
});

/**
 * Функция открывает меню
 */
function openMenu() {
    $(".menu").addClass("open");
    blockBody();
}

/**
 * Функция закрывает меню
 */
function closeMenu() {
    unblockBody();
    $(".menu").removeClass("open");
}