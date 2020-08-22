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

## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'


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
alias l.='exa -a | egrep "^\."'



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
alias n="nvim"
alias nv='nvim'

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
alias dai="doas apt install -y"
alias sau="sudo apt update && sudo apt upgrade -y"
alias dau="doas apt update && doas apt upgrade -y"
alias sap="sudo apt purge -y"
alias dap="doas apt purge -y"
alias sar="sudo apt autoremove -y"
alias dar="doas apt autoremove -y"
alias rem='sudo apt autoremove --purge'


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
alias gpl="g pl"
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

### ARCHIVE EXTRACTION ###
# usage: ex <archive_file>
function ex {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# adding flags
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias lynx='lynx -cfg=~/.lynx/lynx.cfg -lss=~/.lynx/lynx.lss -vikeys'
alias vifm='./.config/vifm/scripts/vifmrun'


# Merge Xresources
alias merge='xrdb -merge ~/.Xresources'

# get error messages from journalctl
alias jctl="journalctl -p 3 -xb"

# gpg encryption
# verify signature for isos
alias gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
# receive the key of a developer
alias gpg-retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"

# youtube-dl
alias ytdl='youtube-dl'
alias yta-aac="youtube-dl --extract-audio --audio-format aac "
alias yta-best="youtube-dl --extract-audio --audio-format best "
alias yta-flac="youtube-dl --extract-audio --audio-format flac "
alias yta-m4a="youtube-dl --extract-audio --audio-format m4a "
alias yta-mp3="youtube-dl --extract-audio --audio-format mp3 "
alias yta-opus="youtube-dl --extract-audio --audio-format opus "
alias yta-vorbis="youtube-dl --extract-audio --audio-format vorbis "
alias yta-wav="youtube-dl --extract-audio --audio-format wav "
alias ytv-best="youtube-dl -f bestvideo+bestaudio "

# switch between shells
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Now log out.'"

# bare git repo alias for dotfiles
alias bareconfig="/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME"


# the terminal rickroll
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

# Python
alias py='python3'


# End of file
