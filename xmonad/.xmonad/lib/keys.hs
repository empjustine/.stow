defKeys    = keys defaultConfig
delKeys x  = foldr M.delete           (defKeys x) (toRemove x)
myKeys x   = foldr (uncurry M.insert) (delKeys x) (toAdd    x)
 
-- remove some of the default key bindings
toRemove x =
    [ (modMask x              , xK_p  )
    , (modMask x .|. shiftMask, xK_q  ) -- don't strand naive users
    ]
 
toAdd x   =
    [ ((modMask x              , xK_p ), spawn myDmenuTitleBar)
    ]