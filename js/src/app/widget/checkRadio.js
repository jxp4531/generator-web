define(['jquery','icheck'], function ($) {

    $('input[type="checkbox"],input[type="radio"]').iCheck({
        checkboxClass: 'icheckbox',
        radioClass: 'iradio'
    });
    return $;
});