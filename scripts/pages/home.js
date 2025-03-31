import { arcticmodal_settings } from "../functions/modal";

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
});