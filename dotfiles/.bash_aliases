# X Desktop Group Base Directories
# --------------------------------

# User-specific data files
export XDG_DATA_HOME=${HOME}/.local/share
# User-specific configuration files
export XDG_CONFIG_HOME=${HOME}/.config

# User-specific data file search patch.
export XDG_DATA_DIRS=/usr/local/share/:/usr/share/
# User-specific configuration file search patch
export XDG_CONFIG_DIRS=/etc/xdg

# User-specific non-essential data
export XDG_CACHE_HOME=${HOME}/.cache
# User-specific runtime files and other file objects
#export XDG_RUNTIME_DIR

# X Desktop Group User Directories
# --------------------------------

# User-specific configuration files
# export XDG_CONFIG_HOME=${HOME}/.config

if [ -f ${XDG_CONFIG_HOME}/user-dirs.dirs ]; then
  . ${XDG_CONFIG_HOME}/user-dirs.dirs
  export XDG_DESKTOP_DIR
  export XDG_DOWNLOAD_DIR
  export XDG_TEMPLATES_DIR
  export XDG_PUBLICSHARE_DIR
  export XDG_DOCUMENTS_DIR
  export XDG_MUSIC_DIR
  export XDG_PICTURES_DIR
  export XDG_VIDEOS_DIR
fi


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
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

#workon user

# powerline
# =========

if [ -d "$HOME/.local/bin" ]; then
  PATH="$HOME/.local/bin:$PATH"
fi

if [ -f "$HOME/bin/gitfoo/git-shell-functions" ]; then
  . $HOME/bin/gitfoo/git-shell-functions
fi

