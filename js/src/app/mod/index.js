define([
    '../widget/dropdown',
    '../widget/carousel',
    '../widget/tab',
    '../widget/checkRadio',
    '../widget/radioToggle'], function ($) {


    function getPosition(el) {
        var isBody = el.tagName == 'BODY',
            $element = $(el),
            elRect = el.getBoundingClientRect();

        if (elRect.width == null) {
            // width and height are missing in IE8, so compute them manually; see https://github.com/twbs/bootstrap/issues/14093
            elRect = $.extend({}, elRect, {width: elRect.right - elRect.left, height: elRect.bottom - elRect.top});
        }

        var elOffset = isBody ? {top: 0, left: 0} : $element.offset(),
            scroll = {scroll: isBody ? document.documentElement.scrollTop || document.body.scrollTop : $element.scrollTop()},
            outerDims = isBody ? {width: $(window).width(), height: $(window).height()} : null;

        return $.extend({}, elRect, scroll, outerDims, elOffset);
    }

    /*$('#filter-period').on('toggle.my.radioToggle', function (e) {
     console.log($(e.relatedTarget).data('period'));
     });*/

    var $gridSwitcher = $('#filter-grid-switcher');
    $gridSwitcher.radioToggle();
    $gridSwitcher.on('toggle.my.radioToggle', function (e) {
        var $active = $(e.relatedTarget),
            col = $active.data('col') || 5;

        $('.goods-block.detail-open').removeClass('detail-open');

        if (col === 5) {
            $('.grid4-row').addClass('hidden');
            $('.grid5-row:not(.goods-detail-block)').removeClass('hidden');
        } else {
            $('.grid5-row').addClass('hidden');
            $('.grid4-row:not(.goods-detail-block)').removeClass('hidden');
        }
    });


    $(document).on('click.show.detail', '.goods-block', function (e) {
        /*
         if (!$detailBlock.hasClass('hidden')) {
         $detailBlock[0].offsetWidth;// force reflow
         $detailBlock.addClass('open');
         } else {
         $detailBlock.removeClass('open');
         }
         */

        var radioToggle = $gridSwitcher.data('my.radioToggle'),
            col = radioToggle.getActive().data('col') || 5,
            rowClass = '.grid' + col + '-row',
            $parentRow = $(this).closest(rowClass),
            $detailBlock = $parentRow.next(rowClass + '.goods-detail-block'),
            that = this;

        $('.goods-detail-block').removeClass('in').addClass('hidden');
        $('.goods-block.detail-open').removeClass('detail-open in');

        if ($detailBlock.length) {
            $detailBlock.removeClass('hidden');
        } else {
            $detailBlock = $(
                ['<ul class="' + rowClass.substring(1) + ' goods-detail-block">',
                    '<li class="active goods-detail">',
                    '<div class="goods-video-row clearfix">',
                    '    <div class="video-box col">',
                    '    </div>',
                    '    <div class="col">',
                    '        <button class="btn btn-buy">立即下载</button>',
                    '        <button class="btn btn-cart">添加到购物车</button>',
                    '        <table class="video-info-table">',
                    '            <colgroup>',
                    '                <col width="85">',
                    '            </colgroup>',
                    '            <tbody>',
                    '            <tr>',
                    '                <td class="name">上传时间：</td>',
                    '                <td class="value">2015－10-10  16:43:24</td>',
                    '            </tr>',
                    '            <tr>',
                    '                <td class="name">id：</td>',
                    '                <td class="value">5423541234433</td>',
                    '            </tr>',
                    '            <tr>',
                    '                <td class="name">时长：</td>',
                    '                <td class="value">00:01:58</td>',
                    '            </tr>',
                    '            <tr>',
                    '                <td class="name">供稿方：</td>',
                    '                <td class="value">新华社</td>',
                    '            </tr>',
                    '            <tr>',
                    '                <td class="name">分辨率：</td>',
                    '                <td class="value">HD</td>',
                    '            </tr>',
                    '            <tr>',
                    '                <td class="name">比例：</td>',
                    '                <td class="value">16:9</td>',
                    '            </tr>',
                    '            <tr>',
                    '                <td class="name">色彩：</td>',
                    '                <td class="value">彩色</td>',
                    '            </tr>',
                    '            <tr>',
                    '                <td class="name">媒体：</td>',
                    '                <td class="value">网络媒体</td>',
                    '            </tr>',
                    '            <tr>',
                    '                <td class="name">大小：</td>',
                    '                <td class="value">75.93MB</td>',
                    '            </tr>',
                    '            </tbody>',
                    '        </table>',
                    '    </div>',
                    '</div>',
                    '<h2>粮农组织发表最新数据 全球食品价格指数持续走低</h2>',
                    '<p class="video-desc">2015年10月8日 联合国粮农组织今天发表媒体通报表示，根据该机构当天发表的最新数据，全球食品价格指数持续走低。农产品价格目前处于下行且波动较小阶段。大多数谷物和植物油的价格在几年前几经暴涨之后，现已趋稳定并呈现下降趋势。食品价格的总体下降趋势虽然为强化粮食安全起到正面作用，但导致农民收入降低，并有可能导致对农业生产投资的减少。　粮农组织食品价格指数是国际市场五大食品类商品价格的贸易加权指数，包括谷物、肉类、植物油和食糖。根据粮农组织最新的统计数据，这个指数在今年8月跌至6年的最低点后，小幅上涨了不到一个百分点，但仍比去年同期低18.9％。粮农组织表示，这预示了</p>',
                    '<p class="video-desc hidden">2015年10月8日 联合国粮农组织今天发表媒体通报表示，根据该机构当天发表的最新数据，全球食品价格指数持续走低。农产品价格目前处于下行且波动较小阶段。大多数谷物和植物油的价格在几年前几经暴涨之后，现已趋稳定并呈现下降趋势。食品价格的总体下降趋势虽然为强化粮食安全起到正面作用，但导致农民收入降低，并有可能导致对农业生产投资的减少。　粮农组织食品价格指数是国际市场五大食品类商品价格的贸易加权指数，包括谷物、肉类、植物油和食糖。根据粮农组织最新的统计数据，这个指数在今年8月跌至6年的最低点后，小幅上涨了不到一个百分点，但仍比去年同期低18.9％。粮农组织表示，这预示了</p>',
                    '<p class="video-desc hidden">2015年10月8日 联合国粮农组织今天发表媒体通报表示，根据该机构当天发表的最新数据，全球食品价格指数持续走低。农产品价格目前处于下行且波动较小阶段。大多数谷物和植物油的价格在几年前几经暴涨之后，现已趋稳定并呈现下降趋势。食品价格的总体下降趋势虽然为强化粮食安全起到正面作用，但导致农民收入降低，并有可能导致对农业生产投资的减少。　粮农组织食品价格指数是国际市场五大食品类商品价格的贸易加权指数，包括谷物、肉类、植物油和食糖。根据粮农组织最新的统计数据，这个指数在今年8月跌至6年的最低点后，小幅上涨了不到一个百分点，但仍比去年同期低18.9％。粮农组织表示，这预示了</p>',
                    '<a href="javascript:;" class="desc-toggle" data-show="false">显示全部...</a>',
                    '<a href="javascript:;" class="goods-block-collapse">收起<i class="iconfont icon-collapse"></i></a>',
                    '</li></ul>'].join(""));
            $parentRow.after($detailBlock);
        }

        $(that).addClass('detail-open');
        that.offsetWidth;
        $detailBlock.addClass('in');
        $(that).addClass('in');

        function _scroll() {
            setTimeout(function () {
                var pos = getPosition(that),
                    $scrollEl = $(document.documentElement);
                if ($scrollEl.scrollTop() === 0) {
                    $scrollEl = $(document.body);
                }

                $scrollEl.stop(true, true).animate({
                    'scrollTop': pos.top
                }, 400);
            }, 100);
        }

        $.support.transition ? $(that)
            .one('bsTransitionEnd', _scroll)
            .emulateTransitionEnd(300) :
            _scroll();
    });

    $(document).on('click.hide.detail', '.goods-block-collapse', function (e) {
        $('.goods-detail-block').removeClass('in').addClass('hidden');
        $('.goods-block.detail-open').removeClass('detail-open in');
    });

    $(document).on('click.toggle.video-desc', '.desc-toggle', function (e) {
        var $this = $(this);

        if ($this.data('show')) {
            $this.data('show', false);
            $this.text('显示全部...');
            $this.siblings('.video-desc:gt(0)').addClass('hidden');
        } else {
            $this.text('收起全部');
            $this.siblings('.video-desc:gt(0)').removeClass('hidden');
            $this.data('show', true);
        }
    });
});