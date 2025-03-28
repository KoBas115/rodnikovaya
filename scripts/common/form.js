import {arcticmodal_settings} from "../functions/modal";
import {$body} from "../functions/variables";
import {localStorageOnePerDay} from "../functions/storage";

function openModalThanks(phone, msg) {
    msg = msg || `Заявка отправлена.<br><br>Наш менеджер свяжется с Вами очень скоро.<br><br>Убедитесь, что указали верный номер ${phone}`;
    $.arcticmodal("close");
    alert(msg);
}

$body.on("click", ".js-request", function () {
    $(".modal__request-title").text($(this).data("h")?.trim() || "Отправить заявку");
    $(".request__input-from").val($(this).data("from")?.trim() || `Кнопка: ${$(this).text()?.trim()}`);
    $(".request__submit").find(".btn__text").text($(this).data("btn")?.trim() || "Отправить заявку");
    var modalReq = $(this).data("modal-type") ? $(this).data("modal-type") : "request";

    if ($(this).data("out-container")) {
        let comment = '';
        let $additionalInputs = $("." + $(this).data("out-container")).find(".js-input-additional");

        $additionalInputs.each(function () {
            let label = $(this).data("label");
            let val = $(this).val();
            comment += label + ': ' + val + '; ';
        });

        $(".request__input-comment").val(comment);
    }

    $(".intopModal-" + modalReq).arcticmodal(arcticmodal_settings);
});


$(".request__form").submit(function (event) {
    event.preventDefault();

    var
        $form = $(this),
        $modal = $(this).parents(".section, .intopModal"),
        comment = $form.find(".request__input-comment").val();

    let data = {
        key: ajaxKey,
        name: $form.find(".request__input-name").val() ? $form.find(".request__input-name").val().trim() : "Нет данных",
        phone: $form.find(".request__input-phone").val().replace(/\D/g, ""),
        from: $(".request__input-from").val(),
        comment: comment
    }
    console.log(name);

    if ($(".request__checkbox").prop("checked")) {
        if (data.phone) {
            $modal.find(".request-loader").show();

            $.ajax({
                type: "POST",
                url: "/php/callme.php",
                data: data,
                dataType: "json",
                success: function (result) {
                    if (result["error"]) {
                        alert(result["error"]);
                    } else {
                        // обнуляем форму
                        $form[0].reset();
                        // открываем попап СПАСИБО
                        openModalThanks(data.phone);
                    }
                },
                complete: function () {
                    //if (window.ym) {
                    //    localStorageOnePerDay("request_sent", function () {
                    //        ym(777777, "reachGoal", "REQUEST_SENT")
                    //    });
                    //}
                    $modal.find(".request-loader").hide();
                }
            });
        } else {
            alert("Пожалуйста, укажите Ваш номер телефона, чтобы мы смогли позвонить Вам!");
        }
    } else {
        alert("Пожалуйста, дайте согласие на обработку ваших персональных данных.");
    }
});

$(".request__link-privacy").click(function (event) {
    event.preventDefault();
});
