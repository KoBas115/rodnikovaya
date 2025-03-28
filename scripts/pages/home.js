import {crossBrowserObserver} from "../functions/observer";
import {arcticmodal_settings} from "../functions/modal";

// ============ первый блок

const heroSlider = new Swiper(".hero__swiper", {
    slidesPerGroup: 1,
    effect: "creative",
    speed: 1000,
    // loop: true,
    creativeEffect: {
        prev: {
            opacity: 0.1,
            shadow: true,
            translate: ["-20%", 0, -1],
        },
        next: {
            translate: ["100%", 0, 0],
        },
    },
    autoplay: {
        delay: 2500,
        disableOnInteraction: false,
    },
});