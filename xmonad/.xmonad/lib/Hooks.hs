-- ~/.xmonad/lib/Hooks.hs
-- ======================

module Hooks (logHook) where


import qualified XMonad.ManageHook
import qualified XMonad.Hooks.DynamicLog as DynamicLog


import qualified Solarized


commandSendKeystrokes keystrokes = "xdotool key " ++ keystrokes

execMouse1 command string = DynamicLog.wrap
  ("^ca(1, " ++ command ++ ")")
  "^ca()"
  string

mouse1WorkspaceSwitching workspace = case (workspace) of
  ("-") -> execMouse1
    (commandSendKeystrokes "super+minus")
    workspace
  ("=") -> execMouse1
    (commandSendKeystrokes "super+equal")
    workspace
  (workspace) -> execMouse1
    (commandSendKeystrokes "super+" ++ workspace)
    workspace

foreground colour string = DynamicLog.dzenColor colour "" string


logHook = DynamicLog.dynamicLogWithPP
        $ DynamicLog.dzenPP
  { DynamicLog.ppTitle   = DynamicLog.wrap
                             "^ca(1, dmenu-raise)"
                             " ^ca()"
                         . DynamicLog.dzenEscape
  , DynamicLog.ppLayout  = DynamicLog.wrap
                             "^ca(1, xdotool key super+space)"
                             "^ca()"
                         . DynamicLog.dzenEscape

  -- current focused workspace
  , DynamicLog.ppCurrent = foreground Solarized.yellow
  -- workspaces with urgent notifications
  , DynamicLog.ppUrgent  = foreground Solarized.red
                         . mouse1WorkspaceSwitching
  -- visible but not focused workspaces (xinerama)
  , DynamicLog.ppVisible = mouse1WorkspaceSwitching

  -- hidden workspaces with windows
  , DynamicLog.ppHidden          = foreground Solarized.blue
                                 . mouse1WorkspaceSwitching
  -- hidden workspaces without windows
  , DynamicLog.ppHiddenNoWindows = foreground Solarized.base0
                                 . mouse1WorkspaceSwitching


  , DynamicLog.ppWsSep           = ""
  , DynamicLog.ppSep             = " "
  }

myManageHook = composeAll
  [ isFullscreen --> doFullFloat
  , isDialog     --> doCenterFloat
  , appName =? "push_setup"           --> doCenterFloat
  , appName =? "__console____o1____d" --> doCenterFloat
  , appName =? "__console____o2____d" --> doCenterFloat
  , appName =? "Download"             --> doCenterFloat
  , manageHook defaultConfig
  ]