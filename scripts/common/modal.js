import {arcticmodal_settings, openModal} from "../functions/modal";
import {$body} from "../functions/variables";

$(document).ready(function () {
    window.alert = function (content) {
        $(".intopModal-alert .alert__content").html(content).parents(".intopModal-alert").arcticmodal(arcticmodal_settings);
    }
    $(window).resize(function () {
        arcticmodal_settings.beforeOpen(null, ".intopModal:visible");
    });

    $body.on("click", "[data-modal]", function (event) {
        event.preventDefault();
        openModal($(this).data("modal"), arcticmodal_settings);
    });
});