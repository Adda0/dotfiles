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
#alias bp='st $HOME/.bash_profile '
#alias trash='rm -rf $HOME/.Trash/* '
#alias gr='git rm -r '
#alias gc-='git checkout - '

# navigation
alias c.="cd .."
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias cdr="source ranger"
alias cdb="cd -"

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


# shutdown or reboot
alias sshutdown="sudo shutdown now"
alias soff="shutdown -h now"
alias sreboot="sudo reboot"


# Aliases for ls
#alias ls="ls --no-group --classify --human-readable --all --color" # "ls -GFha --color"
alias ls="exa --all --color=always --classify --group-directories-first --sort=oldest --icons"
#alias l="ls -l --human-readable --all --color" # "ls -lah --color"
alias l="exa --all --long --git --header --color=always --group-directories-first --classify --color-scale --sort=oldest --icons"
alias lsn="exa --all --long --git --header --color=always --classify --color-scale --sort=newest --icons"
alias lso="exa --all --long --git --header --color=always --classify --color-scale --sort=oldest --icons"
alias lst="exa --tree --all --color=always --classify --color-scale --icons"
alias lstl="exa --tree --long --git --header --all --color=always --classify --color-scale --icons"
alias l.='exa -a | egrep "^\."'


#alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
#alias lS='ls -1FSsh'

#alias cat="bat"


# libre office convert docx and pptx to pdf
alias lowpdf="lowriter --convert-to pdf"

alias brave="brave-browser"

# fzf wrappers
alias fzfcd='fzfcd() { cd "$(find -type d 2>/dev/null | fzf)" ;}; fzfcd'
alias fzfed='fzfed() { $EDITOR "$(find -type f 2>/dev/null | fzf)" ;}; fzfed'

# find
#alias fd="find -name"
alias fd='fdfind'
alias fcd='find . -type d -name' # find directory starting from current directory
alias fcf='find . -type f -name' # find file starting from current directory

# General aliases
alias c='clear'
alias e='exit'
alias srczsh="source $HOME/.config/zsh/.zshrc"
alias ra="ranger"
alias cpr="cp -r"
alias rmd="rm -r"
alias v="nvim"
alias n="nvim"
alias ne="nemo 2>/dev/null &"  # open Nemo in home directory
alias nec="nemo . 2>/dev/null &"  # open Nemo in the current directory
alias nv='nvim'
alias md='mkdir'

# Config files
## Copy config files
alias cpconf="
  cpgitconfig ;
  cpzshrc ;
  cpalias ;
  cpnvim ;
  cpranger ;
  cptigrc ;
  srczsh && c
"
alias cpgitconfig="yes | cp ./.gitconfig $HOME/.gitconfig"
alias cpgitconfigs="cpgitconfig && scrzsh && c"
alias cpzshrc="yes | cp ./home/.config/zsh/.zshrc $HOME/.config/zsh/.zshrc"
alias cpzshrcs="cpzshrc && srczsh && c"
alias cpalias="yes | cp ./home/.config/zsh/.oh-my-zsh/custom/custom_aliases.zsh $HOME/.config/zsh/.oh-my-zsh/custom/custom_aliases.zsh"
alias cpaliass=" cpalias && srczsh && c"
alias cpnvim="yes | cpr ./home/.config/nvim $HOME/.config/"
alias cpranger="yes | cpr ./home/.config/ranger $HOME/.config/"
alias cptigrc="yes | cp ./.tigrc $HOME/.tigrc"

## Open config files
alias dotf="cd ~/Documents/it/adda_dotfiles"
alias dotfiles="cd ~/Documents/it/adda_dotfiles"
alias aliases="${=EDITOR} $HOME/.oh-my-zsh/custom/custom_aliases.zsh"
alias gitconf="${=EDITOR} $HOME/.gitconfig"
alias ohmyzsh="${=EDITOR} $HOME/.oh-my-zsh"
alias zshrc="${=EDITOR} $HOME/.zshrc" # Quick access to the $HOME/.zshrc file
alias zshconf="${=EDITOR} $HOME/.config/zsh/.zshrc"
alias grubconf="sudo ${=EDITOR} /etc/default/grub && sudo grub-update"

# Apt commands
alias sai="sudo apt install -y -V"
alias dai="doas apt install -y -V"
alias sau="sudo apt update && sudo apt upgrade -y"
alias dau="doas apt update -V && doas apt upgrade -y -V"
alias sap="sudo apt purge -y -V"
alias dap="doas apt purge -y -V"
alias sar="sudo apt autoremove -y -V"
alias dar="doas apt autoremove -y -V"
alias rem='sudo apt autoremove --purge -V'


# Pacman commands
alias pmu='sudo pacman -Syyu'

# Paru commands
alias parub='paru --bottomup'

# Snap commands
alias snapr="snap refresh"

# Git aliases
## Git command
alias g='git'
alias gut='git'
alias got='git'

alias t='tig status'
alias tt='tig'

## Git shortcuts
alias gi="g i"
alias gb='g cob'
alias gcob="g cob"
alias gc="g c"
alias gcm="g cm"
alias gcom="g cm"
alias gcs="g cs"
alias gap="g ap"
alias gaa="g aa"
alias gaaa="g aaa"
alias glga="g lga"
alias ga="g a"
alias gp="g p"
alias gpa="g pa"
alias gpfa="g pfa"
alias gpl="g pl"
alias gd='g d'
alias gars="g ars"
alias gr="g r"
alias gpo="git pull origin"
alias gpom="git pull origin master"
alias gpp="gp personal"
alias gppm="gp personal master"
alias gs='g s'

#TODO to review
#alias gbd="git branch -D"
#alias gca="git commit -a -m"
#alias gm="git merge --no-ff"
#alias gpt="git push --tags"
#alias grh="git reset --hard"
#alias gb="git branch"
#alias gba="git branch -a"
#alias gcp="git cherry-pick"
#alias gl="git log --pretty='format:%Cgreen%h%Creset %an - %s' --graph"
#alias gcd='cd "`git rev-parse --show-toplevel`"'

function acp() {
  gaaa && gcs && gp
}

# Update fonts
alias font_update="fc-cache -f -v"

# GPG aliases
alias gpgl="gpg --list-secret-keys --keyid-format LONG"
alias gpgg="gpg --full-generate-key"
alias gpge="gpg --armor --export $0"

# SSH key aliases
# Lists the files in your .ssh directory, if they exist.
alias sshl="ls -al $HOME/.ssh"
# Generating public/private rsa key pair.
# ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
function sshg {
    ssh-keygen -t rsa -b 4096 -C "$0"
}

alias sshmerlin="TERM=xterm-color ssh merlin.fit.vutbr.cz"
alias ssheva="TERM=xterm-color ssh eva.fit.vutbr.cz"

# Rust
alias cr="cargo"
alias crb="cargo build"
alias crbr="cargo build --release"
alias crd="cargo doc"
alias crn="cargo new"
alias crr="cargo run"
alias crrr="cargo run --release"
alias crc="cargo check"
alias cru="cargo update"
alias cruf="cargo upgrade"

# Print my public IP
alias myip='curl ipinfo.io/ip'
#alias myip="curl --silent https://ipecho.net/plain; echo"

# Print website IP address
alias pingo="ping -c 1"

# Clone GitHub repository with ssh
function gcl {
    git clone ssh://git@github.com/$1/$2.git;
}

# Rename Terminal Window - Usage: wn 'window name'
function wn {
    printf "\e]2;$1\a"
}

function cdls {
    builtin cd "$@"; l;
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
  if [ -f "$1" ] ; then
    case "$1" in
      *.tar.bz2)   tar xjf "$1"    ;;
      *.tar.gz)    tar xzf "$1"    ;;
      *.bz2)       bunzip2 "$1"    ;;
      *.rar)       unrar x "$1"    ;;
      *.gz)        gunzip "$1"     ;;
      *.tar)       tar xf "$1"     ;;
      *.tbz2)      tar xjf "$1"    ;;
      *.tgz)       tar xzf "$1"    ;;
      *.zip)       unzip "$1"      ;;
      *.Z)         uncompress "$1" ;;
      *.7z)        7z x "$1"       ;;
      *.deb)       ar x "$1"       ;;
      *.tar.xz)    tar xf "$1"     ;;
      *.tar.zst)   unzstd "$1"     ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

alias aliasa='alias | less' # show all aliases

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

#alias rm='trash'
# adding flags
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias lynx='lynx -cfg=$HOME/.lynx/lynx.cfg -lss=$HOME/.lynx/lynx.lss -vikeys'
alias vifm='./.config/vifm/scripts/vifmrun'


# Merge Xresources
alias merge='xrdb -merge $HOME/.Xresources'

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






alias sgrep='grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS} '

alias ta='tail -f'

# Command line head / tail shortcuts
alias -g H='| head'
alias -g T='| tail'
alias -g G='| grep'
alias -g L="| less"
alias -g M="| most"
alias -g LL="2>&1 | less"
alias -g CA="2>&1 | cat -A"
alias -g NE="2> /dev/null"
alias -g NUL="> /dev/null 2>&1"
alias -g P="2>&1| pygmentize -l pytb"

alias dud='du -d 1 -h'
alias duf='du -sh *'

alias h='history'
alias dirs='dirs -v | head -10'
alias hgrep="fc -El 0 | grep"
#alias p='ps -f'
alias sortnr='sort -n -r'
alias unexport='unset'

alias gds-start='sudo systemctl start openvpn-client@gds'
alias gds-stop='sudo systemctl stop openvpn-client@gds'
alias lbrynet='/opt/LBRY/resources/static/daemon/lbrynet'

alias stv_mapstart="xbindkeys ; key-mapper-control --command autoload"
alias stv_mapstop="killall xbindkeys ; key-mapper-control --command stop --device \"BTC USB Multimedia Keyboard\""
