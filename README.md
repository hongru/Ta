# Ta

工具链路一键打包安装 MTBFE 推荐的工具和环境。
参考：[基于工具的开发流程最佳实践](http://gitlab.alibaba-inc.com/mtb/doc/wikis/best-practicies)

>
注：目前此一键安装脚本仅适用于 MacOSX

目前包含的工具和环境有：

* [Homebrew](http://brew.sh)
    * MacOS推荐的软件管理工具
* [Git](http://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
    * 不用说，你懂的
* [Nginx](http://nginx.org/en/download.html)
    * 本地服务器
* [nvm](http://node.alibaba-inc.com/env/README.html)
    * Node 多版本管理工具
* [Nodejs@0.11 & Nodejs@0.12](http://nodejs.org)
    * 不用说，你懂的
* [tnpm](http://npm.alibaba-inc.com/)
    * npm的阿里镜像，Node Module 下载速度提升利器
* [bower](http://bower.io/)
    * 新一代前端模块管理方案
* [gulp](http://gulpjs.com)
    * 基于任务和文件流的前端构建方案
* [adam](http://gitlab.alibaba-inc.com/one-request/adam)
    * MTBFE 的新一代可扩展模板脚手架工具
* [awp](https://www.npmjs.com/package/or-awp)
    * MTBFE 的[AWP](http://h5.taobao.org)页面发布管理工具
* [ppa](http://web.npm.alibaba-inc.com/package/@ali/ppa)
    * MTBFE 的[PackageApp](http://www.atatech.org/articles/23279) 的CLI发布工具
* [tbupload](http://web.npm.alibaba-inc.com/package/@ali/or-uploadimg)
    * MTBFE 的图片批量上传工具。支持发布到[TPS](http://tps.tms.taobao.com/daogou/photo/index.htm) 和[MT](http://mt.alibaba-inc.com/file/index)
* [browserify](http://browserify.org/)
    * 解耦的浏览器端CMD管理模块依赖的方案

## Usage (@Macos)

```
$ curl -O https://raw.githubusercontent.com/hongru/Ta/master/Install.sh && chmod 777 ./Install.sh && ./Install.sh
```

![img](http://gw.alicdn.com/tfscom/TB11BMCIXXXXXb3XXXXCMqh1VXX-1624-1032.png_960x960.jpg)
