#SingleInstance Force ; The script will Reload if launched while already running
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases
#KeyHistory 0 ; Ensures user privacy when debugging is not needed
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability

; ==== Disable CapsLock ====
SetCapsLockState, AlwaysOff

; ==== Desktop Switcher ====
; Uses user_config.ahk
#Include %A_ScriptDir%\desktop_switcher.ahk

; ==== Other Keybinds ====

; Only way to toggle caps lock
#CapsLock::CapsLock

; Convenient way to open FlowLauncher. FlowLauncher must have open keybind set to Ctrl + Space
; This has to be here because we mess with CapsLock so it won't be detected with FL
CapsLock & Space::
^Space

; Quick access to home and end
CapsLock & a::Home
CapsLock & d::End

; Right hand arrow key shortcuts
CapsLock & j::Left
CapsLock & k::Down
CapsLock & i::Up
CapsLock & l::Right

; Right hand ctrl + arrow key shortcuts
CapsLock & <::^Left
CapsLock & >::^Right

; Select to beginning / end of line
CapsLock & n::+Home
CapsLock & m::+End

; Window location shortcuts (Windows key + arrow keys)
CapsLock & s::#Up
CapsLock & z::#Left
CapsLock & x::#Down
CapsLock & c::#Right