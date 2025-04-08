import { arcticmodal_settings } from "../functions/modal";


/* --------------------- Header ------------------------------------  */

$(document).scroll(function (e) {
    e.preventDefault();
    // if ($(".header__search-wrap").hasClass("visible")) unvisibleSearch();

    if ($(this).scrollTop() > 0 & !$(".header__fixed").hasClass("header__white")) {
        $(".header__fixed").addClass("header__white");
        $(".header__btn").removeClass("btn-white-trans-blue-blue").addClass("btn-gold-gold-blue-blue");
    } else if ($(this).scrollTop() == 0 & $(".header__fixed").hasClass("header__white")) {
        $(".header__fixed").removeClass("header__white");
        $(".header__btn").removeClass("btn-gold-gold-blue-blue").addClass("btn-white-trans-blue-blue");
    }
});

/* --------------------- Блок Hero ------------------------------------  */

/**
 * Функция вычитает из vh высоту браузера в мобильной версии. Для старых браузеров,
 * которые не воспринимают dvh.
 * css: 
 * height: 100vh; - Fallback 
 * height: calc(var(--vh, 1vh) * 100); - JS
 * height: 100dvh; - Современный способ
 */
function setVH() {
    let vh = window.innerHeight * 0.01;
    document.documentElement.style.setProperty('--vh', `${vh}px`);
}
setVH();
window.addEventListener('resize', setVH);

const heroSlider = new Swiper(".hero-slider .swiper", {
    roundLengths: true,
    watchOverflow: true,
    slidesPerView: 1,
    slidesPerGroup: 1,
    speed: 1200,
    loop: true,
    loopedSlides: 3,
    spaceBetween: 0,
    autoplay: {
        delay: 5000,
    },
    pagination: {
        el: ".hero__content .slider-pagination",
        clickable: true,
    }
});

/* --------------------- Блок About ------------------------------------  */

const aboutSlider = new Swiper(".about-slider .swiper", {
    roundLengths: true,
    watchOverflow: true,
    slidesPerView: 1,
    slidesPerGroup: 1,
    speed: 1200,
    loop: true,
    loopedSlides: 3,
    spaceBetween: 0,
    navigation: {
        nextEl: ".about-slider .slider-btn__next",
        prevEl: ".about-slider .slider-btn__prev",
    },
    pagination: {
        el: '.about-slider .swiper-pagination',
        type: 'fraction',
        clickable: true,
        renderFraction: (currentClass, totalClass) => `
        <span class="slider-cnt-big">0</span>
        <span class="${currentClass} slider-cnt-big"></span>
        <span class="slider-cnt-big">/</span>
        <span class="slider-cnt-small">0</span>
        <span class="${totalClass} slider-cnt-small"></span>`,
    },
});

/**
 * Функция счётчика слайдера about.
 */
function updateFraction(slider) {
    const { params, activeIndex } = slider;
    slider.$el
        .find(`.${params.pagination.currentClass}`)
        .text(`${activeIndex + 1} - ${activeIndex + params.slidesPerView}`);

    slider.$el
        .find(`.${params.pagination.totalClass}`)
        .text(slider.slides.length)
}

/* --------------------- Блок entrance ------------------------------------  */

const entranceSlider = new Swiper(".entrance-slider .swiper", {
    roundLengths: true,
    watchOverflow: true,
    slidesPerView: 'auto',
    slidesPerGroup: 1,
    speed: 1200,
    spaceBetween: 12,
    navigation: {
        nextEl: ".entrance-slider .slider-btn__next",
        prevEl: ".entrance-slider .slider-btn__prev",
    }
});