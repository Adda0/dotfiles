# Use vim keys in tab complete menu:
bindkey -M menuselect '^h' vi-backward-char
bindkey -M menuselect '^k' vi-up-line-or-history
bindkey -M menuselect '^l' vi-forward-char
bindkey -M menuselect '^j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Custom ZSH Binds
bindkey '^ ' autosuggest-accept

# Use lf to switch directories and bind it to ctrl-o
function lfcd {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
#bindkey -s '^o' 'lfcd\n'
bindkey '\eq' push-input
bindkey -s '^o' '\eq lfcd\n'

rangercd () {
    tmp="$(mktemp)"
    ranger --choosedir="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ --datadir "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
        #[ -d "$dir" ] TODO which one?
    fi
}
bindkey -s '^g' 'rangercd\n'

	# ci"
autoload -U select-quoted
zle -N select-quoted
for m in visual viopp; do
  for c in {a,i}{\',\",\`}; do
    bindkey -M $m $c select-quoted
  done
done

# ci{, ci(, di{ etc..
autoload -U select-bracketed
zle -N select-bracketed
for m in visual viopp; do
  for c in {a,i}${(s..)^:- '()[]{}<>bB'}; do
    bindkey -M $m $c select-bracketed
  done
done


function ctrlz {
  if [[ $#BUFFER == 0 ]]; then
    fg >/dev/null 2>&1 && zle redisplay
  else
    zle push-input
  fi
}
zle -N ctrlz
bindkey '^Z' ctrlz


function gpr {
  if [ $? -eq 0 ]; then
    github_url=`git remote -v | awk '/fetch/{print $2}' | sed -Ee 's#(git@|git://)#http://#' -e 's@com:@com/@' -e 's%\.git$%%'`;
    branch_name=`git symbolic-ref HEAD 2>/dev/null | cut -d"/" -f 3`;
    pr_url=$github_url"/compare/master..."$branch_name
    open $pr_url;
  else
    echo 'failed to open a pull request.';
  fi
}

# Add all remotes from .git to 'all' target to push to all remote repositories simultaneusly
# Doing it manually:
# git config --add remote.all.url $url
# Doing it automatically:
# git-add-push-all # from git (sub)directory
function git-add-push-all() {
  while read -r name url method; do
    git config --add remote.all.url "$url"
  done < <(git remote -v | awk '!/^all/ && /push/')
}
