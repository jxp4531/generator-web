# generator-web

## 概述

本项目是一个脚手架，应用于前后端结合型项目，可以为这种项目提供如下服务：

1. 图片压缩，支持png,jpg,gif格式图片

2. css模块化，使用less编写css

3. js模块化，使用requirejs定义模块

4. css压缩合并，可做到一个页面仅包含一个css文件

5. js压缩合并混淆，可做到一个页面仅包含一个script标签，仅发出2个script请求，其中一个是require.js，另一个则是页面相关的js

6. 以上任务全部可通过grunt自动构建，并且在开发期间，主动触发编译和文件更新，以便在浏览器中刷新能看到最新的效果。

前后端结合型项目是指javaweb，asp.net这种非前后端完全分离的项目，页面通常是jsp或者aspx等服务端模板。本项目结合的demo属于javaweb项目，但是它同样可应用于asp.net和php等web项目。

由于本脚手架应用场景受限于前后端结合型项目，本脚手架仅能解决这类项目的前端构建的工作，对于后端构建以及项目打包发布的工作需要由后端来完成，比如maven，它可同时完成后端构建和打包的任务。之所以有本脚手架的产生，主要还是因为目前行业内前后端结合型项目的开发方式还是非常常见，毕竟每个公司都有资源去做到完全的前后端分离这类的架构，尤其是小公司或者是项目型公司，没有那么的人和时间等资源能让你玩高级的东西，快速开发才是王道。基于本脚手架提供的服务，它可为前后端结合型项目带来如下好处：

1. css和js的模块化，有助于提供项目的代码质量，便于将来的维护

2. 图片的优化，css和js的压缩合并，极大地减少了请求的数据量和请求数，十分利于项目的访问性能

3. 前端任务全自动构建，不用担心编译和文件拷贝等之类的问题，遵循本项目的约定，你会发现css和js的开发结构是如此清晰


## DEMO

查看DEMO：https://liuyunzhuge.github.io/generator-web/ 支持IE9+。

注意：该DEMO是gh-pages搭建，由于github提供的这种服务仅支持静态网页，所以你打开demo看到的首页，是用jsp页面转化过来的，目的是为了让你看到基于本脚手架开发出的项目在实际部署后的应用效果，实际项目打包后的文件结构不一定与gh-pages分支的内容一样。另外该demo只开发了一个首页，但是再开发更多页面也是轻而易举的事。

## 安装

由于本项目是结合javaweb一起发布的，所以以下的使用步骤均是在java的开发环境下说明的，IDE为Intellij IDEA。如果你的项目也是javaweb项目，那么推荐你用这个IDE，这是本人用过的最好的java web开发工具，集成了众多前端工具，比如less，emmet和grunt还有bower等。如果你用它来开发项目，你会发现编写less和使用grunt是如此顺畅！

### 第一步

安装nodejs,git,bower,grunt。windows下安装即可，不需要linux。
其中：
nodejs,git官网都有windows的安装包
bower和grunt的安装都通过命令行安装，百度都能找到相应的官网，花半天到1天的时间，就能了解它们的作用和基本用法
```
npm install -g bower
npm install -g grunt-cli
``` 
注：这一步与IDE和后端语言没有任何关系。

### 第二步

新建javaweb项目，比如我用IDEA新建一个项目名为generator-web，它的项目结构如下：
```
.idea/
src/
web/
generator-web.iml
```
其中.iead/和generator-web.iml都是IDEA建完项目以后创建的，可以不用管。src是java源文件的目录，web文件夹是项目的web根目录。

### 第三步

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
generator-web.iml
```

### 第四步

使用bower安装bower.json中配置的库：jquery,iCheck,requirejs,bootstrap：
```
bower install --save
```
注：以上库除requirejs是脚手架必须的外，其它均可根据实际项目需要进行添加和删除，jquery,iCheck,bootstrap是demo中用到的。

安装grunt和grunt插件：
```
npm install --save
```
如果npm安装速度慢，可以百度搜淘宝npm，使用淘宝提供的镜像原安装，速度会快一些。

### 第五步
执行grunt的default任务，这个任务是开发环境的构建任务，启动之后任务不会关闭，grunt后台自动监控less/和js/src/和img/src/文件夹的变化，并在变化时自动调用相关任务处理编译和复制的问题：
```
grunt default
```

启动你的web服务器，比如tomcat。打开浏览器访问应该就能看到跟demo一致的首页效果:）。

## 开发

### base的设置
由于web项目的contextpath的问题，可能导致requirejs加载不到部分模块，所以必须通过base来设置网页的基准url，以便项目里的所有css和js都可以通过相对路径来设置，并且这个相对路径的基准路径始终是base所设置的那个url，借助于后端模板的优势，可以在html/base/head_start.jsp中如下定义：
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
每个jsp页面的开发都可参考html/index.jsp

### 图片

脚手架约定，项目相关的图片放在img文件夹下，img/的结构为：
```
img/
   dist/
   src/
   temp/
```
美工给你提供的切图或者你自己在网上找到的图片都放置在src文件夹，grunt的任务会帮你把图片优化之后复制的dist文件夹内，你在页面或css还有js中引用图片的时候，只要引用dist文件夹即可，如：
```
<img src="dist/logo.pn" alt="log">
```
temp文件夹的作用是存放雪碧图制作的源文件，如果你想把多张图片制作成雪碧图的话，可以把每张雪碧图的图片都在temp文件夹内再新建一个文件夹存放，这个文件夹的名称跟你雪碧图的名称一致即可，最后把雪碧图放到src文件夹内即可。之所以这么做，是因为雪碧图可能需要经常调整，这样更方便管理。
雪碧图制作推荐使用腾讯的gopng工具，这是一个在线制作雪碧图的工具，可支持生成雪碧图，定义雪碧图相关的css模板和导出每次雪碧图的配置文件，下次要修改的时候，直接把配置文件拖入到工具内就能在上次的状态继续编辑！

### less

脚手架约定，css都用less来编写，less文件夹的结构为：
```
less/
    app/
       icon/
       mixin/
       widget/
    mod/
    sprite/
```
less/app存放公共的一些css模块，每个页面的less都在less/mod下定义，sprite/存放雪碧图相关的less，具体使用说明如下：

1. 字体图标请放到less/app/icon/下，字体图标的相关的css需要另存为less文件存放，也是放在less/app/icon下
2. mixin都放在less/app/mixin下
3. 公用模块可放在les/app/widget下
4. grunt任务会把less/mod下的less文件全部编译好然后放到web/css/文件夹下，会把less/app/icon下的字体文件复制到web/css文件夹下。
5. less/mod下的less可通过import和变量去使用app和sprite下面的css，具体可查看demo里面的less/mod/index.less
6. 页面中通过css/index.css的方式引用css，参考index.jsp。

以上less的文件夹结构可根据项目的需要调整，不过相应的Gruntfile.js里面的任务也需要去调整。

### js

脚手架约定，所有js都在js/src文件夹下定义，因为grunt会把src下的文件最后都复制到js/dist文件夹下，在没有使用优化工具之前，js/dist和js/src下的文件没有区别。js/的结构：
```
js/
   js/dist/
   js/src/
       app/
          mod/
          widget/
       lib/
       mod/
       common.js
```
这个结构不能改变，这是受requirejs开发多页程序时，使用优化工具的限制。其中：

js/src/common.js是requirejs的配置文件，baseUrl,shim都是配置在那的。

js/src/mod存放每个页面的js，这个js代码很简单
```
requirejs(['../common'], function (common) {
    requirejs(['app/mod/index']);
});
```
js/src/mod下每个文件的结构应该都跟上面的代码一致，因为页面真正的js是在js/app/mod下，之所以需要这一层跳转是为了保证common.js始终在页面的js之前加载，否则页面的js将读不到common.js里的配置。

具体可参考js/src/mod/index.js的写法。引用的时候参考index.jsp。

## 构建

### 开发环境
```
grunt default
```
使用以上任务就会启动构建：

1. 优化图片，并将优化后的图片存放至img/dist/
2. 编译less/mod下的less，并存放至css/
3. 将js/src/下所有内容，拷贝至js/dist/
4. 监控img/src/，less/，js/src/内的文件变化，一有变化，自动执行相应的1,2,3

开发环境的构建不会：

1. 压缩css，方便你去调试

2. 不会压缩合并和混淆js，方便调试

### 生产环境
```
grunt release
```
使用以上任务，完成生产环境构建：

1. 在开发环境构建基础上，进行css压缩

2. 使用requirejs的优化工具优化页面的js，即将它所依赖的模块全部合并成一个js，并做压缩混淆处理，这样页面的js只要加载一次，就把它依赖的所有js都加载过来了。


## 优化配置
这里说的是requirejs的优化配置，由于requirejs的优化需要为每个页面的js配置一次，所以为了避免直接在gruntfile.js里去配置，将所有要优化的模块都配置在optimize.json文件里：
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
每增加一个页面，就要在这个数组里增加一个条目。配置方式类似上面的代码，具体的原理可去参考requirejs官方文档中关于优化工具的配置说明，如果你不想搞那么明白，可以就按上面的方式配置即可。

## 打包

前面说过，打包要靠后台，步骤如下：

1. 先执行`grunt release`任务，然后提交至版本管理

2. 后台同事在他的工程里把img/src/,img/temp/，less/和js/都排除出去，然后用maven或者IDE打包即可。

##下个版本计划：

1. 字体文件和图片文件自动做base64编码

2. css和js的md5处理