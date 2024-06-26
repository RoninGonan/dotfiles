# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

setopt histignorealldups sharehistory

# Keep 5000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zsh_history

autoload -Uz compinit
compinit

# zplug - manage plugins
source /usr/share/zplug/init.zsh
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-completions"
zplug "plugins/kubectl", from:oh-my-zsh, ignore:oh-my-zsh.sh

# zplug - install/load new plugins when zsh is started or reloaded
if ! zplug check --verbose; then
   printf "Install? [y/N]: "
   if read -q; then
       echo; zplug install
   fi
fi
zplug load

if [ -f ~/.config/shell/.aliases ]; then
   source ~/.config/shell/.aliases
fi

if [ -f ~/.config/shell/.env_vars ]; then
    source ~/.config/shell/.env_vars
fi

if [ -f ~/.config/shell/.functions ]; then
    source ~/.config/shell/.functions
fi


eval "$(starship init zsh)"

source <(fzf --zsh)

fastfetch 

eval "$(thefuck --alias)"
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
