<?

    const ROOT = __DIR__ . "/..";

    include ROOT . "/php/display-errors.php";
    include ROOT . "/vendor/autoload.php";
    include ROOT . "/php/common.php";
    const EMAILFROM = "";

    $result = ["default" => "true"];

    if (!empty($_POST["phone"]) && !empty($_POST["key"]) && ($_POST["key"] == get_secret_key())) {
        $phone = normalize_phone($_POST["phone"]);
        if (!phone_is_correct($phone)) {
            $result = ["error" => "Данный номер телефона $phone нельзя оставить в качестве контакта. Введите номер сотового телефона или позвоните нам."];
        } else {
            $referer = new Referer();
            $smarty = init_smarty();
            $emails = [""];
            $ip = get_user_ip();

            // =============================== Отправка письма
            $data = array_merge($_POST, [
                "sitename" => SITENAME,
                "ip" => $ip
            ]);
            $smarty->assign(["data" => $data, "referer" => $referer]);
            $message = $smarty->fetch("letters/request.tpl");
            $sub = "Перезвонить. " . (!empty($_POST["name"]) ? ($_POST["name"] . ", ") : " ") . $_POST["phone"] . " (заявка с сайта " . SITENAME . ")";
            $headers = "From: =?utf-8?B?" . base64_encode(SITENAME) . "?= <" . EMAILFROM . ">\n" . "Content-type: text/html; charset=utf-8\r\n";

            foreach ($emails as $email_to) {
                mail($email_to, $sub, $message, $headers);
            }

            // =============================== Отправка заявки в AmoCRM
            $title = "Перезвонить, " . (!empty($_POST["name"]) ? ($_POST["name"] . ", ") : " ") . $_POST["phone"];
            $comment = $_POST["from"];
            if (!empty($_POST["comment"])) {
                $comment .= "\n\n" . $_POST["comment"];
            }
            $roistat = array_key_exists("roistat_visit", $_COOKIE) ? $_COOKIE["roistat_visit"] : "";
            $metrika_id = array_key_exists("_ym_uid", $_COOKIE) ? $_COOKIE["_ym_uid"] : "";
            $need_sms = true;
            if (!empty($_POST["sms"]) && ($_POST["sms"] == "no")) {
                $need_sms = false;
            }

            $roistat_data = [
                "roistat" => $roistat,
                "key" => "ZDRiYTlhYjBlZGI2NzZjMjM2MDE2ZWZmMGRhM2U4YWE6MjI0NDkw", // Ключ для интеграции с CRM, указывается в настройках интеграции с CRM.
                "title" => $title, // Название сделки
                "comment" => $comment,
                "name" => "{$_POST["name"]} (" . SITENAME . ")", // Имя клиента
                "phone" => $_POST["phone"], // Номер телефона клиента
                "sync" => $need_sms ? "1" : "0", //
                "fields" => [
                    "status_id" => 14217535,

                    "2095195" => $roistat,
                    "2095183" => $referer->utm_original->utm_campaign,
                    "2095179" => $referer->utm_original->utm_source,
                    "2095185" => $referer->utm_original->utm_term,
                    "2095181" => $referer->utm_original->utm_medium,
                    "2095187" => $referer->utm_original->utm_content,
                    "2095191" => $metrika_id,
                    "2095193" => 94739064,

                    "1939227" => $roistat,
                    "1952091" => $referer->utm_original->utm_campaign,
                    "1952087" => $referer->utm_original->utm_source,
                    "1952095" => $referer->utm_original->utm_term,
                    "1952089" => $referer->utm_original->utm_medium,
                    "1952085" => SITENAME,
                    "tags" => "ИнТоп"
                ]
            ];

            //die(json_encode($roistat_data, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES));

            $query_data = http_build_query($roistat_data);
            $ch = curl_init();
            curl_setopt_array($ch, [
                CURLOPT_URL => "https://cloud.roistat.com/api/proxy/1.0/leads/add?" . $query_data,
                CURLOPT_POST => false,
                CURLOPT_FRESH_CONNECT => true,
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_FORBID_REUSE => true,
                CURLOPT_SSL_VERIFYPEER => false,
                CURLOPT_SSL_VERIFYHOST => false
            ]);
            $roistat_response = json_decode(curl_exec($ch), true);
            curl_close($ch);
        }
    } else {
        $result = ["error" => "Не указан номер телефона"];
    }

    echo json_encode($result, JSON_UNESCAPED_UNICODE);
