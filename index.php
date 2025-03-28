<?
    const ROOT = __DIR__;

    include ROOT . "/php/display-errors.php";
    include ROOT . "/vendor/autoload.php";
    include ROOT . "/php/common.php";

    $page = Page::get_page();
    $referer = new Referer();

    if ($page->code === 404) {
        header($_SERVER["SERVER_PROTOCOL"] . " 404 Not Found");
    }

    //инициализируем шаблонизатор
    $smarty = init_smarty();

    $smarty->assign([
        "page" => $page,
        "phone" => new Phone("+79282601474"),
        "email" => new Email("info@intopweb.ru"),
        "address" => "г. Краснодар, ул. Гаврилова, 12",
        "postal_code" => "350000",
        "inline_scripts" => external_scripts(actual_bundle_path("dist/js", "inline")),
        "vendor_scripts" => external_scripts(actual_bundle_path("dist/js", "vendor")),
        "common_scripts" => external_scripts(actual_bundle_path("dist/js", "common")),
        "vendor_styles" => external_styles(actual_bundle_path("dist/css/prod", "vendor")),
        "common_styles" => styles_by_mode("common")
    ])->display($page->view);