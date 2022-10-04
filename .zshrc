export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(git kubectl zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

export DEFAULT_USER="$(whoami)"

# UTF-8 support.
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# Manpager.
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# FZF configuration.
export FZF_DEFAULT_COMMAND='rg --files --hidden --smart-case --follow --glob "!.git/*"'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Bat.
export BAT_THEME="gruvbox-dark"

# Launch TMUX on startup if this isn't a VSCode terminal.
if [[ -z "$TMUX" && "$TERM_PROGRAM" != "vscode" ]]
then
   tmux attach -t TMUX || tmux new -s TMUX
fi