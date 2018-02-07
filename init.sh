#!/bin/bash

# create directories
mkdir -p vim/bundle

# get vundle
git clone https://github.com/gmarik/vundle.git $PWD/vim/bundle/vundle

# links
today=`date +%Y%m%d`
if [ -f "$HOME/.vimrc" ]; then
	mv $HOME/.vimrc $HOME/.vimrc.backup.${today}
fi
if [ -d "$HOME/.vim" ]; then
	mv $HOME/.vim $HOME/.vim.backup.${today}
fi

ln -s $PWD/vimrc $HOME/.vimrc
ln -s $PWD/vim $HOME/.vim

mv monokai.vim ~/.vim/bundle/vim-colors-solarized/colors

echo "vim configuration completed!"
echo "config zsh..."
# check zsh
zsh=`cat /etc/shells | grep zsh`

if [ -z "$zsh" ]; then
	linux_cate=`python -mplatform | grep -i centos`
	if [ "$linux_cate" ]; then
		sudo yum install zsh
	else
		sudo apt-get install zsh
	fi
fi

# get oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# get zsh-sug
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions

echo "Done!"
