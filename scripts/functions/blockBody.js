import { windowWidth } from "./size";

export function blockBody() {
    const bodyPage = $(".page").outerWidth(true);
    const scrollWidth = windowWidth() - bodyPage;
    $("body").addClass("body-hidden").css({
        "padding-right": `${scrollWidth}px`,
        "overflow": "hidden"
    });
    $(".lock-padding").css({"padding-right": `${scrollWidth}px`});
}

export function unblockBody() {
    $("body").removeClass("body-hidden").css({
        "padding-right": "0",
        "overflow": "initial",
        "overflow-x": "hidden"
    });
    $(".lock-padding").css({"padding-right": "0"});
}
