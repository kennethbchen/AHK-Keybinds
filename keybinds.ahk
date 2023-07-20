#SingleInstance Force ; The script will Reload if launched while already running
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases
#KeyHistory 0 ; Ensures user privacy when debugging is not needed
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability

; ==== Desktop Switcher ====
; Uses user_config.ahk
#Include %A_ScriptDir%\desktop_switcher.ahk
Return


; ==== Other Keybinds ====

; Only way to activate caps lock
#CapsLock::CapsLock 

; Disable CapsLock toggle
CapsLock::
CapsLock Up::
SetCapsLockState, AlwaysOff

; Quick access to home and end
CapsLock & a::Home
CapsLock & s::return
CapsLock & d::End

; Right hand arrow key shortcuts
CapsLock & j::Left
CapsLock & k::Down
CapsLock & i::Up
CapsLock & l::Right

; Right hand ctrl + arrow key shortcuts
CapsLock & n::^Left
CapsLock & m::^Right
