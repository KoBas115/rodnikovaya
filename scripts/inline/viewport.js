var
    vpChanged = false,
    weInChange = false;

function setViewport() {
    if (!weInChange) {
        weInChange = true;

        let windowWidth = Math.min($(window).width(), window.screen.width),
            minWidth = 360,
            ratio = windowWidth / minWidth,
            scrollPosition = $(window).scrollTop();

        if (windowWidth < minWidth) {
            $(`[name="viewport"]`).attr("content", `viewport-fit=cover, initial-scale=${ratio}, maximum-scale=${ratio}, minimum-scale=${ratio}, user-scalable=yes, width=${windowWidth}`);
            vpChanged = true;
        } else if (vpChanged) {
            $(`[name="viewport"]`).attr("content", "viewport-fit=cover, width=device-width");
            vpChanged = false;
        }

        $(window).scrollTop(scrollPosition);

        setTimeout(function () {
            weInChange = false;
        }, 500);
    }

    let vh = window.innerHeight * 0.01;
    document.documentElement.style.setProperty("--vh", `${vh}px`);
}

setViewport();

$(window).on("resize", setViewport);
