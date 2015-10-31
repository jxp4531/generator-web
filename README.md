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

查看DEMO：https://liuyunzhuge.github.io/generator-web/
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
注：这一步与IDE和后端语言没有任务关系。

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

download zip或者用git  clone本项目，复制本项目的以下文件夹或文件粘贴到你项目的web跟目录（前一步提到的web文件夹）：
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
执行grunt的default任务，这个任务是开发环境的构建任务，启动之后任务不会关闭，后台自动监控less/和js/src/和img/src/文件夹的变化，并在变化时自动调用相关任务处理编译和复制的问题：
```
grunt default
```

启动你的web服务器，比如tomcat。打开浏览器访问应该就能看到跟demo一致的首页效果:）。


完善中...
