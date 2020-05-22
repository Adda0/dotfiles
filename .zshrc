# ====================================================
# File name: .zshrc
#
# Zsh config file
# ====================================================
#
# Author: Adda (David Chocholaty)
# Date: 15. 5. 2020
# ====================================================

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/adda/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# General aliases
alias c='clear'
alias cpconf='cp ./.gitconfig /home/adda/.gitconfig ; cp ./.zshrc /home/adda/.zshrc'
alias e='exit'
alias ex='exit'
alias ls='ls -GFha'
alias tgz='tar -xvfz'

#TODO
#alias cdg='cd ~/git '
#alias st='open -a "Sublime Text" '
#alias bp='st ~/.bash_profile '
#alias trash='rm -rf ~/.Trash/* '

# Git aliases
alias g='git'
alias gut='git'
alias got='git'
alias gs='g s'

#TODO
#alias gi='git init '
#alias gs='git status -sb '
#alias ga='git add '
#alias gc='git commit -m '
#alias gac='ga -A && gc '
#alias gp='git push '
#alias gpo='git push origin '
#alias gpom='git push origin master'
#alias gr='git rm -r '
#alias gb='git checkout -b '
#alias gc-='git checkout - '
#alias gd='git diff '

function gcl {
    git clone ssh://git@github.com/$1/$2.git;
}

#function gacp {
#	git add -A;
#	git commit -m "$1";
#	git push origin $2;
#}



# Rename Terminal Window - Usage: wn 'window name'
function wn {
	printf "\e]2;$1\a"
}

# Rename Terminal Tab - Usage: tn 'tab name'
function tn {
	printf "\e]1;$1\a"
}

# Customize Terminal Prompt - Shows: username/../folder:
#export PS1='\n\u/../\W/: '



#------------------------------------------------------------------------------
# Completion.
#------------------------------------------------------------------------------

# git
#if [[ -f ~/.git-completion.bash ]]; then
#    source ~/.git-completion.bash
#fi
#complete -o default -o nospace -F git g


#  Add Colour
#export CLICOLOR=1
#export LSCOLORS=GxFxCxDxBxegedabagaced


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Created by `userpath` on 2020-03-16 15:46:44
export PATH="$PATH:/home/adda/.local/bin"

# End of file
