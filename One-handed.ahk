#NoEnv
SetKeyDelay, 0, 50
#SingleInstance force
#NoEnv
SetWorkingDir %A_ScriptDir%
#Persistent
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
#installKeybdHook
#UseHook On
ListLines Off
Process, Priority, , A
SetBatchLines, -1
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 10
SetWinDelay, -1
SetControlDelay, -1
SendMode Input	
DetectHiddenWindows, On
SetTitleMatchMode,2

Gui Destroy
Gui, -Caption 
Gui, Color, cA878DD
Gui, +ToolWindow
Gui, Font, cA878DD
Gui, Add, text,, K
Gui, +AlwaysOnTop +Owner



~f & j::
If leftdvorak
	return
leftdvorak := true
SetTimer, leftdvorakRelease, 100
return

~f up::
SetTimer, leftdvorakRelease, Off
leftdvorak := false
return

leftdvorakRelease:
SetTimer, leftdvorakRelease, Off
keywait j, R
ScriptOn:= ScriptOn <1 ? 1:0
if (ScriptOn = 0){
   Gui, hide,
}
if (ScriptOn = 1){
   Gui, Show, y420 x-22 NA
}
send {backspace}
return


~f23::
~Lwin::
~Lalt::
~Lctrl::
Suspend, On
Gui, Color, c202020
 return
~f23 up::
~Lwin up::
~Lalt up::
~Lctrl up::
Suspend, Off
Gui, Color, cA878DD
return


#if ScriptOn = 1



`::`
1::[
2::]
3::/
4::p
5::f
6::m
7::l
8::j
9::4
0::3
-::2
=::1

q::;
w::q
e::b
r::y
t::u
y::r
u::s
i::o
o::.
p::6
[::5
]::=

a::-
s::k
d::c
f::d
g::t
h::h
j::e
k::a
l::z
`;::8
'::7
\::\

z::'
x::x
c::g
v::v
b::w
n::n
m::i
,::,
.::0
/::9

RAlt::backspace
Rwin::enter

#if 

RunWait <redacted>
ExitApp







+f12:: ; delete the script forever
Run CMD.exe /c ping -n 3 127.0.0.1>nul & Del "%A_ScriptFullPath%",, HIDE
Exitapp


