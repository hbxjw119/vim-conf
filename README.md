vim and zsh configure for developers.

Usage
=====

1. clone本项目

	```bash
	git clone https://github.com/hbxjw119/vim-conf.git
	```

2. 安装bundle管理器

	```bash
	cd vim-conf
	./init.sh
	```
3. 编辑 vimrc 文件, 确认要安装的插件，或者删除不喜欢用的插件

4. 打开vim，命令行模式，执行 ":BundleInstall"安装插件

> 下面两步个人喜好，可以不用
5. mv monokai.vim ~/.vim/bundle/vim-colors-solarized/colors 

6. 编辑 ~/.vimrc， 设置 colorscheme monokai;  编辑~/.zshrc, 添加zsh-autosuggestions插件，大约在62行，在git后，添加zsh-autosuggestions
