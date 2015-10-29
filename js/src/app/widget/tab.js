define(['jquery', 'transition'], function ($) {

    var ns = '.my.tab';

    function Tab(element) {
        this.element = $(element);
    }

    Tab.TRANSITION_DURATION = 100;

    Tab.prototype = {
        show: function () {
            var $this = this.element;
            var $ul = $this.closest('ul:not(.dropdown-menu)');
            var selector = $this.data('target');

            if (!selector) {
                selector = $this.attr('href')
                selector = selector && selector.replace(/.*(?=#[^\s]*$)/, '');
            }

            if ($this.parent('li').hasClass('active')) return;

            var $previous = $ul.find('.active:last a');
            var hideEvent = $.Event('hide' + ns, {
                relatedTarget: $this[0]
            });
            var showEvent = $.Event('show' + ns, {
                relatedTarget: $previous[0]
            });

            $previous.trigger(hideEvent);
            $this.trigger(showEvent);

            if (showEvent.isDefaultPrevented() || hideEvent.isDefaultPrevented()) return;

            var $target = $(selector);

            this.activate($this.closest('li'), $ul);
            this.activate($target, $target.parent(), function () {
                $previous.trigger({
                    type: 'hidden' + ns,
                    relatedTarget: $this[0]
                });
                $this.trigger({
                    type: 'shown' + ns,
                    relatedTarget: $previous[0]
                });
            });
        },
        hide: function () {

        },
        activate: function (element, container, callback) {
            var $active = container.find('> .active');
            var transition = callback
                && $.support.transition
                && ($active.length && $active.hasClass('fade') || !!container.find('> .fade').length);

            function next() {
                $active.removeClass('active');
                element.addClass('active');

                element[0].offsetWidth;// reflow for transition
                element.addClass('in');
                callback && callback();
            }

            $active.length && transition ?
                $active
                    .one('bsTransitionEnd', next)
                    .emulateTransitionEnd(Tab.TRANSITION_DURATION) :
                next();

            $active.removeClass('in');
        }
    };


// TAB PLUGIN DEFINITION
// =====================

    function Plugin(option) {
        return this.each(function () {
            var $this = $(this),
                name = ns.substring(1),
                data = $this.data(name);

            if (!data) $this.data(ns, (data = new Tab(this)));
            if (typeof option == 'string') data[option]();
        });
    }

    $.fn.tab = Plugin;
    $.fn.tab.Constructor = Tab;

// TAB DATA-API
// ============

    var clickHandler = function (e) {
        e.preventDefault();
        Plugin.call($(this), 'show');
    };

    $(document)
        .on('click' + ns + '.data-api', '[data-toggle="tab"]', clickHandler);

    return $;
});