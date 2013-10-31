# Sensible-applications
# =====================

# Core applications
export BROWSER="firefox"
export EDITOR="vim"
export PAGER="less"
export MANPAGER="less -X"
export VISUAL="vim"

# Extra applications
export TERMINAL="uxterm"
export X_TERMINAL="uxterm"
export MIXER="alsamixer"

# Git variables
export GIT_EDITOR=$EDITOR


export LESSCHARSET="utf-8"


# Bash history
# ============

# limitless ~/.bash_history
unset HISTFILESIZE

# maximum in-memory history lines (2^32 - 1)
export HISTSIZE=32767

# Make some commands not show up in history
export HISTCONTROL=ignorespace:ignoredups
export HISTIGNORE=""

# Append bash history, instead of overwritting it.
export PROMPT_COMMAND="history -a"
shopt -s histappend


# Environment Management
# ======================

export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

if [ -d "$HOME/.local/bin" ]; then
  export PATH="$HOME/.local/bin:$PATH"
fi


# startx at login
# ===============

# [ -z "$DISPLAY" ] && [ "$XDG_VTNR" == "1" ] && startx
