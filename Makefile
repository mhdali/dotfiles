osx:
	stow -t "${HOME}" -v fish
	stow -t "${HOME}" -v iterm2
	stow -t "${HOME}" -v bugwarrior
	stow -t "${HOME}" -v jirarrior
	stow -t "${HOME}" -v ssh
	stow -t "${HOME}" -v vimrc
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
