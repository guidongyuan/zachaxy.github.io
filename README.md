# 博客地址：https://zachaxy.github.io/

这里提供了三个脚本：

- init.sh：使用场景，第一次搭建环境时使用
- sync.sh：使用场景，之前已经搭建好了环境，现在换了一台新电脑，需要进行同步
- publish.sh：使用场景，发布，源文件上传一条龙服务

待解决的问题：
- 第一次搭建的脚本(init.sh)未完成
- hexo version 3.4.3不支持toc，3.4.2才支持。


鉴于在两台不同的机器上配置的环境可能不同。尤其是在package.json中hexo的版本，会因为执行 `hexo g -d` 而修改成本地的。所以修改`publish.sh`中的顺序，先发布，然后在同步源文件。

