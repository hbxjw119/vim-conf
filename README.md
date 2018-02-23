vim and zsh configure for developers.

System required:
=====
**CentOS**  or  **Ubuntu**

Usage
=====

1. clone this repo

	```bash
	git clone https://github.com/hbxjw119/vim-zsh-conf.git
	```

2. install bundle

	```bash
	cd vim-zsh-conf
	./init.sh
	```

3. open vim，change command line mode, execute ":BundleInstall" to install plugins

4. mv monokai.vim ~/.vim/bundle/vim-colors-solarized/colors


**the next step is not neccessary**

5. git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions

6. edit ~/.zshrc, add zsh-autosuggestions plugins
