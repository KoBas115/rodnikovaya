$.ajaxSetup({cache: false});

$.fn.padding = function (direction) {
    return parseFloat(this.css("padding-" + direction));
};

$("input[type='tel']").mask("+7(999)999-99-99", {placeholder: "+7(___) --- -- --"}).on("click", function () {
    $(this).focus();
});