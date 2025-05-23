<?

    /**
     * Проверка корректности телефонного номера
     * @param string $phone
     * @return bool
     */
    function phone_is_correct(string $phone): bool
    {
        return ((strlen($phone) >= 10) && (strlen($phone) <= 12) && ($phone[1] != "8") && (
                count(array_unique(str_split(preg_replace("/[^0-9]/", "", $phone)))) > 3
            ));
    }

    /**
     * Возвращает число в виде строки без десятичных знаков и с пробелом перед тысячей/миллионом
     * @param float $number
     * @return string
     */
    function int_format(float $number): string
    {
        $true_int = round($number);
        return number_format($true_int, 0, ",", " ");
    }

    /**
     * Возвращает число в виде строки с 2мя десятичными знаками и с пробелом перед тысячей/миллионом
     * @param float|null $float $float
     * @param bool $trim_zeroes
     * @param int $decimals
     * @param string $thousands_separator
     * @return string
     */
    function float_format(?float $float, bool $trim_zeroes = false, int $decimals = 2, string $thousands_separator = " "): string
    {
        if ($float) {
            $float_format = number_format($float, $decimals, ",", $thousands_separator);
            if ($trim_zeroes) {
                $float_format = rtrim(rtrim($float_format, "0"), ",");
            }
        } else {
            $float_format = "0";
        }
        return $float_format;
    }

    /**
     * Возвращает число в виде строки со знаком рубля, с 2мя десятичными знаками и с пробелом перед тысячей/миллионом
     * @param float|null $float $float
     * @param bool $trim_zeroes
     * @return string
     */
    function currency_format(?float $float, bool $trim_zeroes = true): string
    {
        return float_format($float, $trim_zeroes) . " ₽";
    }

    /**
     * Получаем цифры из строки
     * @param string $string
     * @return string
     */
    function numbers_from_str(string $string): string
    {
        return preg_replace("/[^0-9]/", "", $string);
    }

    /**
     * Нормализация номера телефона
     * @param string $phone_in
     * @param bool $is_first_8
     * @return string
     */
    function normalize_phone(string $phone_in, bool $is_first_8 = false): string
    {
        $prefix = 7;
        if ($is_first_8) {
            $prefix = 8;
        }

        $phone = numbers_from_str($phone_in);
        if (strlen($phone) >= 6) {
            if ((strlen($phone) == 11) && (substr($phone, 0, 1) == "8")) {
                $phone = $prefix . substr($phone, 1);
            } elseif (strlen($phone) == 10) {
                $phone = $prefix . $phone;
            }
        } else {
            $phone = "";
        }
        return $phone;
    }

    /**
     * Строка телефона в корректном формате
     * @param string $phone_in
     * @return string
     */
    function format_phone(string $phone_in): string
    {
        $phone = normalize_phone($phone_in);
        $prefix = "+7";
        $code = substr($phone, 1, 3);
        $part1 = substr($phone, 4, 3);
        $part2 = substr($phone, 7, 2);
        $part3 = substr($phone, 9, 2);

        return "{$prefix}({$code}){$part1}-{$part2}-{$part3}";
    }

    /**
     * Получаем ip адрес
     * @return mixed|string
     */
    function get_user_ip()
    {
        if (array_key_exists("HTTP_X_FORWARDED_FOR", $_SERVER) && !empty($_SERVER["HTTP_X_FORWARDED_FOR"])) {
            if (strpos($_SERVER["HTTP_X_FORWARDED_FOR"], ",") > 0) {
                $addr = explode(",", $_SERVER["HTTP_X_FORWARDED_FOR"]);
                return trim($addr[0]);
            } else {
                return $_SERVER["HTTP_X_FORWARDED_FOR"];
            }
        } else {
            return $_SERVER["REMOTE_ADDR"];
        }
    }

    /**
     * @param string|null $text_in
     * @return string
     */
    function strip_seo(?string $text_in): string
    {
        if ($text_in) {
            $text = strip_tags($text_in);
            $text = str_replace("&nbsp;", " ", $text);
            $text = preg_replace('/"([^"]+)"/siu', "«$1»", $text);
            $text = str_replace('"', "", $text);
            $text = preg_replace("/\s+/siu", " ", $text);
            $text = trim($text);
        } else {
            $text = "";
        }
        return $text;
    }

    /**
     * Возвращает путь к webp изображения
     * @param string $img_path
     * @return string
     */
    function imgpath_to_webp(string $img_path): string
    {
        return preg_replace("/\.(jpe?g|png)$/", ".webp", $img_path);
    }
