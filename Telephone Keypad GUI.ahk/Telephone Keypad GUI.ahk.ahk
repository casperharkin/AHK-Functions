	
		Global GUI := {}
		BuildGUI() 
		Exit ; End of AES
		
		
		ControlHandler(){
			MsgBox % "You Clicked: " A_GuiControl
		}		
		
		WM_MOUSEMOVE(wParam, lParam, Msg, Hwnd) 
		{
			MouseGetPos,,,, MouseCtrl, 2
			
			GuiControl, % (MouseCtrl = GUI["BTN_1"]["Hwnd"].U) ? "Show" : "Hide", % GUI["BTN_1"]["Hwnd"].H
			GuiControl, % (MouseCtrl = GUI["BTN_2"]["Hwnd"].U) ? "Show" : "Hide", % GUI["BTN_2"]["Hwnd"].H
			GuiControl, % (MouseCtrl = GUI["BTN_3"]["Hwnd"].U) 	? "Show" : "Hide", % GUI["BTN_3"]["Hwnd"].H
	
			GuiControl, % (MouseCtrl = GUI["BTN_4"]["Hwnd"].U) ? "Show" : "Hide", % GUI["BTN_4"]["Hwnd"].H
			GuiControl, % (MouseCtrl = GUI["BTN_5"]["Hwnd"].U) ? "Show" : "Hide", % GUI["BTN_5"]["Hwnd"].H
			GuiControl, % (MouseCtrl = GUI["BTN_6"]["Hwnd"].U) ? "Show" : "Hide", % GUI["BTN_6"]["Hwnd"].H
	
			GuiControl, % (MouseCtrl = GUI["BTN_7"]["Hwnd"].U) ? "Show" : "Hide", % GUI["BTN_7"]["Hwnd"].H
			GuiControl, % (MouseCtrl = GUI["BTN_8"]["Hwnd"].U) ? "Show" : "Hide", % GUI["BTN_8"]["Hwnd"].H
			GuiControl, % (MouseCtrl = GUI["BTN_9"]["Hwnd"].U) ? "Show" : "Hide", % GUI["BTN_9"]["Hwnd"].H
	
			GuiControl, % (MouseCtrl = GUI["BTN_Star"]["Hwnd"].U) ? "Show" : "Hide", % GUI["BTN_Star"]["Hwnd"].H
			GuiControl, % (MouseCtrl = GUI["BTN_0"]["Hwnd"].U)	? "Show" : "Hide", % GUI["BTN_0"]["Hwnd"].H
			GuiControl, % (MouseCtrl = GUI["BTN_#"]["Hwnd"].U)	? "Show" : "Hide", % GUI["BTN_#"]["Hwnd"].H
	
		}
		
		BuildGUI() {
	
			Gui +LastFound -Resize -Caption +Border +hwndhWnd -ToolWindow +hwndhWnd -SysMenu
			Gui color, E6E6E6
		
			AddControl("Text", "BTN_7"," x13 y10 w75 h49 +Center |Bold s16", "1","0xF7F7F7|0xC7C7C7")
			AddControl("Text", "BTN_8"," x92 y10 w75 h49 +Center |Bold s16", "2","0xF7F7F7|0xC7C7C7")
			AddControl("Text", "BTN_9"," x171 y10 w75 h49 +Center |Bold s16", "3","0xF7F7F7|0xC7C7C7")
			
			AddControl("Text", "BTN_4","x12 y63 w75 h49 +Center |Bold s16", "4","0xF7F7F7|0xC7C7C7")
			AddControl("Text", "BTN_5"," x92 y63 w75 h49 +Center |Bold s16", "5","0xF7F7F7|0xC7C7C7")
			AddControl("Text", "BTN_6"," x171 y63 w75 h49 +Center |Bold s16", "6","0xF7F7F7|0xC7C7C7")
	
			AddControl("Text", "BTN_1", "x13 y116 w75 h49 +Center |Bold s16", "7","0xF7F7F7|0xC7C7C7")
			AddControl("Text", "BTN_2", "x92 y116 w75 h49 +Center |Bold s16", "8","0xF7F7F7|0xC7C7C7")
			AddControl("Text", "BTN_3"," x171 y116 w75 h49 +Center |Bold s16", "9","0xF7F7F7|0xC7C7C7")
			
			AddControl("Text", "BTN_Star", " x13 y169 w75 h49 +Center |  s40|Segoe MDL2 Assets", "*","0xF1F1F1|0xC7C7C7")
			AddControl("Text", "BTN_0", "x92 y169 w75 h48 +Center |Bold s16", "0","0xF7F7F7|0xC7C7C7")
			AddControl("Text", "BTN_#", "x171 y169 w75 h48 +Center |  s20", "#","0xF1F1F1|0xC7C7C7")
	
			Gui Show,
		
			OnMessage(0x200, "WM_MOUSEMOVE")		; 0x200 = WM_MOUSEMOVE
		}
	
		AddControl(ControlType, Name_Control, Options := "", Value := "", DIB := "") {
			Gui, Font,, % StrSplit(Options,"|").3
			If (StrSplit(Options,"|").2 != "")
				Gui Font, % StrSplit(Options,"|").2
			Options := StrSplit(Options,"|").1
			Gui Add, Picture, % Options " +BackgroundTrans +0x4E +HWNDh" Name_Control "N Hidden0" 
			Gui Add, Picture, % Options " +BackgroundTrans +0x4E +HWNDh" Name_Control "H Hidden1" 
			Gui Add, % ControlType, % Options " BackgroundTrans 0x200 +HWNDh" Name_Control "U Hidden0", % Value 
			If (DIB != "") {
				CreateSolidColour(StrSplit(DIB,"|").1, (h%Name_Control%N))
				CreateSolidColour(StrSplit(DIB,"|").2, (h%Name_Control%H))
			}
			GUI[Name_Control] := {"Hwnd":{"N":h%Name_Control%N,"H":h%Name_Control%H,"T":h%Name_Control%T,"U":h%Name_Control%U},"Options": Options,"Value": Value}
			Gui Font,
			If (ControlType = "Text") {
				ControlHandler := Func("ControlHandler").Bind(h%Name_Control%U)
				GuiControl +g, % h%Name_Control%U, % ControlHandler
			}
		}
	
		CreateSolidColour(Colour, Hwnd) { ; Based on CreateDIB by SKAN - http://ahkscript.org/boards/viewtopic.php?t=3203 
			VarSetCapacity(BMBITS, 1, 0), P := &BMBITS, P := Numput(Colour, P + 0, 0, "UInt") 
			DllCall("SetBitmapBits", "Ptr", hBM := DllCall("CopyImage", "Ptr", DllCall("CreateBitmap", "Int", 1, "Int", 1, "UInt", 1, "UInt", 24, "Ptr", 0, "Ptr"), "UInt", 0, "Int", 0, "Int", 0, "UInt", 0x2008, "Ptr"), "UInt", 5, "Ptr", &BMBITS)
			DllCall("SendMessage", "Ptr", Hwnd, "UInt", 0x172, "Ptr", 0, "Ptr", DllCall("CopyImage", "Ptr", hBM, "Int", 0, "Int", 0, "Int", 0, "Int", 0x200C, "UPtr"))
		}
