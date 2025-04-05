import { arcticmodal_settings } from "../functions/modal";

function setVH() {
    let vh = window.innerHeight * 0.01;
    document.documentElement.style.setProperty('--vh', `${vh}px`);
}
setVH();
window.addEventListener('resize', setVH);

/* --------------------- Блок Hero ------------------------------------  */

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

function updateFraction(slider) {
    const { params, activeIndex } = slider;

    slider.$el
        .find(`.${params.pagination.currentClass}`)
        .text(`${activeIndex + 1} - ${activeIndex + params.slidesPerView}`);

    slider.$el
        .find(`.${params.pagination.totalClass}`)
        .text(slider.slides.length)
}