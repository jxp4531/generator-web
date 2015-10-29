define(['jquery', 'transition'], function ($) {

    var ns = '.my.carousel';

    function Carousel(element, options) {
        this.$element = $(element);
        this.$indicators = this.$element.find('.carousel-indicators');
        this.options = options;
        this.paused = null;
        this.sliding = null;
        this.interval = null;
        this.$active = null;
        this.$items = null;

        this.options.pause == 'hover' && !('ontouchstart' in document.documentElement) && this.$element
            .on('mouseenter' + ns, $.proxy(this.pause, this))
            .on('mouseleave' + ns, $.proxy(this.cycle, this));
    }

    Carousel.TRANSITION_DURATION = 600;

    Carousel.DEFAULTS = {
        interval: 5000,
        pause: 'hover',
        wrap: true//是否循环滚动，最后一个跟第一个的问题
    };

    Carousel.prototype = {
        getItemIndex: function (item) {
            this.$items = item.parent().children('.item');
            return this.$items.index(item || this.$active);
        },
        getItemForDirection: function (direction, active) {
            var activeIndex = this.getItemIndex(active),
                willWrap = (direction == 'prev' && activeIndex === 0)
                    || (direction == 'next' && activeIndex == (this.$items.length - 1));

            if (willWrap && !this.options.wrap) return active;
            var delta = direction == 'prev' ? -1 : 1,
                itemIndex = (activeIndex + delta) % this.$items.length;
            return this.$items.eq(itemIndex);
        },
        cycle: function (e) {
            e || (this.paused = false);
            this.interval && clearInterval(this.interval);
            this.options.interval
            && !this.paused
            && (this.interval = setInterval($.proxy(this.next, this), this.options.interval));
            return this;
        },
        pause: function (e) {
            e || (this.paused = true);
            if (this.$element.find('.next, .prev').length && $.support.transition) {
                //有疑问
                this.$element.trigger($.support.transition.end);
                //有疑问
                this.cycle(true);
            }
            this.interval = clearInterval(this.interval);
            return this;
        },
        to: function (pos) {
            var that = this,
                activeIndex = this.getItemIndex(this.$active = this.$element.find('.item.active'));

            if (pos > (this.$items.length - 1) || pos < 0) return;

            if (this.sliding) {
                return this.$element.one('slid' + ns, function () {
                    that.to(pos)
                });
                //等当前的滑动完了再滑到指定的item
            }

            //有疑问
            if (activeIndex == pos) return this.pause().cycle();
            return this.slide(pos > activeIndex ? 'next' : 'prev', this.$items.eq(pos));
        },
        next: function () {
            if (this.sliding) return;
            return this.slide('next')
        },
        prev: function () {
            if (this.sliding) return;
            return this.slide('prev')
        },
        slide: function (type, next) {
            var $active = this.$element.find('.item.active'),
                $next = next || this.getItemForDirection(type, $active),
                isCycling = this.interval,
                direction = type == 'next' ? 'left' : 'right',
                that = this;

            //有疑问
            if ($next.hasClass('active')) return (this.sliding = false);

            var relatedTarget = $next[0],
                slideEvent = $.Event('slide.bs.carousel', {
                    relatedTarget: relatedTarget,
                    direction: direction
                });

            this.$element.trigger(slideEvent);
            if (slideEvent.isDefaultPrevented()) return;

            this.sliding = true;

            //有疑问
            isCycling && this.pause();

            if (this.$indicators.length) {
                this.$indicators.find('.active').removeClass('active');
                var $nextIndicator = $(this.$indicators.children()[this.getItemIndex($next)]);
                $nextIndicator && $nextIndicator.addClass('active');
            }

            var slidEvent = $.Event('slid' + ns, {relatedTarget: relatedTarget, direction: direction});
            if ($.support.transition && this.$element.hasClass('slide')) {
                $next.addClass(type);
                $next[0].offsetWidth; // force reflow
                $active.addClass(direction);
                $active[0].offsetWidth;
                $next.addClass(direction);

                $active
                    .one('bsTransitionEnd', function () {
                        $next.removeClass([type, direction].join(' ')).addClass('active');
                        $active.removeClass(['active', direction].join(' '));
                        that.sliding = false;
                        setTimeout(function () {
                            that.$element.trigger(slidEvent);
                            that = null;
                        }, 0);
                        $next = null;
                        $active = null;
                    })
                    .emulateTransitionEnd(Carousel.TRANSITION_DURATION);

            } else {
                $active.removeClass('active');
                $next.addClass('active');
                this.sliding = false;
                this.$element.trigger(slidEvent);
            }
            //有疑问
            isCycling && this.cycle();
            return this;
        },
        destroy: function () {
            this.$element.off(ns);
            this.$element = null;
            this.$indicators = null;
            this.options = null;
            this.paused = null;
            this.sliding = null;
            this.interval = null;
            this.$active = null;
            this.$items = null;
        }
    };

// CAROUSEL PLUGIN DEFINITION
// ==========================

    function Plugin(option) {
        return this.each(function () {
            var $this = $(this),
                name = ns.substring(1),
                data = $this.data(name),
                options = $.extend({}, Carousel.DEFAULTS, $this.data(), typeof option == 'object' && option),
                action = typeof option == 'string' ? option : options.slide;

            if (!data) $this.data(name, (data = new Carousel(this, options)));
            if (typeof option == 'number') data.to(option);
            else if (action) data[action]();
            else if (options.interval) data.pause().cycle();
        });
    }

    $.fn.carousel = Plugin;
    $.fn.carousel.Constructor = Carousel;

    function clickHandler(e) {
        var href,
            $this = $(this),
            $target = $($this.attr('data-target') || (href = $this.attr('href')) && href.replace(/.*(?=#[^\s]+$)/, ''));// strip for ie7

        if (!$target.hasClass('carousel')) return;
        var options = $.extend({}, $target.data(), $this.data());
        var slideIndex = $this.attr('data-slide-to');
        if (slideIndex) options.interval = false;

        Plugin.call($target, options);

        if (slideIndex) {
            $target.data(ns.substring(1)).to(slideIndex);
        }

        e.preventDefault();
    }

    var dataApiTimer;
    function dataApiHandler(e) {
        dataApiTimer && clearTimeout(dataApiTimer);
        dataApiTimer = setTimeout(function () {
            //console.log(new Date().getTime());
            clickHandler.call(e.currentTarget, e);
        }, 180);
    }

    $(document)
        .on('click' + ns + '.data-api', '[data-slide]', clickHandler)
        .on('mouseenter' + ns + '.data-api', '[data-slide-to]', dataApiHandler);

    $('[data-ride="carousel"]').each(function () {
        var $carousel = $(this);
        Plugin.call($carousel, $carousel.data());
    });
    return $;
});