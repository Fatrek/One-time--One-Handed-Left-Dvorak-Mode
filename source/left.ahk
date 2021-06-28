#noEnv
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
#inputlevel 0
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





if FileExist("keys.ini"){
Filereadline, line1, keys.ini, 1
Filereadline, line2, keys.ini, 2
Filereadline, line3, keys.ini, 3
Filereadline, line4, keys.ini, 4
Hotkey, %line1%  , key1 
Hotkey, %line2%  , key2 
Hotkey, %line3%  , key3
Hotkey, %line4%  , key4
}else {
FileAppend, RAlt`n, keys.ini 
FileAppend, AppsKey`n, keys.ini 
FileAppend, RCtrl`n, keys.ini 
FileAppend, RShift`n, keys.ini 
reload
return
}





#if yoe = 1
~Lwin::
~Lalt::
~Lctrl::
~f23::
Suspend, On
y = 1
Gui, Color, c202020
return

~Lwin up::
~Lalt up::
~Lctrl up::
~f23 up::
Suspend, Off
y = 1
Gui, Color, c8093F1
return
#if

::fj::
Suspend, Off
Gui, Color, c8093F1
y = 1
yoe := 1 
return

key4:
Suspend, On
Gui, Color, c202020
y = 1
yoe := 0 
return






;############################
::fjfj::
suspend, off
reload
return
;############################
#if yoe = 1

~backspace::
~RButton::
~LButton::
~MButton::
~enter::
~delete::
~tab::
keywait space
send,{shift up}
y = 1
return


*space::
if(y=1){
	send,{space}
	y++
	return
}
if(y=2){
	Send,{RShift down}
	y++
	return
}
if(y=3){
	send,{RShift up}
	y++
	return
}
if(y=4){
	send,{space}
	return
}


*`::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {~}
shiftyy = 1
}else {
shiftyy = 0
send, {`}
}
keywait space
send,{RShift up}
y = 1
return
*1::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {{}
shiftyy = 1
}else {
shiftyy = 0
send, {[}
}
keywait space
send,{RShift up}
y = 1
return
*2::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {}}
shiftyy = 1
}else {
shiftyy = 0
send, {]}
}
keywait space
send,{RShift up}
y = 1
return
*3::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {?}
shiftyy = 1
}else {
shiftyy = 0
send, {/}
}
keywait space
send,{RShift up}
y = 1
return
*4::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {P}
shiftyy = 1
}else {
shiftyy = 0
send, {p}
}
keywait space
send,{RShift up}
y = 1
return
*5::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {F}
shiftyy = 1
}else {
shiftyy = 0
send, {f}
}
keywait space
send,{RShift up}
y = 1
return
*6::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {M}
shiftyy = 1
}else {
shiftyy = 0
send, {m}
}
keywait space
send,{RShift up}
y = 1
return
*7::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {L}
shiftyy = 1
}else {
shiftyy = 0
send, {l}
}
keywait space
send,{RShift up}
y = 1
return
*8::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {J}
shiftyy = 1
}else {
shiftyy = 0
send, {j}
}
keywait space
send,{RShift up}
y = 1
return
*9::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {$}
shiftyy = 1
}else {
shiftyy = 0
send, {4}
}
keywait space
send,{RShift up}
y = 1
return
*0::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {#}
shiftyy = 1
}else {
shiftyy = 0
send, {3}
}
keywait space
send,{RShift up}
y = 1
return
*-::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {@}
shiftyy = 1
}else {
shiftyy = 0
send, {2}
}
keywait space
send,{RShift up}
y = 1
return
*=::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {!}
shiftyy = 1
}else {
shiftyy = 0
send, {1}
}
keywait space
send,{RShift up}
y = 1
return

*q::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {:}
shiftyy = 1
}else {
shiftyy = 0
send, {;}
}
keywait space
send,{RShift up}
y = 1
return
*w::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {Q}
shiftyy = 1
}else {
shiftyy = 0
send, {q}
}
keywait space
send,{RShift up}
y = 1
return
*e::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {B}
shiftyy = 1
}else {
shiftyy = 0
send, {b}
}
keywait space
send,{RShift up}
y = 1
return
*r::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {Y}
shiftyy = 1
}else {
shiftyy = 0
send, {y}
}
keywait space
send,{RShift up}
y = 1
return
*t::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {U}
shiftyy = 1
}else {
shiftyy = 0
send, {u}
}
keywait space
send,{RShift up}
y = 1
return
*y::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {R}
shiftyy = 1
}else {
shiftyy = 0
send, {r}
}
keywait space
send,{RShift up}
y = 1
return
*u::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {S}
shiftyy = 1
}else {
shiftyy = 0
send, {s}
}
keywait space
send,{RShift up}
y = 1
return
*i::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {O}
shiftyy = 1
}else {
shiftyy = 0
send, {o}
}
keywait space
send,{RShift up}
y = 1
return
*o::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {>}
shiftyy = 1
}else {
shiftyy = 0
send, {.}
}
keywait space
send,{RShift up}
y = 1
return
*p::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {^}
shiftyy = 1
}else {
shiftyy = 0
send, {6}
}
keywait space
send,{RShift up}
y = 1
return
*[::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, `%
shiftyy = 1
}else {
shiftyy = 0
send, {5}
}
keywait space
send,{RShift up}
y = 1
return
*]::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {+}
shiftyy = 1
}else {
shiftyy = 0
send, {=}
}
keywait space
send,{RShift up}
y = 1
return

*a::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {_}
shiftyy = 1
}else {
shiftyy = 0
send, {-}
}
keywait space
send,{RShift up}
y = 1
return
*s::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {K}
shiftyy = 1
}else {
shiftyy = 0
send, {k}
}
keywait space
send,{RShift up}
y = 1
return
*d::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {C}
shiftyy = 1
}else {
shiftyy = 0
send, {c}
}
keywait space
send,{RShift up}
y = 1
return
*f::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {D}
shiftyy = 1
}else {
shiftyy = 0
send, {d}
}
keywait space
send,{RShift up}
y = 1
return
*g::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {T}
shiftyy = 1
}else {
shiftyy = 0
send, {t}
}
keywait space
send,{RShift up}
y = 1
return
*h::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {H}
shiftyy = 1
}else {
shiftyy = 0
send, {h}
}
keywait space
send,{RShift up}
y = 1
return
*j::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {E}
shiftyy = 1
}else {
shiftyy = 0
send, {e}
}
keywait space
send,{RShift up}
y = 1
return
*k::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {A}
shiftyy = 1
}else {
shiftyy = 0
send, {a}
}
keywait space
send,{RShift up}
y = 1
return
*l::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {Z}
shiftyy = 1
}else {
shiftyy = 0
send, {z}
}
keywait space
send,{RShift up}
y = 1
return
*`;::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {*}
shiftyy = 1
}else {
shiftyy = 0
send, {8}
}
keywait space
send,{RShift up}
y = 1
return
*'::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {&}
shiftyy = 1
}else {
shiftyy = 0
send, {7}
}
keywait space
send,{RShift up}
y = 1
return
*\::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {|}
shiftyy = 1
}else {
shiftyy = 0
send, {\}
}
keywait space
send,{RShift up}
y = 1
return

*z::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {"}
shiftyy = 1
}else {
shiftyy = 0
send, {'}
}
keywait space
send,{RShift up}
y = 1
return
*x::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {X}
shiftyy = 1
}else {
shiftyy = 0
send, {x}
}
keywait space
send,{RShift up}
y = 1
return
*c::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {G}
shiftyy = 1
}else {
shiftyy = 0
send, {g}
}
keywait space
send,{RShift up}
y = 1
return
*v::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {V}
shiftyy = 1
}else {
shiftyy = 0
send, {v}
}
keywait space
send,{RShift up}
y = 1
return
*b::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {W}
shiftyy = 1
}else {
shiftyy = 0
send, {w}
}
keywait space
send,{RShift up}
y = 1
return
*n::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {N}
shiftyy = 1
}else {
shiftyy = 0
send, {n}
}
keywait space
send,{RShift up}
y = 1
return
*m::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {I}
shiftyy = 1
}else {
shiftyy = 0
send, {i}
}
keywait space
send,{RShift up}
y = 1
return
*,::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {<}
shiftyy = 1
}else {
shiftyy = 0
send, {,}
}
keywait space
send,{RShift up}
y = 1
return
*.::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {)}
shiftyy = 1
}else {
shiftyy = 0
send, {0}
}
keywait space
send,{RShift up}
y = 1
return
*up::
if(shifty = 1){
if !GetKeyState(line2 , "P"){
        shifty = 0
}
send, {(}
shiftyy = 1
}else {
shiftyy = 0
send, {9}
}
keywait space
send,{RShift up}
y = 1
return

key1:
send, {backspace}
keywait space
send,{RShift up}
y = 1
return
key2:
shifty = 1
keywait space
send,{RShift up}
y = 1
return
down up::
if (shiftyy = 1){
shifty = 0
shiftyy = 0
}
key3:
send, {ctrl}
keywait space
send,{RShift up}
y = 1


