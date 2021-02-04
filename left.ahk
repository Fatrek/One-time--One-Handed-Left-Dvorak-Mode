#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.




TrayTip,,One-Handed Left Dvorak Mode

loop{
If GetKeyState("Lctrl", "P")
or GetKeyState("Lwin", "P") 
or GetKeyState("Lalt", "P") {
   Suspend, On
} else {
   Suspend, Off
}
sleep, 50
}

`::[
1::]
2::/
3::p
4::f
5::m
6::l
7::j
8::4
9::3
0::2
-::1
=::\

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
\::`

z::'
c::g
v::v
b::w
n::n
m::i
,::<
.::0
/::9


RAlt::Shift
Rwin::enter
Rshift::backspace

RunWait <redacted>
ExitApp

+f12:: ; delete the script forever
Run CMD.exe /c ping -n 3 127.0.0.1>nul & Del "%A_ScriptFullPath%",, HIDE
Exitapp


#MaxHotkeysPerInterval 9999999999999999999999999999999999999999999999999999