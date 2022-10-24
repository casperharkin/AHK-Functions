

	; Using #If context-sensitive hotkeys and hotstrings 
	; with an Array of Titles, Classes and ProcessNames.
	; by Casper Harkin 25/10/2022

	;					ProcessName          Class             Title
    ArrayOfWindows := ["notepad.exe", "Chrome_WidgetWin_1", "Calculator"]

    #If (CheckClass(ArrayOfWindows) = True)
    q::MsgBox Window Specified is Active.
    #If

    q::MsgBox Window NOT Specified is Active.

    Exit ;EOAES

    CheckClass(ArrayOfWindows){
        WinGetClass, vClass, A
		WinGetText, vWinText, A
		WinGetTitle, vWinTitle, A
		WinGet, vProcess, ProcessName, A
        for e, i in ArrayOfWindows {
            If (vClass = i)
                Return 1
            If (vWinText = i)
                Return 1
            If (vWinTitle = i)
                Return 1
            If (vProcess = i)
              	Return 1
		}
    }