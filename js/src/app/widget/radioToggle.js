define(['jquery'], function ($) {

    var ns = '.my.radioToggle';

    function RadioToggle(element) {
        this.$element = $(element);
    }

    RadioToggle.prototype = {
        toggle: function (current) {
            var $current = $(current),
                $element = this.$element,
                $active = $element.find('.active');

            if ($current.hasClass('active')) return;

            if ($active) {
                $active.removeClass('active');
            }
            $current.addClass('active');

            $element.trigger($.Event('toggle' + ns, {
                relatedTarget: $current[0]
            }));
        },
        getActive: function () {
            return this.$element.find('.active');
        },
        destroy: function () {
            this.$element = null;
        }
    };

// RADIOTOGGLE PLUGIN DEFINITION
// ==========================

    function Plugin() {
        return this.each(function () {
            var $this = $(this),
                name = ns.substring(1),
                data = $this.data(name);

            if (!data) $this.data(name, new RadioToggle(this));
        });
    }

    $.fn.radioToggle = Plugin;
    $.fn.radioToggle.Constructor = RadioToggle;

    function clickHandler(e) {
        var $this = $(this),
            $target = $this.parent();

        if (!$target.length) return;
        Plugin.call($target);
        $target.data(ns.substring(1)).toggle(this);
        e.preventDefault();
    }

    $(document)
        .on('click' + ns + '.data-api', '[data-toggle="radio"]', clickHandler);

    return $;
});