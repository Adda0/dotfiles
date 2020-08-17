# ====================================================
# File name: custom_aliases.zsh
#
# oh-my-zsh custom aliases file
# ====================================================
#
# Author: Adda (David Chocholaty)
# Date: 7. 8. 2020
# ====================================================

# General aliases
alias c='clear'
alias e='exit'
alias ex='exit'
#alias ls="ls --no-group --classify --human-readable --all --color" # "ls -GFha --color"
alias ls="exa --all --color=always --classify --group-directories-first"
#alias l="ls -l --human-readable --all --color" # "ls -lah --color"
alias l="exa --all --long --git --header --color=always --group-directories-first --classify --color-scale" # "exa -la --color=always --group-directories-first"
alias lst="exa --tree --all --color=always --classify --color-scale"
alias lstl="exa --tree --long --git --header --all --color=always --classify --color-scale"
alias tgz='tar -xvfz'
alias srczsh="source ~/.zshrc"
alias ra="ranger"
alias dotf="cd /mnt/DATA/Data/David/School/dotfiles"
alias cpr="cp -r"
alias rmd="rm -r"
alias c.="cd .."
alias v="nvim"
alias n="v"

# Config files
## Copy config files
alias cpconf="
  cpgitconfig ;
  cpzshrc ;
  cpalias ;
  cpnvim ;
  srczsh
"
alias cpgitconfig="cp ./.gitconfig ~/.gitconfig"
alias cpgitconfigs="cpgitconfig && scrzsh"
alias cpzshrc="cp ./.zshrc ~/.zshrc"
alias cpzshrcs="cpzshrc && srczsh"
alias cpalias="cp ./.oh-my-zsh/custom/custom_aliases.zsh ~/.oh-my-zsh/custom/custom_aliases.zsh"
alias cpaliass="cpalias && srczsh"
alias cpnvim="cpr ./.config/nvim ~/.config/nvim"

## Open config files
alias dotfiles="cd /mnt/DATA/Data/David/School/dotfiles/"
alias aliases="vim ~/.oh-my-zsh/custom/custom_aliases.zsh"
alias gitconf="vim ~/.gitconfig"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias zshconf="vim ~/.zshrc"
alias grubconf="sudo vim /etc/default/grub && sudo grub-update"

# Apt commands
alias ins="sudo apt install -y"
alias upt="sudo apt update && sudo apt upgrade -y"
alias arm="sudo apt autoremove -y"

#TODO
#alias cdg='cd ~/git '
#alias st='open -a "Sublime Text" '
#alias bp='st ~/.bash_profile '
#alias trash='rm -rf ~/.Trash/* '

# Git aliases
## Git command
alias g='git'
alias gut='git'
alias got='git'

## Git shortcuts
alias gi="g i"
alias gs='g s'
alias gc="g c"
alias gcs="g cs"
alias gap="g ap"
alias gaa="g aa"
alias gaaa="g aaa"
alias glga="g lga"
alias ga="g a"
alias gp="g p"
alias gars="g ars"
alias gr="g r"
alias gpo="gp origin"
alias gpom="gp origin master"

# GPG aliases
alias gpgl="gpg --list-secret-keys --keyid-format LONG"
alias gpgg="gpg --full-generate-key"
alias gpge="gpg --armor --export $0"

# SSH key aliases
# Lists the files in your .ssh directory, if they exist.
alias sshl="ls -al ~/.ssh"
# Generating public/private rsa key pair.
# ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
function sshg {
    ssh-keygen -t rsa -b 4096 -C "$0"
}

# Print my public IP
alias myip='curl ipinfo.io/ip'

#TODO
#alias gs='git status -sb '
#alias gc='git commit -m '
#alias gac='ga -A && gc '
#alias gr='git rm -r '
#alias gb='git checkout -b '
#alias gc-='git checkout - '
#alias gd='git diff '

# Clone GitHub repository with ssh
function gcl {
    git clone ssh://git@github.com/$1/$2.git;
}

# Rename Terminal Window - Usage: wn 'window name'
function wn {
	printf "\e]2;$1\a"
}

# Rename Terminal Tab - Usage: tn 'tab name'
function tn {
	printf "\e]1;$1\a"
}

# Make directory and cd into it – usage: mkcd 'dir_name'
function mkcd {
  mkdir -p -- "$1" && cd -P -- "$1"
}

# End of file
