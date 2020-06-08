#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


+^q::
clipboard =  ; Start off empty to allow ClipWait to detect when the text has arrived.
send, {ctrl down}c{ctrl up}
ClipWait,2
Fileappend,%clipboard%`n,quicKlip.txt
return



#IfWinActive ahk_class PotPlayer

^+1::
FTPCommandFile = %A_ScriptDir%\1.txt
send, {ctrl down}{shift down}c{shift up}{ctrl up}
Sleep, 300
FileAppend,
(
%clipboard%

), %FTPCommandFile%
return

^+2::
FTPCommandFile = %A_ScriptDir%\2.txt
send, {ctrl down}{shift down}c{shift up}{ctrl up}
Sleep, 300
FileAppend,
(
%clipboard%

), %FTPCommandFile%
return

g::
FTPCommandFile = %A_ScriptDir%\99.txt
send, {ctrl down}{shift down}c{shift up}{ctrl up}
Sleep, 300
FileAppend,
(
%clipboard%

), %FTPCommandFile%
FTPCommandFile = %A_ScriptDir%\AB.txt
send, g
Sleep, 300
send, {ctrl down}c{ctrl up}
Sleep, 300
send, {Esc}
FileAppend,
(
%clipboard%

), %FTPCommandFile%
return


^+3::
FTPCommandFile = %A_ScriptDir%\3.txt
send, {ctrl down}{shift down}c{shift up}{ctrl up}
Sleep, 300
FileAppend,
(
%clipboard%

), %FTPCommandFile%
return

^+4::
FTPCommandFile = %A_ScriptDir%\4.txt
send, {ctrl down}{shift down}c{shift up}{ctrl up}
Sleep, 300
FileAppend,
(
%clipboard%

), %FTPCommandFile%
return

^+5::
FTPCommandFile = %A_ScriptDir%\5.txt
send, {ctrl down}{shift down}c{shift up}{ctrl up}
Sleep, 300
FileAppend,
(
%clipboard%

), %FTPCommandFile%
return

^+6::
FTPCommandFile = %A_ScriptDir%\6.txt
send, {ctrl down}{shift down}c{shift up}{ctrl up}
Sleep, 300
FileAppend,
(
%clipboard%

), %FTPCommandFile%
return

^+7::
FTPCommandFile = %A_ScriptDir%\7.txt
send, {ctrl down}{shift down}c{shift up}{ctrl up}
Sleep, 300
FileAppend,
(
%clipboard%

), %FTPCommandFile%
return

^+8::
FTPCommandFile = %A_ScriptDir%\8.txt
send, {ctrl down}{shift down}c{shift up}{ctrl up}
Sleep, 300
FileAppend,
(
%clipboard%

), %FTPCommandFile%
return

^+9::
FTPCommandFile = %A_ScriptDir%\9.txt
send, {ctrl down}{shift down}c{shift up}{ctrl up}
Sleep, 300
FileAppend,
(
%clipboard%

), %FTPCommandFile%
return

^+w::
FTPCommandFile = %A_ScriptDir%\wwe.txt
send, {ctrl down}{shift down}c{shift up}{ctrl up}
Sleep, 300
FileAppend,
(
%clipboard%

), %FTPCommandFile%
return

^+g::
FTPCommandFile = %A_ScriptDir%\game.txt
send, {ctrl down}{shift down}c{shift up}{ctrl up}
Sleep, 300
FileAppend,
(
%clipboard%

), %FTPCommandFile%
return


^+l::
FTPCommandFile = %A_ScriptDir%\1.txt
send, {ctrl down}{shift down}c{shift up}{ctrl up}
Sleep, 300
FileAppend,
(
%clipboard%

), %FTPCommandFile%
return

^+m::
FTPCommandFile = %A_ScriptDir%\songs.txt
send, {ctrl down}{shift down}c{shift up}{ctrl up}
Sleep, 300
FileAppend,
(
%clipboard%

), %FTPCommandFile%
return

^+t::
FTPCommandFile = %A_ScriptDir%\tv.txt
send, {ctrl down}{shift down}c{shift up}{ctrl up}
Sleep, 300
FileAppend,
(
%clipboard%

), %FTPCommandFile%
return

^+f::
FTPCommandFile = %A_ScriptDir%\films.txt
send, {ctrl down}{shift down}c{shift up}{ctrl up}
Sleep, 300
FileAppend,
(
%clipboard%

), %FTPCommandFile%
return

^+a::
FTPCommandFile = %A_ScriptDir%\Ace.txt
send, {ctrl down}{shift down}c{shift up}{ctrl up}
Sleep, 300
FileAppend,
(
%clipboard%

), %FTPCommandFile%
return


^+h::
FTPCommandFile = %A_ScriptDir%\Haya.txt
send, {ctrl down}{shift down}c{shift up}{ctrl up}
Sleep, 300
FileAppend,
(
%clipboard%

), %FTPCommandFile%
return

#IfWinActive

^!m::
run "%A_ScriptDir%\..\Batch\Manage.bat"
return

^!y::
run "D:\Developed\Automation\Batch\YoutubeDownloader.bat"
return

^!d::
run "%A_ScriptDir%\d.lnk"
return

^!p::
run "%A_ScriptDir%\pics.lnk"
return
^!a::
run "%A_ScriptDir%\ace.lnk"
return
^!2::
run "%A_ScriptDir%\2.lnk"
return
^!3::
run "%A_ScriptDir%\3.lnk"
return
^!4::
run "%A_ScriptDir%\4.lnk"
return
^!s::
run "%A_ScriptDir%\music.lnk"
return
