import {scrollToBlock} from "../functions/scroll";
// import { arcticmodal_settings } from "../common/modal";
$("a[href^='#']:not([data-modal])").click(function (event) {
    // console.log($(this).attr("href"));
    event.preventDefault();
    if ($(this).attr("href") !== "#") scrollToBlock($(this).attr("href"));
});

$(".header__burger").on("click", () => {
    $(".burger").addClass("active");
    $("body").addClass("scrollOff");
});
$(".burger__closer-wrap").on("click", function () {
    $(".burger").removeClass("active");
    $("body").removeClass("scrollOff");
});
$(document).mouseup(function (e) {
    var div = $(".burger");
    if (!div.is(e.target) && div.has(e.target).length === 0) {
        $(".burger").removeClass("active");
        $("body").removeClass("scrollOff");
    }
});
