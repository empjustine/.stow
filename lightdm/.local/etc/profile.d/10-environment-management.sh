# ~/.config/profile.d/10-environment-management.sh
# ================================================

if [ -d "$HOME/.anyenv/bin" ]; then
  export PATH="$HOME/.anyenv/bin:$PATH"
  eval "$(anyenv init -)"
fi

if [ -d "$HOME/.local/bin" ]; then
  export PATH="$HOME/.local/bin:$PATH"
fi
