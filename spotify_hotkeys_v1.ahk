#SingleInstance, Force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#InstallMouseHook

;original code by submeg on 25/4/2020
;modified by dr-ocd on the 03/06/2021

getSpotifyHwnd() {
	WinGet, spotifyHwnd, ID, ahk_exe spotify.exe
	; We need the app's third top level window, so get next twice.
	spotifyHwnd := DllCall("GetWindow", "uint", spotifyHwnd, "uint", 2)
	spotifyHwnd := DllCall("GetWindow", "uint", spotifyHwnd, "uint", 2)
	Return spotifyHwnd
}

spotifyKey(key) {
	spotifyHwnd := getSpotifyHwnd()
	; Chromium ignores keys when it isn't focused.
	; Focus the document window without bringing the app to the foreground.
	ControlFocus, Chrome_RenderWidgetHostHWND1, ahk_id %spotifyHwnd%
	ControlSend, , %key%, ahk_id %spotifyHwnd%
	Return
}

;pause / play
F1:: ;change this to change the hotkey
IfWinExist, ahk_class Chrome_WidgetWin_0 ;checks to see if the Spotify window is running
{
	;sleep, 10
	spotifyKey("{Space}") ;calls the funtion to send the {space} key to spotify, pausing it
}
Return

;next song
F2::
IfWinExist, ahk_class Chrome_WidgetWin_0 
{
	;sleep, 10
	spotifyKey("^{Left}")
}
Return

;previous song
F3::
IfWinExist, ahk_class Chrome_WidgetWin_0 
{
	;sleep, 10
	spotifyKey("^{Right}")
}
Return

^Esc:: ;fail-safe
Msgbox,, AutoHotkey, spotify_hotkeys terminated
Exitapp
