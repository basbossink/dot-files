;;
;; bash emacs key bindings for powershell
;;
#IfWinActive, ahk_class ConsoleWindowClass
^a::SendInput {HOME}
^y::SendInput ! ep
^l::SendInput {ESC}cls{ENTER}
^b::SendInput {Left}
^f::SendInput {Right}
^e::SendInput {End}
^p::SendInput {Up}
^n::SendInput {Down}
^d::SendInput {Del}
^x::SendInput {Backspace}
#IfWinActive 


