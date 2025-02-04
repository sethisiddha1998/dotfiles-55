#
# ~/.zshrc
#

# Install zplugin if not installed
if [ ! -d "${HOME}/.zplugin" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"
fi

### Added by Zplugin's installer
source "${HOME}/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin's installer chunk

### Plugins

# Completions
zplugin ice blockf; zplugin light zsh-users/zsh-completions

# Autosuggestions
zplugin ice silent wait:1 atload:_zsh_autosuggest_start
zplugin light zsh-users/zsh-autosuggestions

# Syntax 
#zplugin ice wait:1 lucid atinit'_zpcompinit_fast; zpcdreplay'
zplugin light zdharma/fast-syntax-highlighting

####

# Prompt
autoload -U colors && colors
PS1="%1~ $fg[blue] "

# Paths
export PATH=$HOME/bin:/usr/local/bin:$HOME/.bin:$PATH

# Defaults
export VISUAL="nvim"
export EDITOR="nvim"
export TERMINAL="st"

# fff config
if [ -f $HOME/.config/fff/config ]; then
    . $HOME/.config/fff/config
fi

# Enable autocompletions
autoload -Uz compinit
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi
zmodload -i zsh/complist

# Save history so we get auto suggestions
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZE

# Options
setopt auto_cd # cd by typing directory name if it's not a command
setopt auto_list # automatically list choices on ambiguous completion
setopt auto_menu # automatically use menu completion
setopt always_to_end # move cursor to end if word had one match
setopt hist_ignore_all_dups # remove older duplicate entries from history
setopt hist_reduce_blanks # remove superfluous blanks from history items
setopt inc_append_history # save history entries as soon as they are entered
setopt share_history # share history between different instances
setopt correct_all # autocorrect commands
setopt interactive_comments # allow comments in interactive shells

# Improve autocompletion style
zstyle ':completion:*' menu select # select completions with arrow keys
zstyle ':completion:*' group-name '' # group results by category
zstyle ':completion:::::' completer _expand _complete _ignored _approximate # enable approximate matches for completion

# URL quote magic
autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic
autoload -Uz bracketed-paste-magic
zle -N bracketed-paste bracketed-paste-magic

# Keybindings
#bindkey '^[[A' history-substring-search-up
#bindkey '^[[B' history-substring-search-down

# Aliases
alias e="$EDITOR"
alias sz="source ~/.zshrc"
alias ls="exa"
alias la="ls -a"
alias ll="ls -la"
alias grep="grep --color=auto"
alias diff="diff --color=auto"
alias cp="cp -i"
alias df="df -h"
alias pac="sudo pacman --color=auto"
alias merge="xrdb -merge ~/.Xresources"
alias mirrors="sudo reflector --score 100 --fastest 25 \
    --sort rate --save /etc/pacman.d/mirrorlist --verbose"
alias temp="watch sensors"
alias dots='/usr/bin/git --git-dir=/home/crian/.dotfiles/ --work-tree=/home/crian'
