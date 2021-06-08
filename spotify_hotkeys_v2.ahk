#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;code by dr-ocd on the 08/06/2021
;https://github.com/dr-ocd/spotify_hotkeys

DetectHiddenWindows, On
#SingleInstance, Force ;removes the silly "already running" message

failMessage() { ;remove the block comments to activate feature! 
	/*
	if (ErrorLevel = "FAIL") {
		Msgbox, 4, Spotify Hotkeys, Failed to send command to spotify`nStart Spotify?
		IfMsgBox Yes
			Run, ;replace this comment with the loaction of the spotify application
		else
		return
	} else {
		return
	}
	*/
}

;play/pause
^F1:: ;change "^F1" to the hotkey you'd like to active the action
SendMessage, 0x319,, 0xE0000,, ahk_exe Spotify.exe ;0x319 is the Ctrl key and oxE0000 is the Space key
failMessage()
return

;next song
^F3:: ;change "^F3" to the hotkey you'd like to active the action
SendMessage, 0x319,, 0xB0000,, ahk_exe Spotify.exe
failMessage()
return

;previous song
^F2:: ;change "^F2" to the hotkey you'd like to active the action
SendMessage, 0x319,, 0xC0000,, ahk_exe Spotify.exe
failMessage()
return

^Esc:: ;fail-safe, Ctrl+Esc will terminate the script
Msgbox,, Spotify Hotkeys, Spotify hotkeys script terminated.
Exitapp
