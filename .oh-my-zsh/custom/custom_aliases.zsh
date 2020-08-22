# ====================================================
# File name: custom_aliases.zsh
#
# oh-my-zsh custom aliases file
# ====================================================
#
# Author: Adda (David Chocholaty)
# Date: 7. 8. 2020
# ====================================================


#TODO
#alias st='open -a "Sublime Text" '
#alias bp='st ~/.bash_profile '
#alias trash='rm -rf ~/.Trash/* '
#alias gr='git rm -r '
#alias gc-='git checkout - '

alias ytdl='youtube-dl'
# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# Processes
alias ps="ps auxf" # show all processes, display user-oriented format, show processes that aren't attached to ttys, use full-format listing
alias pse="\ps -e --forest" # list processes as a tree
alias psg="\ps aux | grep -v grep | grep -i -e VSZ -e" # search for a running process. example: psg firefox
alias psr="\ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head" # list top 10 cpu-intensive processes
alias pst="\ps -eo pid,comm,lstart,etimes,time,args"

# Tar commands
alias tgz='tar -xvfz'
alias tarc="tar -cvzf"
alias tarx="tar -xf"


# shutdown or reboot # TODO
alias ssn="sudo shutdown now"
alias off="shutdown -h now"
alias sr="sudo reboot"


# Aliases for ls
#alias ls="ls --no-group --classify --human-readable --all --color" # "ls -GFha --color"
alias ls="exa --all --color=always --classify --group-directories-first --sort=oldest"
#alias l="ls -l --human-readable --all --color" # "ls -lah --color"
alias l="exa --all --long --git --header --color=always --group-directories-first --classify --color-scale --sort=oldest"
alias lsn="exa --all --long --git --header --color=always --classify --color-scale --sort=newest"
alias lso="exa --all --long --git --header --color=always --classify --color-scale --sort=oldest"
alias lst="exa --tree --all --color=always --classify --color-scale"
alias lstl="exa --tree --long --git --header --all --color=always --classify --color-scale"

# libre office convert docx and pptx to pdf
alias lowpdf="lowriter --convert-to pdf"

alias brave="brave-browser"

# fzf wrappers
alias fzfcd='fzfcd() { cd "$(find -type d 2>/dev/null | fzf)" ;}; fzfcd'
alias fzfed='fzfed() { $EDITOR "$(find -type f 2>/dev/null | fzf)" ;}; fzfed'

# find
alias fd="find -name"




set -o vi

# General aliases
alias c='clear'
alias e='exit'
alias ex='exit'
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
  srczsh && c
"
alias cpgitconfig="cp ./.gitconfig ~/.gitconfig"
alias cpgitconfigs="cpgitconfig && scrzsh && c"
alias cpzshrc="cp ./.zshrc ~/.zshrc"
alias cpzshrcs="cpzshrc && srczsh && c"
alias cpalias="cp ./.oh-my-zsh/custom/custom_aliases.zsh ~/.oh-my-zsh/custom/custom_aliases.zsh"
alias cpaliass="cpalias && srczsh && c"
alias cpnvim="cpr ./.config/nvim ~/.config/nvim"

## Open config files
alias dotfiles="cd /mnt/DATA/Data/David/School/dotfiles/"
alias aliases="vim ~/.oh-my-zsh/custom/custom_aliases.zsh"
alias gitconf="vim ~/.gitconfig"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias zshconf="vim ~/.zshrc"
alias grubconf="sudo vim /etc/default/grub && sudo grub-update"

# Apt commands
alias sai="sudo apt install -y"
alias sau="sudo apt update && sudo apt upgrade -y"
alias sap="sudo apt purge -y"
alias sar="sudo apt autoremove -y"

# Git aliases
## Git command
alias g='git'
alias gut='git'
alias got='git'

## Git shortcuts
alias gi="g i"
alias gb='g cob'
alias gc="g c"
alias gcs="g cs"
alias gap="g ap"
alias gaa="g aa"
alias gaaa="g aaa"
alias glga="g lga"
alias ga="g a"
alias gp="g p"
alias gd='g d'
alias gars="g ars"
alias gr="g r"
alias gpo="gp origin"
alias gpom="gp origin master"
alias gs='g s'

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
#alias myip="curl --silent https://ipecho.net/plain; echo"

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
alias mdcd="mkcd"

# End of file
