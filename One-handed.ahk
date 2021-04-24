#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#MaxHotkeysPerInterval 9999999999999999999999999999999999999999999999999999


Gui Destroy
Gui, -Caption 
Gui, Color, c202020
Gui, +ToolWindow
Gui, Font, cA878DD
Gui, Add, text,, 💪
Gui, +AlwaysOnTop +Owner
Gui, Show, y0 x1720 NA


~Lwin::
~Lalt::
~Lctrl::
Suspend, On
Gui, Color, cA878DD
 return
~Lwin up::
~Lalt up::
~Lctrl up::
Suspend, Off
Gui, Color, c202020
return

appskey::
Suspend,Toggle
if (toggle := !toggle) {
   Gui, Color, cA878DD
} else {
   Gui, Color, c202020
}
return



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


RunWait <redacted>
ExitApp

+f12:: ; delete the script forever
Run CMD.exe /c ping -n 3 127.0.0.1>nul & Del "%A_ScriptFullPath%",, HIDE
Exitapp


