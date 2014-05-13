if [ -d "$HOME/.local/etc/profile.d" ]; then
  for profile in $HOME/.local/etc/profile.d/*.sh; do
    [ -r "$profile" ] && . "$profile"
  done
  unset profile
fi

