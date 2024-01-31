My personal dotfiles

using instructions from
https://www.atlassian.com/git/tutorials/dotfiles
https://medium.com/@simontoth/best-way-to-manage-your-dotfiles-2c45bb280049
https://harfangk.github.io/2016/09/18/manage-dotfiles-with-a-git-bare-repository.html


need to make a script to install and necessary apps and addons

apt install
git
tmux
zsh
vim
neofetch
lolcat

install tmux plugin manager
install zsh ohmyzsh and powerlevel10k



#setup on new host
instructions

#tmux
install tpm (tmux plugin manager) 
https://github.com/tmux-plugins/tpm
this will install the other plugins in .tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

#zsh
install ohmyzsh! first.
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

install powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
and run the configuration real quick

then pull the dotfiles repo and it should be fine

#vim
i think this will just work after adding .vimrc

#NeoVim
build your own neovim to get current version
https://github.com/neovim/neovim/blob/master/BUILD.md
install lazyvim and custom shit

added the $HOME/.config/nvim/lua/plugins/ to dotfiles

#ssh
added .ssh/config

#dotfiles


alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

echo ".dotfiles" >> .gitignore

git clone --bare http://www.github.com/swampfeotus/.dotfiles.git $HOME/.dotfiles/

dotfiles checkout

if there are errors about files already existing back them up or delete.

dotfiles config --local status.showUntrackedFiles no



after you can update files with 

dotfiles status
dotfiles add .vimrc
dotfiles commit -m "Add vimrc"
dotfiles add .bashrc
dotfiles commit -m "Add bashrc"
dotfiles push









GENTOO shit TO Add

this is for gentoo completion in .zsh

autoload -U compinit promptinit
 *      compinit
 *      promptinit; prompt gentoo
 
