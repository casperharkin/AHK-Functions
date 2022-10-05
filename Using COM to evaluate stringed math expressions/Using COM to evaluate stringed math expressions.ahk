#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

		; Using COM to evaluate stringed math expressions. - https://www.autohotkey.com/boards/viewtopic.php?f=6&t=15389
		addOperator := "10 + 10"
	    (r := ComObjCreate("HTMLfile")).write("<body><script>document.body.innerText=eval('" . addOperator  . "');</script>")
		MsgBox % r.body.innerText
