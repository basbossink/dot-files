import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeysP)
import System.IO

myManageHook = composeAll
    [ className =? "Gimp"      --> doFloat
    , className =? "Vncviewer" --> doFloat
    ]
 

main = do
	xmproc <- spawnPipe "xmobar"
	xmonad $ defaultConfig
		{ manageHook = manageDocks <+> manageHook defaultConfig
		, layoutHook = avoidStruts $ layoutHook defaultConfig 
		, logHook = dynamicLogWithPP $ xmobarPP
                        { ppOutput = hPutStrLn xmproc
                        , ppTitle = xmobarColor "green" "" . shorten 50
                        }
		, modMask = mod4Mask --Rebind Mod to Windows key 
		} `additionalKeysP`
		[ ("M-S-z", spawn "xscreensaver-command -lock")
		, ("M-S-<Insert>", spawn "sleep 0.2; scrot -s")
		, ("M-<Insert>", spawn "scrot")
		, ("M-x", spawn "xterm")
		, ("M-i", spawn "firefox")
		, ("M-g", spawn "gvim")
		]
