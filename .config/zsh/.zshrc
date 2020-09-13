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

PATH="$HOME/.cargo/bin${PATH:+:${PATH}}":

# Path to your oh-my-zsh installation.
ZSH="/home/adda/.config/zsh/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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

# command-not-found: If a command is not recognized in the $PATH, this will use Ubuntu’s command-not-found package to find it or suggest spelling mistakes (Only for Ubuntu and openSUSE).
# sudo: Hitting `ESC` twice puts sudo in front of the current command, or the last one if the command line is empty.
# vscode: Makes interaction between the command line and the code editor easier.

# yarn rake cloudfoundry npm node
plugins=(
    git
    zsh-autosuggestions
    fast-syntax-highlighting
    z
    sudo
    vscode
    last-working-dir
    dotenv
    web-search
    history
    extract
    command-not-found
)

# dotenv plugin: in ~/.zshrc, before Oh My Zsh is sourced:
ZSH_DOTENV_FILE=.dotenv

source $ZSH/oh-my-zsh.sh

#------------------------------------------------------------------------------
# User configuration
#------------------------------------------------------------------------------

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='nvim'
# else
#   export EDITOR='nvim'
# fi
export EDITOR='nvim'


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



#------------------------------------------------------------------------------
# Environmental variables.
#------------------------------------------------------------------------------
export RANGER_LOAD_DEFAULT_RC=FALSE
export DOTFILES="/mnt/DATA/Data/David/it/dotfiles"
# Created by `userpath` on 2020-03-16 15:46:44
export PATH="$PATH:/home/adda/.local/bin"

# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "



#DEFAULT_USER=your_user_name


# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zshhistory
setopt appendhistory

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots) # show hidden files in TAB completion.
bindkey -M menuselect '^M' .accept-line

# vi mode TODO what to keep and what to delete
set -o vi
bindkey -v


zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*' group-name ''

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
source ~/.p10k.zsh
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Load ; should be last.
source /usr/share/autojump/autojump.zsh 2>/dev/null
#source ~/powerlevel10k/powerlevel10k.zsh-theme

#neofetch

# End of file
