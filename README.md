# generator-web
## 1. 概述
本项目是一个脚手架，应用于前后端结合型项目，可以为这种项目提供如下服务：
* 图片压缩，支持png,jpg,gif格式图片
* css模块化，使用less编写css
* js模块化，使用requirejs定义模块
* css压缩合并，可做到一个页面仅包含一个css文件
* js压缩合并混淆，可做到一个页面仅包含一个script标签，仅发出2个script请求，其中一个是require.js，另一个则是页面相关的js
* 以上任务全部可通过grunt自动构建，并且在开发期间，主动触发编译和文件更新，以便在浏览器中刷新能看到最新的效果。

前后端结合型项目是指javaweb，asp.net这种非前后端完全分离的项目，页面通常是jsp，aspx，php等模板，部署时的更新包同时包含前后端的文件，属于传统的项目类型。

本脚手架应用场景受限于前后端结合型项目，它仅能解决这类项目的前端构建的工作，对于后端构建以及项目打包发布的工作需要由后端来完成，如果你的是javaweb类型，后端发布可以用maven，它可同时完成后端构建和打包的任务。之所以有本脚手架的产生，主要还是因为目前前后端结合型项目的开发方式还是非常常见，毕竟不是每个公司都有资源去做到完全的前后端分离这类的架构，尤其是小公司或者是项目型公司，没有那么的人和时间等资源能让你玩高级的东西，快速开发才是王道。但是对于任何一个web项目来说，前端部分的基础服务都是一样的，比如图片优化，css和js合并压缩等，而且这都是在团队资源运行的情况下最好做的，对于项目质量，只有好处没有坏处。本脚手架的产生，正是从工作中总结出来的一套开发架子，基于这个架子，你可以很方便得到由它给你带来的以下好处：
* css和js的模块化，有助于提供项目的代码质量，便于将来的维护
* 图片的优化，css和js的压缩合并，极大地减少了请求的数据量和请求数，十分利于项目的访问性能
* 前端任务全自动构建，不用担心编译和文件拷贝等之类的问题，遵循本项目的约定，你会发现css和js的开发结构是如此清晰

## 2. 项目结构
```
WEB-INF/
html/
img/
js/
less/
Gruntfile.js
bower.json
optimize.json
package.json
```
因为本脚手架是结合demo一起发布到github上的，demo是基于javaweb的，所以你会看到里面有个WEB-INF/文件夹，这个javaweb必须的，html/里面的页面都是jsp模板，这个也是javaweb必须的；所以如果你想把这个脚手架应用于asp.net和php需要你删掉WEB-INF这个文件夹，然后将html/里的jsp改成aspx或php模板。

另外，不管你想把这个脚手架用于什么类型的项目，最好的使用方式是先把demo跑起来，然后在demo的基础上开发，这样能够减少出错~
```
html/：用来存放页面的模板（jsp,aspx,php）或html文件
img/：存放图片
js/: 存放js
less/: 存放less
Gruntfile.js 这是grunt任务的配置文件
bower.json 这是bower的配置文件
optimize.json 这是requirejs的优化工具的配置文件
package.json 这是grunt依赖的配置文件
```
注：html/,img/,js/,less/这三个文件夹里面还有子文件夹，各自都有相关的约定，后续逐个介绍。在demo运行成功之前，那几个配置文件请先不要改动。

## DEMO

查看DEMO：https://liuyunzhuge.github.io/generator-web/ 支持IE9+，chrome，firefox。

注意：该DEMO是gh-pages搭建，你可以通过查看本项目的gh-pages分支看到demo的文件内容，由于github提供的这种服务仅支持静态网页，所以demo的首页其实是由html/index.jsp转化过来的，另外位置也变了一下，index.jsp原来是放置在html/下面的，gh-pages分支里的index.html放在了跟html/同级的位置，不这么干的话，gh-pages就看不到效果了。

## 3. 安装

由于本项目是结合javaweb一起发布的，所以以下的使用步骤均是在java的开发环境下说明的，IDE为Intellij IDEA。如果你的项目也是javaweb项目，那么推荐你用这个IDE，这是本人用过的最好的java web开发工具，集成了众多前端工具，比如less，emmet和grunt还有bower等。如果你用它来开发项目，你会发现编写less和使用grunt是如此顺畅！纯粹的后台开发可能不挑剔开发工具，但是前端开发如果要结合后台一起弄一下的话， 最好还是使用高级一点的IDE。

### 3.1 第一步

安装nodejs,git,bower,grunt。windows下安装即可，不需要linux。
其中：
* nodejs,git官网都有windows的安装包
* bower和grunt的安装都通过命令行安装，安装方式参照各自官网：
* bower:http://bower.io/
* grunt:http://www.gruntjs.net/getting-started

如果你是一个前端开发，但是还没接触过nodejs,git,bower,grunt，建议你早点接触学习。

注：这一步与IDE和后端语言没有任何关系。不管什么语言的项目，这个都是使用本脚手架的基础。

### 3.2 第二步

新建web项目，比如我用IDEA新建一个项目名为generator-web-demo，它的项目结构如下：
```
.idea/
src/
web/
generator-web-demo.iml
```
其中.iead/和generator-web.iml都是IDEA建完项目以后创建的，可以不用管。src是java源文件的目录，web文件夹是项目的web根目录。

### 3.3 第三步

download zip或者用git  clone本项目，复制本项目的以下文件夹或文件粘贴到你项目的web根目录（前一步提到的web文件夹）：
```
html/
img/
js/
less/
WEB-INF/
bower.json
Gruntfile.js
optimize.json
package.json
```
WEB-INF直接覆盖原来的WEB-INF即可。如果原来的web/下有一个index.jsp，可以把它删掉，我的习惯是把页面都放一块，html/已经提供一个index.jsp了。

最后你的项目结构应该如下：
```
.idea/
src/
web/
    html/
	img/
	js/
	less/
	WEB-INF/
	bower.json
	Gruntfile.js
	optimize.json
	package.json
generator-web-demo.iml
```

### 3.4 第四步

使用bower安装bower.json中配置的库（jquery,iCheck,requirejs,bootstrap）
```
bower install --save
```
注：以上库除requirejs是脚手架必须的外，其它均可根据实际项目需要进行添加和删除，不过为了把demo先跑起来，还是别去改它，看懂了构建的原理再来根据项目需要修改也不迟。

安装grunt和grunt插件：
```
npm install --save
```
如果npm安装速度慢，可以按下面网址提供的方式安装，速度会快一些：
http://npm.taobao.org/

### 3.5 第五步
执行grunt的default任务：
```
grunt default
```
如果执行grunt这个任务报错，我遇到的只是grunt-contrib-imagemin插件报的错，你可以下面的命令重装grunt-contrib-imagemin即可
```
npm uninstall grunt-contrib-imagemin --save
npm install grunt-contrib-imagemin --save
```
重装完再重试，还报同样的错误再重装重试。

启动你的web服务器，比如tomcat。打开浏览器访问应该就能看到跟demo一致的首页效果:）。如：
http://localhost:8080/
如果你配置了contextpath的话就是
http://localhost:8080/generator-web-demo/

如果你在运行的demo过程中遇到有任何问题，尽管发起issue跟我讨论，欢迎~

## 4如何在demo的基础上进行开发

### 4.1 开发页面
每开发一个页面都放在html/下面，目前demo内包含：
```
html/
   base/
      body_end.jsp
      head_end.jsp
      head_start.jsp
   index.jsp
   ltIE9.html
```
其中：base/下的是一些公共的jsp页面，你看下index.jsp里面的那些inclue你就明白了。
ltIE9.html是一个提示页面，如果用户以IE8及以下的IE浏览器访问就会调到这个页面提示更新浏览器或者下其它的好用的浏览器。

如果你的项目是asp.net的项目，请把这些jsp都替换成aspx。

这个html/的思路是：base/放公共的，其它页面按模块分，如果一个模块只有一个页面，那么就把它直接放在html/下面，如果一个模块有多个页面，可以在html/以模块名建一个文件夹，相关页面都放那里面。

你在开发页面的时候，建议：__html/base/下的公共jsp保留，新页面以index.jsp为参考进行开发，可以往base/内添加更多公共页面，也可按模块对新页面进行分类。__

### 4.2 baseUrl的问题
这个问题是这样的，打比方说：
* 你如果用eclispe开发项目，启动tomcat以后，打开浏览器访问，必须以[http://主机名:端口/工程名/]的方式才能访问，以generator-web-demo举例，就必须用[http://localhost:8080/generator-web-demo/]才能访问，当然这个能改，我这里是拿一般情况举例
* 如果是IDEA开发，就不用考虑这个工程名的问题，因为它的tomcat默认配置，就是省略工程名的方式，它可以直接通过http://localhost:8080/访问
* 这个工程名的配置就是contextpath，因为这个contextpath的存在可能导致你页面里的css，img，和script加载时出现加载不到资源的情况，所以通常在前后端结合型项目中，一定得把这个contextpath统一起来，让所有的资源加载都是相对同一个路径进行解析
* 常见的处理方式就是把所有资源的url的contextpath及之前的那一段设置到html的base元素上，由于base元素的作用，可以保证脚本和css还有图片的加载都相对于这个base的href属性进行解析

base元素设置的代码如下<head_start.jsp>：
```html
<%
    String base = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
    base += base.endsWith("/") ? "" : "/";
    request.setAttribute("base", base);
    request.setAttribute("rnd", "?v=0.0.1");
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <base href="${base}">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--[if lt IE 9]>
    <meta http-equiv="Refresh" content="0; url=${base}html/ltIE9.html"/>
    <![endif]-->
```
引用css，图片和js时，直接使用相对web根目录的路径进行引用:
```
<link href="css/index.css" rel="stylesheet">
<img src="img/dist/logo.png" alt="LOGO">
<script data-main="js/dist/mod/index" src="js/dist/lib/require.js"></script>
```
还记得web根目录的这个结构吧：
```
web/
    img/
    css/
    js/
```

### 4.3 图片
约定项目相关的图片放在img文件夹下，img/的结构为：
```
img/
   dist/
   src/
   temp/
```
这个目录结构最好是不改变。其中：
* dist/存放经过grunt图片优化任务之后的图片，也是代码中图片的引用路径
* src/存放待优化的图片源文件
* temp/按雪碧图存放各个雪碧图的原图片文件，比如你制作了一张雪碧图，你把它命名为common.png，那么就在temp/里面，新建一个common的文件夹，把你制作雪碧图时用到的源图都放进去，这样将来你需要调整雪碧图的时候还能从这里找到源图，雪碧图制作推荐这个工具：http://alloyteam.github.io/gopng/ ,使用它还可以把你每次制作雪碧图的配置导出到本地，下次要修改的时候，重新导入之前的配置，就能上次的状态下继续编辑

__每增加一张图片或雪碧图，就把它丢到img/src里面，页面或css中引用图片时，直接使用img/dist/这个路径去引用即可__

### 4.4 less
约定，css都用less来编写，less文件夹的结构为：
```
less/
    app/
       icon/
       mixin/
       widget/
    mod/
    sprite/
```
其中：
* app/icon/ 存放字体图标文件，以及字体图标的less，比如你如果用iconfont，那么就要把下载下来的iconfont的字体文件复制到app/icon/，把iconfont.css另存成iconfont.less也另存到这个文件夹，grunt的less任务会把iconfont.less跟app/mod/下的less一起编译，然后把字体文件直接复制到web/css/文件夹下
* app/mixin/存放一些定义的less mixin，demo中很多mixin是从bootstrap的源码中提取的
* app/wifdget/存放一些公共组件的less，对于一些公共的模块，比如等header,footer，搜索框，购物车等都可以定义成单个的模块，哪个页面的用到了这个模块，就import一下就好了
* sprite/存放雪碧图相关的less，制作雪碧图时，gopng这个工具会给你提供它生成的css，你可以把它另存为less，我的做法是把雪碧图里每个背景图的css都定义成了mixin,这样html元素在用到某哥背景图时，只要引入这个less文件，调一下mixin就可以了，具体的方式，请参考demo里面sprite/下的两个less的定义方式，以及app/mod/index.less中的使用方式
* app/mod/存放页面的less文件，基本上每个页面一个less，也按模块再建文件夹进行分类，跟开发新页面一样的道理

grunt的less任务，会把app/icon/下的字体拷贝到web/css/下，把app/mod/下的less编译成的css也放到web/css/下，所以页面引入css的时候，要相对css/这个文件夹引用：
```
<link href="css/index.css" rel="stylesheet">
```

在这一块需要注意的问题是字体文件和图片文件的路径问题，记住less编译后的css是放在css/下面的，而图片都是要通过img/dist才能引用的；字体文件跟css默认都是直接位于css/目录下的，具体请多参考demo中app/mod/index.less。

### 4.5 js
约定js源码都在js/src/下定义，js/src/的结构为
```
js/
   js/src/
       app/
          mod/
          widget/
       lib/
       mod/
       common.js
```
其中：
* common.js是requirejs的配置文件
* js/src/mod/存放各个页面的main.js，每个页面底部的script标签上的data-main就是引用的这个文件夹下的js文件如：```<script data-main="js/dist/mod/index" src="js/dist/lib/require.js"></script>```
* js/src/lib/存放依赖的js库，比如jquery,icheck,bootstrap的transition都会通过grunt的任务，从bower下载的位置拷贝到这里，具体请看gruntfile.js的copy任务，同时这个文件夹也是requirejs的baseUrl的位置
* js/src/app/mod/存放各个页面真正执行逻辑的js
* js/src/app/widget存放组件相关的js，比如demo中定义了四个组件，tab,carousel,icheck,radioToggle

在没有优化之前，grunt任务会把js/src/的文件全部拷贝到js/dist/下，在优化之后，grunt任务会把js/dist/mod/下的每个js依赖的所有js，都跟它合并成为一个js。

一个页面相关的js整个加载流程，以demo中的index.js为例：
* 首先页面中先通过：```<script data-main="js/dist/mod/index" src="js/dist/lib/require.js"></script>```加载js/dist/mod/index.js
* 由于index.js的源码为：
```
requirejs(['../common'], function (common) {
    requirejs(['app/mod/index']);
});
```
它会先加载common.js读取配置，然后再加载js/dist/app/mod/index.js执行页面的逻辑
* 到了js/dist/app/mod/index.js后，就是加载各个依赖的模块处理页面逻辑的过程了，整个js的异步依赖跟加载情况就结束了。

所以开发一个js的步骤为，以userCenter.js为例：
* 在js/src/mod/下新建一个userCenter.js
* 在js/src/app/mod/下也新建一个userCenter.js
* 将js/src/mod下的userCenter.js的源码改为：
```
requirejs(['../common'], function (common) {
    requirejs(['app/mod/userCenter']);
});
```
因为js/src/mod/下的js都仅是一个桥梁，所以这个文件夹下的每个js都只有三行。
* 在js/src/app/mod/userCenter.js中编写你的页面逻辑
* 在optimize.json中增加一个对userCenter.js的配置项，以便生产环境构建时能把它依赖的js都跟它合并成一个js

#### 4.5.1 如何配置optimize.json
简单点来说，照着这个模板就可以了：
```
[
    {
        "name": "../mod/index",
        "include": [
            "app/mod/index"
        ]
    }
]
```
比如如果userCenter.js，那么就该配置成：
```
[
    {
        "name": "../mod/index",
        "include": [
            "app/mod/index"
        ]
    },
    {
        "name": "../mod/userCenter",
        "include": [
            "app/mod/userCenter"
        ]
    }    
]
```
具体的原理牵扯的细节就比较多了，可参考以下两个网址去研究以下：
* http://www.requirejs.cn/docs/optimization.html
* https://github.com/requirejs/example-multipage

## 5 构建

### 5.1 开发环境
```
grunt default
```
使用以上任务就会启动构建：

1. 优化图片，并将优化后的图片存放至img/dist/
2. 编译less/mod下的less，并存放至css/
3. 将less/app/icon下的字体文件，拷贝到css/
3. 将js/src/下所有内容，拷贝至js/dist/
4. 监控img/src/，less/，js/src/内的文件变化，一有变化，自动执行相应的1,2,3

这个构建不会压缩css，不会合并压缩混淆js。

### 5.2 生产环境
```
grunt release
```
使用以上任务，完成生产环境构建：

1. 在开发环境构建基础上，进行css压缩
2. 使用requirejs的优化工具优化页面的js，即将它所依赖的模块全部合并成一个js，并做压缩混淆处理

### 5.3 optimize
```
grunt optimize
```
这个任务可用于测试requirejs的合并是否正确，这么操作：
* 先执行```grunt default```
* 再执行```grunt optimize```
* 看看js/dist/mod/下的js，刷新浏览器测试下功能

之所以没跟default任务合并，是因为这个优化任务比较费时

## 6. 打包
打包前，先执行下```grunt default```，提交至代码管理器，git或者svn。另外bower_components和node_modules这两个文件夹千万别传到代码服务器上去，前端用的东西，打包的后台同事怎么会要你这个呢
还要记得提醒他们把以下文件从工程中排除出去：
```
img/src/
img/temp/
js/src/
less/
```
这些文件是没有必要发布出去的。至于具体怎么打包，就是后台同事的责任了。

## 7. 下个版本计划：

目前已知的未解决的问题：
* requirejs异步加载js时的缓存问题，特别严重，目前开发环境可通过配置requirejs的urlArgs解决，但是生产环境时不能用这个
* 静态资源更新的问题
* 自动base64编码

下一步计划：
1. 字体文件和图片文件自动做base64编码
2. css和js的md5处理，解决静态资源更新的问题