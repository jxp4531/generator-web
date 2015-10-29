<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ include file="base/head_start.jsp" %>
<title>视频交易平台</title>
<link href="css/index.css" rel="stylesheet">
<jsp:include page="base/head_end.jsp">
    <jsp:param name="bodyAttrs" value=""></jsp:param>
</jsp:include>
<header id="top-header" class="layout-container">
    <div class="layout-container-inner">
        <nav id="top-nav" class="layout-block">
            <a href="#" title="视频交易平台" class="logo">
                <img src="img/dist/logo.png" alt="LOGO">
            </a>

            <p class="login-block">
                请 <a href="javascript:;" title="登录">登录</a> 或 <a href="javascript:;" title="注册">注册</a>
            </p>
            <ul class="language-block">
                <li><a href="#" title="">中文</a></li>
                <li><a href="#" title="">English</a></li>
                <li><a href="#" title="">Français</a></li>
                <li><a href="#" title="">El</a></li>
                <li><a href="#" title="">español</a></li>
                <li><a href="#" title="">русский</a></li>
                <li><a href="#" title="">عربي</a></li>
            </ul>
            <ul class="menu-block">
                <li class="active"><a href="#" title="">首页</a></li>
                <li><a href="#" title="">综合</a></li>
                <li><a href="#" title="">商业</a></li>
                <li><a href="#" title="">科学</a></li>
                <li><a href="#" title="">时政</a></li>
                <li><a href="#" title="">人物</a></li>
                <li><a href="#" title="">其它</a></li>
                <li><a href="#" title="">直播</a></li>
                <li class="dropdown fade dropdown-brand">
                    <a href="javascript:;" title="" data-toggle="dropdown" class="dropdown-toggle" data-trigger="hover"
                       data-dir="right">供稿方<i class="caret iconfont icon-dcaret"></i></a>
                    <!--
                    <div class="dropdown-menu dropdown-menu-right brand-block">
                    </div>
                    -->
                </li>
            </ul>
        </nav>
    </div>
</header>

<div class="layout-container">
    <div class="layout-container-inner">
        <form name="search-form" onsubmit="return false">
            <div id="search-block" class="searchbox groupbox">
                <div class="grp-item dropdown fade dropdown-brand">
                    <a href="javascript:;" title="" data-toggle="dropdown" class="dropdown-toggle" data-trigger="click"
                       data-dir="left">供稿方<i class="caret iconfont icon-dcaret"></i></a>

                    <div class="dropdown-menu">
                        <ul class="tab-nav brand-tab clearfix">
                            <li>
                                <input type="checkbox" name="brand"
                                       value="xinhua">
                                <a href="javascript:;" class="tab-toggle"
                                   data-target="#search-brand-tab-pane .tab-pane:nth-child(1)"
                                   data-toggle="tab">新华社</a>
                            </li>
                            <li>
                                <input type="checkbox" name="brand"
                                       value="meilian">
                                <a href="javascript:;" class="tab-toggle"
                                   data-target="#search-brand-tab-pane .tab-pane:nth-child(2)"
                                   data-toggle="tab">美联社</a>
                            </li>
                            <li class="active">
                                <input type="checkbox" name="brand"
                                       value="cctv">
                                <a href="javascript:;" class="tab-toggle"
                                   data-target="#search-brand-tab-pane .tab-pane:nth-child(3)"
                                   data-toggle="tab">CCTV</a>
                            </li>
                            <li>
                                <input type="checkbox" name="brand"
                                       value="faxin">
                                <a href="javascript:;" class="tab-toggle"
                                   data-target="#search-brand-tab-pane .tab-pane:nth-child(4)"
                                   data-toggle="tab">法新社</a>
                            </li>
                        </ul>
                        <ul id="search-brand-tab-pane" class="clearfix">
                            <li class="tab-pane fade">
                                <ul>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line1">
                                        <label>新华社供稿线路1</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line2">
                                        <label>新华社供稿线路2</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line3">
                                        <label>新华社供稿线路3</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line4">
                                        <label>新华社供稿线路4</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line5">
                                        <label>新华社供稿线路5</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line6">
                                        <label>新华社供稿线路6</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line7">
                                        <label>新华社供稿线路7</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line8">
                                        <label>新华社供稿线路8</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line9">
                                        <label>新华社供稿线路9</label>
                                    </li>
                                </ul>
                            </li>
                            <li class="tab-pane fade">
                                <ul>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line1">
                                        <label>美联社供稿线路1</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line2">
                                        <label>美联社供稿线路2</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line3">
                                        <label>美联社供稿线路3</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line4">
                                        <label>美联社供稿线路4</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line5">
                                        <label>美联社供稿线路5</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line6">
                                        <label>美联社供稿线路6</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line7">
                                        <label>美联社供稿线路7</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line8">
                                        <label>美联社供稿线路8</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line9">
                                        <label>美联社供稿线路9</label>
                                    </li>
                                </ul>
                            </li>
                            <li class="tab-pane fade in active">
                                <ul>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line1">
                                        <label>CCTV供稿线路1</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line2">
                                        <label>CCTV供稿线路2</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line3">
                                        <label>CCTV供稿线路3</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line4">
                                        <label>CCTV供稿线路4</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line5">
                                        <label>CCTV供稿线路5</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line6">
                                        <label>CCTV供稿线路6</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line7">
                                        <label>CCTV供稿线路7</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line8">
                                        <label>CCTV供稿线路8</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line9">
                                        <label>CCTV供稿线路9</label>
                                    </li>
                                </ul>
                            </li>
                            <li class="tab-pane fade">
                                <ul>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line1">
                                        <label>法新社供稿线路1</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line2">
                                        <label>法新社供稿线路2</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line3">
                                        <label>法新社供稿线路3</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line4">
                                        <label>法新社供稿线路4</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line5">
                                        <label>法新社供稿线路5</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line6">
                                        <label>法新社供稿线路6</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line7">
                                        <label>法新社供稿线路7</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line8">
                                        <label>法新社供稿线路8</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line9">
                                        <label>法新社供稿线路9</label>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <ul id="search-brand-selected" class="clearfix">
                            <li>
                                <input type="checkbox" name="brand"
                                       value="meilian">
                                <label>美联社</label>
                            </li>
                            <li>
                                <input type="checkbox" name="brand"
                                       value="faxin">
                                <label>法新社</label>
                            </li>
                            <li>
                                <input type="checkbox" name="brandLine"
                                       value="line1">
                                <label>法新社供稿线路1</label>
                            </li>
                            <li>
                                <input type="checkbox" name="brandLine"
                                       value="line2">
                                <label>法新社供稿线路2</label>
                            </li>
                            <li>
                                <input type="checkbox" name="brandLine"
                                       value="line3">
                                <label>法新社供稿线路3</label>
                            </li>
                            <li>
                                <input type="checkbox" name="brandLine"
                                       value="line4">
                                <label>法新社供稿线路4</label>
                            </li>
                        </ul>
                        <div class="filter-btn-group clearfix">
                            <button class="btn btn-sure">确定</button>
                            <a href="javascript:;" title="" class="btn btn-clear">清除所选条件</a>
                        </div>
                    </div>
                </div>
                <div class="grp-item input-block">
                    <input name="kewwords" type="text">

                    <div class="dropdown fade dropdown-filter">
                        <a href="javascript:;" title="" data-toggle="dropdown" class="dropdown-toggle"
                           data-trigger="click"
                           data-dir="right">高级筛选<i class="caret iconfont icon-darrow"></i></a>

                        <div class="dropdown-menu">
                            <div class="col">
                                <h3>格式</h3>
                                <ul class="filter-items">
                                    <li class="filter-item-level1">
                                        <input type="radio" name="resolutionRatio" checked
                                               value="">
                                        <label>全部分辨率</label>
                                    </li>
                                    <li class="filter-item-level2">

                                        <input type="radio" name="resolutionRatio"
                                               value="HD">
                                        <label>HD</label>
                                    </li>
                                    <li class="filter-item-level2">

                                        <input type="radio" name="resolutionRatio"
                                               value="SD">
                                        <label>SD</label>
                                    </li>
                                    <li class="filter-item-level1">
                                        <input type="radio" name="deviceRatio" checked
                                               value="">
                                        <label>全部比例</label>
                                    </li>
                                    <li class="filter-item-level2">

                                        <input type="radio" name="deviceRatio"
                                               value="16/9">
                                        <label>16:9</label>
                                    </li>
                                    <li class="filter-item-level2">

                                        <input type="radio" name="deviceRatio"
                                               value="4/3">
                                        <label>4:3</label>
                                    </li>
                                    <li class="filter-item-level1">
                                        <input type="radio" name="color" checked
                                               value="">
                                        <label>全部颜色</label>
                                    </li>
                                    <li class="filter-item-level2">

                                        <input type="radio" name="color"
                                               value="彩色">
                                        <label>彩色</label>
                                    </li>
                                    <li class="filter-item-level2">

                                        <input type="radio" name="color"
                                               value="黑白">
                                        <label>黑白</label>
                                    </li>
                                    <li class="filter-item-level1">
                                        <input type="radio" name="media" checked
                                               value="">
                                        <label>全部媒体</label>
                                    </li>
                                    <li class="filter-item-level2">

                                        <input type="radio" name="media"
                                               value="网络媒体">
                                        <label>网络媒体</label>
                                    </li>
                                    <li class="filter-item-level2">

                                        <input type="radio" name="media"
                                               value="手机媒体">
                                        <label>手机媒体</label>
                                    </li>
                                    <li class="filter-item-level2">

                                        <input type="radio" name="media"
                                               value="电视媒体">
                                        <label>电视媒体</label>
                                    </li>
                                </ul>
                            </div>
                            <div class="col">
                                <h3>时间</h3>
                                <ul class="filter-items">
                                    <li class="filter-item-level1">
                                        <input type="radio" name="period" checked
                                               value="24h">
                                        <label>24小时</label>
                                    </li>
                                    <li class="filter-item-level1">
                                        <input type="radio" name="period"
                                               value="2d">
                                        <label>2天</label>
                                    </li>
                                    <li class="filter-item-level1">

                                        <input type="radio" name="period"
                                               value="5d">
                                        <label>5天</label>
                                    </li>
                                    <li class="filter-item-level1">

                                        <input type="radio" name="period"
                                               value="30d">
                                        <label>30天</label>
                                    </li>
                                    <li class="filter-item-level1">
                                        <input type="radio" name="period"
                                               value="1y">
                                        <label>一年</label>
                                    </li>
                                    <li class="filter-item-level1">从</li>
                                    <li class="filter-item-level1">
                                        <div class="date">
                                            <input type="text" readonly name="period-start"/>
                                            <i class="icon"></i>
                                        </div>
                                    </li>
                                    <li class="filter-item-level1">到</li>
                                    <li class="filter-item-level1">
                                        <div class="date">
                                            <input type="text" readonly name="period-start"/>
                                            <i class="icon"></i>
                                        </div>
                                    </li>
                                </ul>
                                <div class="filter-btn-group">
                                    <a href="javascript:;" title="" class="btn btn-clear">清除所选条件</a>
                                    <button class="btn btn-sure">确定</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <button class="grp-item btn btn-search">搜索</button>
            </div>
        </form>
        <div id="recommend-block" class="layout-block clearfix">
            <div id="carousel-recommend" class="carousel slide" data-pause="hover" data-ride="carousel"
                 data-interval="3000">
                <div class="carousel-inner">
                    <div class="item active item-1">
                        <img style="position:absolute;bottom:0;left:0;width: 90px;height:38px;"
                             src="img/dist/demo/topic_flag.png">
                        <a href="#" title=""><img src="img/dist/demo/1.jpg" alt=""></a>
                    </div>
                    <div class="item item-2">
                        <img style="position:absolute;bottom:0;left:0;width: 90px;height:38px;"
                             src="img/dist/demo/topic_flag.png">
                        <a href="#" title=""><img src="img/dist/demo/2.jpg" alt=""></a>
                    </div>
                    <div class="item item-3">
                        <img style="position:absolute;bottom:0;left:0;width: 90px;height:38px;"
                             src="img/dist/demo/topic_flag.png">
                        <a href="#" title=""><img src="img/dist/demo/3.jpg" alt=""></a>
                    </div>
                    <div class="item item-4">
                        <img style="position:absolute;bottom:0;left:0;width: 90px;height:38px;"
                             src="img/dist/demo/topic_flag.png">
                        <a href="#" title=""><img src="img/dist/demo/4.jpg" alt=""></a>
                    </div>
                    <div class="item item-5">
                        <img style="position:absolute;bottom:0;left:0;width: 90px;height:38px;"
                             src="img/dist/demo/topic_flag.png">
                        <a href="#" title=""><img src="img/dist/demo/5.jpg" alt=""></a>
                    </div>
                    <div class="item item-6">
                        <img style="position:absolute;bottom:0;left:0;width: 90px;height:38px;"
                             src="img/dist/demo/topic_flag.png">
                        <a href="#" title=""><img src="img/dist/demo/6.jpg" alt=""></a>
                    </div>
                </div>
                <ul class="carousel-indicators">
                    <li data-target="#carousel-recommend" data-slide-to="0" class="active">
                        <a href="#" title="哈勃望远镜25周年绚美太空精选">哈勃望远镜25周年绚美太空精选</a>
                    </li>
                    <li data-target="#carousel-recommend" data-slide-to="1">
                        <a href="#" title="金秋十月，已经发生了多起改变互联网细分行业的事件">金秋十月，已经发生了多起改变互联网细分行业的事件</a>
                    </li>
                    <li data-target="#carousel-recommend" data-slide-to="2">
                        <a href="#" title="亏损了20年的亚马逊突然开始盈利">亏损了20年的亚马逊突然开始盈利</a>
                    </li>
                    <li data-target="#carousel-recommend" data-slide-to="3">
                        <a href="#" title="放弃随习近平访英的贾跃亭，过去16个月过得怎么样？">放弃随习近平访英的贾跃亭，过去16个月过得怎么样？</a>
                    </li>
                    <li data-target="#carousel-recommend" data-slide-to="4">
                        <a href="#" title="芒果台“抢走”《三体》电视剧改编权。">芒果台“抢走”《三体》电视剧改编权。</a>
                    </li>
                    <li data-target="#carousel-recommend" data-slide-to="5">
                        <a href="#" title="华为的企业业务一度撞上冰山！">华为的企业业务一度撞上冰山！</a>
                    </li>
                </ul>
            </div>
            <div class="carousel-title">
                <h2>精彩推荐</h2>
            </div>
        </div>
        <div id="trend-block" class="layout-block clearfix">
            <div id="carousel-trend" class="carousel slide" data-pause="hover" data-ride="carousel"
                 data-interval="3000">
                <ul class="carousel-inner">
                    <li class="item active item-1">
                        最新动态:&nbsp;&nbsp;15:30&nbsp;&nbsp;&nbsp;&nbsp;习近平联合国发表重要讲话<a class="i-link" href="#"
                                                                                      title="查看详情">查看详情</a>
                    </li>
                    <li class="item item-2">
                        最新动态:&nbsp;&nbsp;15:30&nbsp;&nbsp;&nbsp;&nbsp;金秋十月，已经发生了多起改变互联网细分行业的事件<a class="i-link" href="#"
                                                                                      title="查看详情">查看详情</a>
                    </li>
                    <li class="item item-3">
                        最新动态:&nbsp;&nbsp;15:30&nbsp;&nbsp;&nbsp;&nbsp;亏损了20年的亚马逊突然开始盈利<a class="i-link" href="#"
                                                                                      title="查看详情">查看详情</a>
                    </li>
                    <li class="item item-4">
                        最新动态:&nbsp;&nbsp;15:30&nbsp;&nbsp;&nbsp;&nbsp;芒果台“抢走”《三体》电视剧改编权。<a class="i-link" href="#"
                                                                                      title="查看详情">查看详情</a>
                    </li>
                    <li class="item item-5">
                        最新动态:&nbsp;&nbsp;15:30&nbsp;&nbsp;&nbsp;&nbsp;6华为的企业业务一度撞上冰山!<a class="i-link" href="#"
                                                                                      title="查看详情">查看详情</a>
                    </li>
                    <li class="item item-6">
                        最新动态:&nbsp;&nbsp;15:30&nbsp;&nbsp;&nbsp;&nbsp;哈勃望远镜25周年绚美太空精选<a class="i-link" href="#"
                                                                                      title="查看详情">查看详情</a>
                    </li>
                </ul>
                <div class="carousel-slide">
                    <a href="javascript:;" class="slide" data-slide="prev" data-target="#carousel-trend"><i
                            class="iconfont icon-lcaret"></i></a>
                    <a href="javascript:;" class="slide" data-slide="next" data-target="#carousel-trend"><i
                            class="iconfont icon-rcaret"></i></a>
                </div>
            </div>
        </div>
        <form name="filter-form" onsubmit="return false">
            <div id="filter-block" class="layout-block clearfix">
                <div class="filter-bar">
                    <div id="filter-grid-switcher" class="grid-switcher">
                        <a href="javascript:;" class="grid-switcher-item active" data-col="4" data-toggle="radio"></a>
                        <a href="javascript:;" class="grid-switcher-item " data-col="5" data-toggle="radio"></a>
                    </div>
                    <ul id="filter-period" class="filter-item filter-period" data-name="period" data-type="period">
                        <li class="active" data-period="24h" data-toggle="radio"><a href="javascript:;" title="24小时">24小时</a>
                        </li>
                        <li data-period="3d" data-toggle="radio"><a href="javascript:;" title="3天">3天</a></li>
                        <li data-period="1w" data-toggle="radio"><a href="javascript:;" title="一周">一周</a></li>
                        <li data-period="1m" data-toggle="radio"><a href="javascript:;" title="一月">一月</a></li>
                        <li class="dropdown fade dropdown-period">
                            <a href="javascript:;" title="" data-toggle="dropdown" class="dropdown-toggle"
                               data-trigger="click" data-dir="down">更多<i class="caret iconfont icon-darrow"></i></a>

                            <div class="dropdown-menu">
                                <ul>
                                    <li class="filter-item-level1">从</li>
                                    <li class="filter-item-level1">
                                        <div class="date">
                                            <input type="text" readonly name="period-start"/>
                                            <i class="icon"></i>
                                        </div>
                                    </li>
                                    <li class="filter-item-level1">到</li>
                                    <li class="filter-item-level1">
                                        <div class="date">
                                            <input type="text" readonly name="period-start"/>
                                            <i class="icon"></i>
                                        </div>
                                    </li>
                                </ul>

                                <div class="filter-btn-group">
                                    <button class="btn btn-sure">确定</button>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <span class="filter-spliter"></span>
                    <ul class="filter-tab tab-nav fade">
                        <li class="active">
                            <a href="javascript:;" class="tab-toggle" data-target="#filter-content-category"
                               data-toggle="tab">分类<i class="caret iconfont icon-darrow"></i></a>
                        </li>
                        <li>
                            <a href="javascript:;" class="tab-toggle" data-target="#filter-content-brand"
                               data-toggle="tab">供稿方<i class="caret iconfont icon-darrow"></i></a>
                        </li>
                        <li>
                            <a href="javascript:;" class="tab-toggle" data-target="#filter-content-senior"
                               data-toggle="tab">高级过滤<i class="caret iconfont icon-darrow"></i></a>
                        </li>
                    </ul>
                </div>
                <ul class="filter-tabpane">
                    <li class="tab-pane fade in active" id="filter-content-category">
                        <ul>
                            <li>
                                <input type="checkbox" name="category" checked
                                       value="zonghe">
                                <label>综合</label>
                            </li>
                            <li>
                                <input type="checkbox" name="category" checked
                                       value="shangye">
                                <label>商业</label>
                            </li>
                            <li>
                                <input type="checkbox" name="category" checked
                                       value="kexue">
                                <label>科学</label>
                            </li>
                            <li>
                                <input type="checkbox" name="category" checked
                                       value="shizheng">
                                <label>时政</label>
                            </li>
                            <li>
                                <input type="checkbox" name="category"
                                       value="shenghuo">
                                <label>生活</label>
                            </li>
                            <li>
                                <input type="checkbox" name="category"
                                       value="tiyu">
                                <label>体育</label>
                            </li>
                            <li>
                                <input type="checkbox" name="category"
                                       value="renwu">
                                <label>人物</label>
                            </li>
                            <li>
                                <input type="checkbox" name="category"
                                       value="qita">
                                <label>其他</label>
                            </li>
                        </ul>
                    </li>
                    <li class="tab-pane fade" id="filter-content-brand">
                        <div class="filter-btn-group">
                            <button class="btn btn-sure">确定</button>
                            <a href="javascript:;" title="" class="btn btn-clear">清除所选条件</a>
                        </div>
                        <ul class="tab-nav brand-tab fade">
                            <li>
                                <input type="checkbox" name="brand"
                                       value="xinhua">
                                <a href="javascript:;" class="tab-toggle"
                                   data-target="#brand-tab-pane .tab-pane:nth-child(1)"
                                   data-toggle="tab">新华社<i class="caret iconfont icon-darrow-small"></i></a>
                            </li>
                            <li>
                                <input type="checkbox" name="brand"
                                       value="meilian">
                                <a href="javascript:;" class="tab-toggle"
                                   data-target="#brand-tab-pane .tab-pane:nth-child(2)"
                                   data-toggle="tab">美联社<i class="caret iconfont icon-darrow-small"></i></a>
                            </li>
                            <li>
                                <input type="checkbox" name="brand"
                                       value="cctv">
                                <a href="javascript:;" class="tab-toggle"
                                   data-target="#brand-tab-pane .tab-pane:nth-child(3)"
                                   data-toggle="tab">CCTV<i class="caret iconfont icon-darrow-small"></i></a>
                            </li>
                            <li>
                                <input type="checkbox" name="brand"
                                       value="faxin">
                                <a href="javascript:;" class="tab-toggle"
                                   data-target="#brand-tab-pane .tab-pane:nth-child(4)"
                                   data-toggle="tab">法新社<i class="caret iconfont icon-darrow-small"></i></a>
                            </li>
                        </ul>
                        <ul id="brand-tab-pane">
                            <li class="tab-pane fade">
                                <ul>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line1">
                                        <label>新华社供稿线路1</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line2">
                                        <label>新华社供稿线路2</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line3">
                                        <label>新华社供稿线路3</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line4">
                                        <label>新华社供稿线路4</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line5">
                                        <label>新华社供稿线路5</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line6">
                                        <label>新华社供稿线路6</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line7">
                                        <label>新华社供稿线路7</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line8">
                                        <label>新华社供稿线路8</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line9">
                                        <label>新华社供稿线路9</label>
                                    </li>
                                </ul>
                            </li>
                            <li class="tab-pane fade">
                                <ul>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line1">
                                        <label>美联社供稿线路1</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line2">
                                        <label>美联社供稿线路2</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line3">
                                        <label>美联社供稿线路3</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line4">
                                        <label>美联社供稿线路4</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line5">
                                        <label>美联社供稿线路5</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line6">
                                        <label>美联社供稿线路6</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line7">
                                        <label>美联社供稿线路7</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line8">
                                        <label>美联社供稿线路8</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line9">
                                        <label>美联社供稿线路9</label>
                                    </li>
                                </ul>
                            </li>
                            <li class="tab-pane fade">
                                <ul>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line1">
                                        <label>CCTV供稿线路1</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line2">
                                        <label>CCTV供稿线路2</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line3">
                                        <label>CCTV供稿线路3</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line4">
                                        <label>CCTV供稿线路4</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line5">
                                        <label>CCTV供稿线路5</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line6">
                                        <label>CCTV供稿线路6</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line7">
                                        <label>CCTV供稿线路7</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line8">
                                        <label>CCTV供稿线路8</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line9">
                                        <label>CCTV供稿线路9</label>
                                    </li>
                                </ul>
                            </li>
                            <li class="tab-pane fade">
                                <ul>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line1">
                                        <label>法新社供稿线路1</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line2">
                                        <label>法新社供稿线路2</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line3">
                                        <label>法新社供稿线路3</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line4">
                                        <label>法新社供稿线路4</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line5">
                                        <label>法新社供稿线路5</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line6">
                                        <label>法新社供稿线路6</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line7">
                                        <label>法新社供稿线路7</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line8">
                                        <label>法新社供稿线路8</label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="brandLine"
                                               value="line9">
                                        <label>法新社供稿线路9</label>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="tab-pane fade" id="filter-content-senior">
                        <table>
                            <colgroup>
                                <col width="80">
                                <col width="150">
                                <col width="50">
                                <col width="150">
                                <col width="50">
                                <col width="150">
                                <col width="50">
                            </colgroup>
                            <tbody>
                            <tr>
                                <td class="align-right td-name">分辨率：</td>
                                <td class="align-left td-ctrl">
                                    <input type="radio" name="resolutionRatio" checked
                                           value="">
                                    <label>全部</label>
                                </td>
                                <td class="align-right td-name">比率：</td>
                                <td class="align-left td-ctrl">
                                    <input type="radio" name="deviceRatio" checked
                                           value="">
                                    <label>全部</label>
                                </td>
                                <td class="align-right td-name">颜色：</td>
                                <td class="align-left td-ctrl">
                                    <input type="radio" name="color" checked
                                           value="">
                                    <label>全部</label>
                                </td>
                                <td class="align-right td-name">媒体：</td>
                                <td class="align-left td-ctrl">
                                    <input type="radio" name="media" checked
                                           value="">
                                    <label>全部</label>
                                </td>
                            </tr>
                            <tr>
                                <td class="align-right td-name">&nbsp;</td>
                                <td class="align-left td-ctrl">
                                    <input type="radio" name="resolutionRatio"
                                           value="HD">
                                    <label>HD</label>
                                </td>
                                <td class="align-right td-name">&nbsp;</td>
                                <td class="align-left td-ctrl">
                                    <input type="radio" name="deviceRatio"
                                           value="16/9">
                                    <label>16:9</label>
                                </td>
                                <td class="align-right td-name">&nbsp;</td>
                                <td class="align-left td-ctrl">
                                    <input type="radio" name="color"
                                           value="彩色">
                                    <label>彩色</label>
                                </td>
                                <td class="align-right td-name">&nbsp;</td>
                                <td class="align-left td-ctrl">
                                    <input type="radio" name="media"
                                           value="network">
                                    <label>网络格式</label>
                                </td>
                            </tr>
                            <tr>
                                <td class="align-right td-name">&nbsp;</td>
                                <td class="align-left td-ctrl">
                                    <input type="radio" name="resolutionRatio"
                                           value="SD">
                                    <label>SD</label>
                                </td>
                                <td class="align-right td-name">&nbsp;</td>
                                <td class="align-left td-ctrl">
                                    <input type="radio" name="deviceRatio"
                                           value="4/3">
                                    <label>4:3</label>
                                </td>
                                <td class="align-right td-name">&nbsp;</td>
                                <td class="align-left td-ctrl">
                                    <input type="radio" name="color"
                                           value="黑白">
                                    <label>黑白</label>
                                </td>
                                <td class="align-right td-name">&nbsp;</td>
                                <td class="align-left td-ctrl">
                                    <input type="radio" name="media"
                                           value="mobile">
                                    <label>手机格式</label>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </li>
                </ul>
            </div>
        </form>
        <div id="goodslist" class="layout-block">
            <div class="grid5-row hidden">
                <div class="grid5-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-1.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
                <div class="grid5-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-2.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
                <div class="grid5-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-3.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
                <div class="grid5-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-4.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
                <div class="grid5-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-5.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
            </div>
            <%-- <ul class="grid5-row goods-detail-block open in">
                 <li class="active goods-detail">
                     <div class="goods-video-row clearfix">
                         <div class="video-box col">

                         </div>
                         <div class="col">
                             <button class="btn btn-buy">立即下载</button>
                             <button class="btn btn-cart">添加到购物车</button>
                             <table class="video-info-table">
                                 <colgroup>
                                     <col width="85">
                                 </colgroup>
                                 <tbody>
                                 <tr>
                                     <td class="name">上传时间：</td>
                                     <td class="value">2015－10-10  16:43:24</td>
                                 </tr>
                                 <tr>
                                     <td class="name">id：</td>
                                     <td class="value">5423541234433</td>
                                 </tr>
                                 <tr>
                                     <td class="name">时长：</td>
                                     <td class="value">00:01:58</td>
                                 </tr>
                                 <tr>
                                     <td class="name">供稿方：</td>
                                     <td class="value">新华社</td>
                                 </tr>
                                 <tr>
                                     <td class="name">分辨率：</td>
                                     <td class="value">HD</td>
                                 </tr>
                                 <tr>
                                     <td class="name">比例：</td>
                                     <td class="value">16:9</td>
                                 </tr>
                                 <tr>
                                     <td class="name">色彩：</td>
                                     <td class="value">彩色</td>
                                 </tr>
                                 <tr>
                                     <td class="name">媒体：</td>
                                     <td class="value">网络媒体</td>
                                 </tr>
                                 <tr>
                                     <td class="name">大小：</td>
                                     <td class="value">75.93MB</td>
                                 </tr>
                                 </tbody>
                             </table>
                         </div>
                     </div>
                     <h2>粮农组织发表最新数据 全球食品价格指数持续走低</h2>
                     <p class="video-desc">2015年10月8日 联合国粮农组织今天发表媒体通报表示，根据该机构当天发表的最新数据，全球食品价格指数持续走低。农产品价格目前处于下行且波动较小阶段。大多数谷物和植物油的价格在几年前几经暴涨之后，现已趋稳定并呈现下降趋势。食品价格的总体下降趋势虽然为强化粮食安全起到正面作用，但导致农民收入降低，并有可能导致对农业生产投资的减少。　粮农组织食品价格指数是国际市场五大食品类商品价格的贸易加权指数，包括谷物、肉类、植物油和食糖。根据粮农组织最新的统计数据，这个指数在今年8月跌至6年的最低点后，小幅上涨了不到一个百分点，但仍比去年同期低18.9％。粮农组织表示，这预示了</p>
                     <p class="video-desc hidden">2015年10月8日 联合国粮农组织今天发表媒体通报表示，根据该机构当天发表的最新数据，全球食品价格指数持续走低。农产品价格目前处于下行且波动较小阶段。大多数谷物和植物油的价格在几年前几经暴涨之后，现已趋稳定并呈现下降趋势。食品价格的总体下降趋势虽然为强化粮食安全起到正面作用，但导致农民收入降低，并有可能导致对农业生产投资的减少。　粮农组织食品价格指数是国际市场五大食品类商品价格的贸易加权指数，包括谷物、肉类、植物油和食糖。根据粮农组织最新的统计数据，这个指数在今年8月跌至6年的最低点后，小幅上涨了不到一个百分点，但仍比去年同期低18.9％。粮农组织表示，这预示了</p>
                     <p class="video-desc hidden">2015年10月8日 联合国粮农组织今天发表媒体通报表示，根据该机构当天发表的最新数据，全球食品价格指数持续走低。农产品价格目前处于下行且波动较小阶段。大多数谷物和植物油的价格在几年前几经暴涨之后，现已趋稳定并呈现下降趋势。食品价格的总体下降趋势虽然为强化粮食安全起到正面作用，但导致农民收入降低，并有可能导致对农业生产投资的减少。　粮农组织食品价格指数是国际市场五大食品类商品价格的贸易加权指数，包括谷物、肉类、植物油和食糖。根据粮农组织最新的统计数据，这个指数在今年8月跌至6年的最低点后，小幅上涨了不到一个百分点，但仍比去年同期低18.9％。粮农组织表示，这预示了</p>
                     <a href="javascript:;" class="desc-toggle" data-show="false">显示全部...</a>
                     <a href="javascript:;" class="goods-block-collapse">收起<i class="iconfont icon-collapse"></i></a>
                 </li>
             </ul>--%>
            <div class="grid5-row hidden">
                <div class="grid5-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-6.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
                <div class="grid5-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-7.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
                <div class="grid5-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-8.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
                <div class="grid5-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-9.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
                <div class="grid5-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-10.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
            </div>
            <div class="grid5-row hidden">
                <div class="grid5-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-11.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
                <div class="grid5-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-12.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
                <div class="grid5-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-13.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
                <div class="grid5-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-14.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
                <div class="grid5-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-15.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
            </div>
            <div class="grid5-row hidden">
                <div class="grid5-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-16.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
                <div class="grid5-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-1.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
                <div class="grid5-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-2.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
                <div class="grid5-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-3.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
                <div class="grid5-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-4.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
            </div>
            <div class="grid5-row hidden">
                <div class="grid5-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-5.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
                <div class="grid5-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-6.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
                <div class="grid5-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-7.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
                <div class="grid5-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-8.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
                <div class="grid5-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-9.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
            </div>

            <div class="grid4-row">
                <div class="grid4-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-10.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
                <div class="grid4-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-11.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
                <div class="grid4-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-12.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
                <div class="grid4-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-13.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
            </div>
            <div class="grid4-row ">
                <div class="grid4-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-14.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
                <div class="grid4-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-15.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
                <div class="grid4-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-16.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
                <div class="grid4-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-1.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
            </div>
            <div class="grid4-row ">
                <div class="grid4-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-2.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
                <div class="grid4-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-3.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
                <div class="grid4-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-4.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
                <div class="grid4-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-5.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
            </div>
            <div class="grid4-row ">
                <div class="grid4-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-6.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
                <div class="grid4-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-7.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
                <div class="grid4-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-8.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
                <div class="grid4-col-1">
                    <dl class="goods-block">
                        <dd class="goods-dd">
                            <a href="javascript:;" title="前联大主席被指控卷入受贿案" class="img">
                                <img src="img/dist/demo/video-img-9.png" alt="">
                            </a>
                            <b class="bg"></b>
                            <span class="goods-btn-group">
                                <a class="btn iconfont icon-gouwuche"></a>
                                <a class="btn iconfont icon-xiazai"></a>
                            </span>
                        </dd>
                        <dt class="goods-dt">
                        <p class="info">
                            <a href="javascript:;" class="brand">
                                <img alt="" src="img/dist/demo/cctv.png">
                            </a>
                            <span class="time">3分钟前</span>
                        </p>

                        <p class="title">前联大主席被指控卷入受贿案 潘基文重申不容忍任何形式的腐败行为</p>
                        </dt>
                    </dl>
                </div>
            </div>
        </div>
        <br><br><br><br><br>
    </div>
</div>
<div id="car-bottom" class="car-bottom">
    <div>
        <div class="car-container">
            <div class="car-wrapper">
                <i class="car-icon iconfont icon-gouwuche"></i>
                <i class="badge">7</i>
            </div>
            <ul class="car-wrapper goods-list">
                <li class="goods-item">
                    <a class="img" href="javascript:;" title=""><img src="img/dist/demo/video-img-1.png" alt=""></a>
                    <a class="btn btn-del">×</a>
                </li>
                <li class="goods-item">
                    <a class="img" href="javascript:;" title=""><img src="img/dist/demo/video-img-2.png" alt=""></a>
                    <a class="btn btn-del">×</a>
                </li>
                <li class="goods-item">
                    <a class="img" href="javascript:;" title=""><img src="img/dist/demo/video-img-3.png" alt=""></a>
                    <a class="btn btn-del">×</a>
                </li>
                <li class="goods-item">
                    <a class="img" href="javascript:;" title=""><img src="img/dist/demo/video-img-4.png" alt=""></a>
                    <a class="btn btn-del">×</a>
                </li>
                <li class="goods-item">
                    <a class="img" href="javascript:;" title=""><img src="img/dist/demo/video-img-5.png" alt=""></a>
                    <a class="btn btn-del">×</a>
                </li>
                <li class="goods-item">
                    <a class="img" href="javascript:;" title=""><img src="img/dist/demo/video-img-6.png" alt=""></a>
                    <a class="btn btn-del">×</a>
                </li>
                <li class="goods-item">
                    <a class="img" href="javascript:;" title=""><img src="img/dist/demo/video-img-7.png" alt=""></a>
                    <a class="btn btn-del">×</a>
                </li>
            </ul>
            <div class="car-wrapper">
                <button class="btn btn-settle">结算</button>
            </div>
        </div>
    </div>
</div>
<footer>

</footer>
<script data-main="js/dist/mod/index" src="js/dist/lib/require.js"></script>
<%@ include file="base/body_end.jsp" %>