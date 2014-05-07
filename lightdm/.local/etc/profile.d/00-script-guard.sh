# ~/.config/profile.d/00-script-guard.sh
# ======================================

# If not running interactively, don't do anything
if [ -z "$PS1" ]; then
  return
fi

case "$-" in
  *i*)
    ;;
  *)
    return
    ;;
esac
