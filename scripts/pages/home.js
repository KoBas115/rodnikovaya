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