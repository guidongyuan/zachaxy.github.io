---
title: Mac快速上手
date: 2017-11-13 19:20:59
tags: 工具
---

# 基本快捷键

## 映射关系

在看一些软件提供的快捷键时，都是给出如下的字符，其与键盘上的按键对应关系如下：

- ⌘ (command)
- ⌥ (option)
- ⇧ (shift)
- ⌃ (control)
- ⌫ (delete)

## MacOS 基本快捷键

当你熟记了这 4 个符号之后，那么就来记一些常用的快捷键吧：

- `⌘ + tab` 切换应用程序
- `⌘ + ⌫` 将选中的文件移动到废纸篓
- `⌘ + c` 拷贝
- `⌘ + v` 粘贴
- `⌘ + ⌥ + v` 移动文件
- `⌘ + q` 退出当前应用
- `⌘ + h` 隐藏当前窗口
- `⌘ + m` 最小化当前窗口
- `⌘ + w` 关闭当前窗口
- `⌘ + <-` 移动到行首，类 win 下的 home
- `⌘ + ->` 移动到行末，类 win 下的 end
- `⌘ + delete`删除光标之前整行内容/选中文件的话，会将该文件移动到废纸篓(删除文件的功能更常用)
- `fn + delete`删除光标之后的一个字符；
- `⌥ + delete` 删除光标之前的一个单词（英文有效）；


- `⌘ + ⌥ + Esc` 类似 win 下的任务管理器，用来强制关闭应用

休眠、关机

- 休眠快捷键:`ctrl + shift + 右上角`
- 关机快捷键:`cmd + opt + 右上角`

最近常用的系统快捷键：

- `⌘ + 空格` 打开 spotlight
- `⌥ + 空格` 打开 iterm2
- `⌃ + 空格` 中英文输入源切换；不知道为什么，搜狗输入法和系统自带英文输入法会非人为切换，这是要切换回来就用该快捷键


# 显示隐藏文件
`Command+Shift+.` 可以显示隐藏文件、文件夹，再按一次，恢复隐藏；但是这个方法是有版本限制的，目前在10.11上用不了;可能12上有用。

另一种可行的方法命令行执行显示隐藏文件：

```
defaults write com.apple.finder AppleShowAllFiles -bool true;
KillAll Finder
```

不显示,将上面的 true 改为 false 即可。

## 解决 IDE 中配置环境变量的问题

很多 IDE 需要制定 SDK 的位置。例如使用 Intellj Idea开发 Groovy，就需要配置其 GROOVY 的路径，可是其路径安装时被放在了一个隐藏路径下，而在 ide 中选择路径时，是无法显示隐藏路径的。
解决方法：finder下使用Command+Shift+G 可以前往任何文件夹，包括隐藏文件夹。这时将隐藏的路径**拖到**左边的快速导航，然后在IDE 中选择路径，点击左侧的快速导航即可。


# homebrew

## 简介

mac os 中的软件包管理器，类似 CentOS 中的 yum，Ubuntu 中的 apt-get。
安装方式：在终端中输入：`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

接下来就可以想 yum 那样在 macOS 中使用 brew 命令来安装软件了；

Homebrew 会将软件包安装到独立目录(默认：/usr/local/Cellar)，并将可执行文件软链接至 /usr/local/bin

## 常用命令

- brew search xxx：在软件仓库中搜索 xxx 软件，支持正则搜索
- brew install xxx：安装 xxx 软件
- brew uninstall xxx：卸载 xxx 软件，前提是使用 brew install 安装过的，其它方式不行；
- brew info xxx:显示 xxx 软件的版本信息，安装路径，依赖信息等；
- brew deps xxx：显示 xxx 软件的依赖；


- brew list：查看使用 brew install 安装过的软件
- brew update：更新 homebrew，但是没有必要单独执行这个命令，我们每次在执行 brew install 的时候，都会先执行 brew update

# sdkman
之前在学习 groovy 的时候,查看groovy 的官网，其推荐的安装方式是先安装 sdkman， 然后通过 sdk man 来安装 groovy。
sdkman 和前面介绍的 homebrew 有些类似，都是软件管理工具。而与 homebrew 不同的是，sdkman 不仅可以方便的安装软件，同时还可以管理多个开发工具版本之间的切换，eg：python2.x 和 python3.x，用 sdkman 就能很好的解决。
其安装方式：

```
curl -s get.sdkman.io | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
```
第一步是安装，第二步是将 sdkman 配置到环境变量中，因为我使用的是 zsh，所以其自动写到了 `.zshrc`文件中。
最后其安装软件的方式也很简单，这里以安装 **GROOVY** 为例
```
sdk install groovy
```
其所下载的软件被放到了`/Users/用户名/.sdkman/candidates/`

其安装软件的方式和 homebrew 是类似的，只需一个命令即可安装。
当然其强大的地方还在于可以管理多个软件的版本，具体使用请参考[官网](http://sdkman.io/usage.html)

# sublime

目前最常用的快捷键：

- ⌘ + c 复制当前行
- ⌘ + v 粘贴当前行
- ⌘ + x 剪切当前行
- shift + ⌘ + <-:选中光标到行首的所有字符
- shift + ⌘ + ->:选中光标到行首的所有字符
- shift + ⌥ + <-:选中光标到行首的一个单词
- shift + ⌥ + ->:选中光标到行首的一个单词


- ⌘ + d：高亮下一个选中的单词
- ⌘ + ctrl + g:高亮选中的所有单词
- ⌘ + ⌥ ：矩形区域选择
- ⌘ + shift + v (Win: Ctrl-Shift-v) 进行自适应缩进的粘贴


- ⌘ + enter 另起一行
- ⌘ + ⌃ 上下行切换

## 插件安装

首先要安装的是 Package Control 插件，它是一个方便 Sublime text 管理插件的插件。
从菜单 View -> Show Console 或者 `ctrl + ~` 快捷键，调出 console。将以下 Python 代码粘贴进去并 enter 执行(注：针对的是 sublime3)

```python
import urllib.request,os; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); open(os.path.join(ipp, pf), 'wb').write(urllib.request.urlopen( 'http://sublime.wbond.net/' + pf.replace(' ','%20')).read())
```

接下来再安装插件就可以通过 Package Control 来安装了，快捷键 `Ctrl+Shift+P`（菜单 – >Tools –> Command Paletter），输入 install 选中Install Package并回车,然后输入想要安装的插件名称即可，支持模糊搜索。

插件推荐如下：

- Alignment：代码对齐插件
- BracketHilight：括号配对显示
- DocBlockr：注释块
- SublimeLinter：代码检查，还需要和具体的语言插件配对才可以使用eg:SublimeLinter-javac 使用，最好还是用编译器写代码。。
- SideBarEnhancements：mac 下的名称，win 下叫 sidebar，提供了侧边连的增强功能；
  -

## 主题配置

主题的安装同插件一样，在 Package Control 中直接搜索即可。目前用的 `Material Theme`

## 个人配置

```json
{
	"always_show_minimap_viewport": true,
	"bold_folder_labels": true,
	"color_scheme": "Packages/Material Theme/schemes/Material-Theme.tmTheme",
	"draw_white_space": "all",
	"font_size": 15,
	"highlight_line": true,
	"ignored_packages":
	[
		"Vintage"
	],
	"indent_guide_options":
	[
		"draw_normal",
		"draw_active"
	],
	"overlay_scroll_bars": "enabled",
	"rulers":
	[
		100
	],
	"save_on_focus_lost": true,
	"scroll_past_end": true,
	"show_encoding": true,
	"show_full_path": true,
	"show_line_endings": true,
	"spell_check": false,
	"tab_size": 4,
	"theme": "Material-Theme.sublime-theme",
	"trim_trailing_white_space_on_save": true,
	"word_wrap": true
}
```

# Iterm2 的使用

Iterm2 与系统自带的 terminal 类似，但是其功能更为强大；

## 基本快捷键

编辑相关：(注意和光标移动相关的操作全是 ctrl 打头的)

- 清除当前行：ctrl + u
- 到行首：ctrl + a
- 到行尾：ctrl + e
- 删除光标之前的单词：ctrl + w
- 删除到文本末尾：ctrl + k
- 清屏：ctrl + l 或者 command + r

编辑中不太常用的：

- 搜索命令历史：ctrl + r (类似于 history | grep xxx，搜索之前执行过的命令)
- 前进后退：ctrl + f/b (相当于左右方向键)
- 上一条命令：ctrl + p
- 交换光标处文本：ctrl + t

历史记录：

- 查看历史命令：`command + ; `(输入若干字符，弹出自动补齐窗口，列出曾经使用过的命令)
- 查看剪贴板历史：command + shift + h

标签相关：

- 新建标签：command + t
- 关闭标签：command + w
- 切换标签：command + 数字 command + 左右方向键
- 切换全屏：command + enter
- 查找：command + f

分屏相关：(使用频率较低)

- 垂直分屏：command + d
- 水平分屏：command + shift + d
- 切换屏幕：command + option + 方向键 command + [ 或 command + ]

## 全局呼出

默认是 `option + 空格`
修改方法是在 preference->keys->hot key 勾选，并设置；
将快捷键改为 command + command，也是个不错的选择；

## 智能选中

在 iTerm2 中，双击选中，三击选中整行，四击智能选中（智能规则可配置），可以识别网址，引号引起的字符串，邮箱地址等。（很多时候双击的选中就已经很智能了）
在 iTerm2 中，选中即复制。即任何选中状态的字符串都被放到了系统剪切板中。

## 巧用 Command 键

按住⌘键:

- 可以拖拽选中的字符串；
- 点击 url：调用默认浏览器访问该网址；
- 点击文件：调用默认程序打开文件；
- 如果文件名是filename:42，且默认文本编辑器是 Macvim、Textmate或BBEdit，将会直接打开到这一行；
- 点击文件夹：在 finder 中打开该文件夹；
- 同时按住option键，可以以矩形选中，类似于vim中的ctrl v操作。

## 高亮当前光标：

`⌘ + /` :如果一个标签页中开的窗口太多，有时候会找不到当前的鼠标，找到它。

# zsh

终极 shell —— zsh

## 切换为 zsh

通过 `cat /etc/shells` 查看系统自带的 shell，有如下几个：

```
/bin/bash
/bin/csh
/bin/ksh
/bin/sh
/bin/tcsh
/bin/zsh
```

目前系统默认使用的是 bash，接下来使用 `chsh -s /bin/zsh`将默认的 bash 切换为 zsh，当然想换回默认的 bash，只需键入 `chsh -s /bin/bash`

zsh 的配置主要集中在用户当前目录的.zshrc里，我们对 zsh 的配置都在这个文件中，注意每当我们修改了该配置文件中的内容，都要用 *source ~/.zshrc*，使配置生效！

## 安装 Oh My ZSH

zsh 相比于 bash 有很强的扩展性，但是其配置过于复杂，于是就有了 Oh My ZSH 来帮助我们简化 zsh 的配置

安装过程也很简单：
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

其被安装到了 `/Users/zachaxy/.oh-my-zsh`

现在整个 shell 的配置文件是 ~/.zshrc,所有的环境变量都在这里改动；

## alias 重命名功能

例如我们为 sublime 添加一个 subl 的命令行，因为 sublime 本身就在其 bin 目录下有一个 subl 的可执行文件，所以直接拿来用就可以，在 zshrc 配置文件添加如下：
alias subl="Applications/Sublime Text.app/Contents/SharedSupport/bin/subl"

然后执行：source .zshrc 是配置生效
接下来执行：subl xxx 就会创建并打开一个 xxx 文件；

## zsh 配置插件

打开 ~/.zshrc 配置文件,找到 plugins 的配置，在括号里填入我们想要的插件就可以，可供选择的插件可以在 ~/.oh-my-zsh/plugins,其具体功能可以参考其 github 上的 [readme 说明](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins)

```
plugins=(
  git
  autojump
  extract
  sublime
)
```

这里推荐几个可能用的到的插件，注意插件安装的越多，iterm2启动越慢!

插件推荐：

- git：默认自带，主要是 alias 一些 git 的命令

- sublime：提供打开文件夹功能，常用命令有：st

  ```
  If st command is called without an argument, launch Sublime Text

  If st is passed a directory, cd to it and open it in Sublime Text

  If st is passed a file, open it in Sublime Text

  If stt command is called, it is equivalent to st ., opening the current folder in Sublime Text

  If sst command is called, it is like sudo st, opening the file or folder in Sublime Text. Useful for editing system protected files.

  If stp command is called, it find a .sublime-project file by traversing up the directory structure. If there is no .sublime-project file, but if the current folder is a Git repo, opens up the root directory of the repo. If the current folder is not a Git repo, then opens up the current directory.
  ```


- extract：功能强大的解压插件，所有类型的文件解压一个命令x全搞定，再也不需要去记tar后面到底是哪几个参数了。

- web-search：命令行：google Android,就会打开浏览器，并用 Google 搜索 Android；(本机 ip暂时不稳定，暂不设置)

- wd：快捷文件夹，以后会用到吧；

- autojump：必选插件,快速进入某一文件夹。

  需要先下载，通过 `brew install autojump`，然后在 `~/.zshrc`的最后添加如下指令，  `[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh` ，同时在 plugins 中填入 autojump 插件，这样 autojump 就可以用了，用法：

  ```
  首先，要在 zsh 中进入过某一目录 eg：xxx，这样 autojump 就会在自身的数据库中缓存结果，等下次再进入的话，只需要键入 j xxx，在按下 tab 键列出可选目标，然后在通过 tab 选择对应目录,xxx 支持正则，如果之前进入过多个不同位置但是名字相同的文件夹xxx，那么不同 xxx 在数据库中有一个优先级。  可以使用 autojump -h 来查看所有权重，设置权重，清除数据库等；
  ```

## zsh 主题配置

同样是在 `~/.zshrc` 中，找到 `ZSH_THEME="robbyrussell"`，在这里配置主题，默认的是 robbyrussell，当然可以换成别的，其它可选的主题都在 `~/.oh-my-zsh/themes`,[预览样式](https://github.com/robbyrussell/oh-my-zsh/wiki/Themes)

这里挑几个较好的主题：

- blinks
- gentoo
- gianu
- muse
- pygmalion
- ys

最后修改配置，不要忘记执行： `source ~/.zshrc`，使配置生效

# Java 环境配置
[下载地址](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)找到MacOS 的安装包，直接双击安装即可。
安装之后，不需要配置 Java 环境变量，直接在命令行就可以使用 Java 了，其安装位置是在：`/Library/Java/JavaVirtualMachines/`，同时系统也为刚刚的安装的 JDK 创建了软连接：`/usr/libexec/java_home`，也正是因为这个软连接，我们才可以在命令行中直接使用 Java 命令。

## 配置 JAVA_HOME
虽然在命令行已经可以直接使用 Java 命令了，但是一些软件依然需要`JAVA_HOME`的环境变量，在`./zshrc`中添加如下配置：
```
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$JAVA_HOME/bin:$PATH
```
# 参考

[刚从 Windows 转到 macOS，如何快速上手操作](https://sspai.com/post/41371)
[你应该知道的 iTerm2 使用方法--MAC终端工具](http://wulfric.me/2015/08/iterm2/)
[iTerm2 快捷键大全](https://cnbin.github.io/blog/2015/06/20/iterm2-kuai-jie-jian-da-quan/)



