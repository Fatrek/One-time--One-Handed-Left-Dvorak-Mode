﻿#NoEnv
I_Icon = %A_ScriptDir%\SVG\icon.ico
IfExist, %I_Icon%
Menu, Tray, Icon, %I_Icon%
SetKeyDelay, 0, 50
#SingleInstance force
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
Suspend, On

Gui Destroy
Gui, -Caption 
Gui, Color, c202020
Gui, +ToolWindow
Gui, Font, c202020
Gui, Add, text,, K
Gui, +AlwaysOnTop +Owner
Gui, Show, NoActivate y-22 x920 NA




#if yoe = 1
~Rctrl::
~Lwin::
~Lalt::
~Lctrl::
Suspend, On
Gui, Color, c202020
return

~Rctrl up::
~Lwin up::
~Lalt up::
~Lctrl up::
Suspend, Off
Gui, Color, c8093F1
return
#if

::fj::
Suspend, Off
Gui, Color, c8093F1
yoe := 1 
return
up::
Suspend, On
Gui, Color, c202020
yoe := 0 
return
;############################
::fjfj::
suspend, off
reload
return
;############################

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
up::9


left::backspace
down::enter
right::tab
