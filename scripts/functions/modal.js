import {windowHeight, windowWidth} from "./size";

export let arcticmodal_settings = {
    overlay: {
        css: {opacity: .5},
    },
    beforeOpen(data, modal) {
        let modalParent = $(modal).parent();
        let maxHg =
            windowHeight() -
            modalParent.padding("top") -
            modalParent.padding("bottom");
        $(modal).css("max-height", maxHg);

        let bodyPage = $(".page").outerWidth(true);
        let scrollWidth = windowWidth() - bodyPage;

        if (scrollWidth > 0 && bodyPage <= 1920) {
            $(".lock-padding").css({"padding-right": scrollWidth});
        }
    },
    afterClose(data, modal) {
        $(".lock-padding").css({"padding-right": 0});
        $(".intopModal__content input").removeClass("input-error");
    }
};

/**
 * Функция открывает попап СПАСИБО
 */
export function openModalThanks() {
    let $modal = $(".intopModal-thanks");
    if ($modal.length > 0) {
        if ($(".page__body").hasClass("arcticmodal-wrap-active")) {
            $(".arcticmodal-container .intopModal").arcticmodal("close");
            setTimeout(() => {
                $modal.arcticmodal(arcticmodal_settings);
            }, 100);
        } else {
            $modal.arcticmodal(arcticmodal_settings);
        }
    }
}

export function openModal(eng, arcticmodal_setting_modal) {
    let $modal = $(".intopModal-" + eng);
    if ($modal.length > 0) {
        if ($(".page__body").hasClass("arcticmodal-wrap-active")) {
            $(".arcticmodal-container .intopModal").arcticmodal("close");
            setTimeout(() => {
                $modal.arcticmodal(arcticmodal_setting_modal);
            }, 100);
        } else {
            $modal.arcticmodal(arcticmodal_setting_modal);
        }
    }
}