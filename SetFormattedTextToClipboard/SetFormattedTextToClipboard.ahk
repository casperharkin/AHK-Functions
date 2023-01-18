



		SetFormattedTextToClipboard("AutoHotkey", "Calibri", 16, "bold")
		Exit
		
		; Modified Teadrinkers code to add bold option. 
		; https://www.autohotkey.com/boards/viewtopic.php?t=79387
		SetFormattedTextToClipboard(text, font, size, Bold := 0, color := 0) {
		   static htmlFormat := DllCall("RegisterClipboardFormat", "Str", "HTML Format")
		        , CF_UNICODETEXT := 13, LOGPIXELSY := 90, GMEM_MOVEABLE := 0x0002
		        , htmlHeader := "Version:0.9`nStartHTML:-1`nEndHTML:-1`nStartFragment:0000000084`nEndFragment:0000000000`n"
		        , htmlHeaderSize := 84
		   
		   hDC := DllCall("GetDC", "Ptr", 0, "Ptr")
		   size := Round(DllCall("GetDeviceCaps", "Ptr", hDC, "Int", LOGPIXELSY) * size/72 * 96/A_ScreenDPI)
		   DllCall("ReleaseDC", "Ptr", 0, "Ptr", hDC)
		   color := Format("#{:06x}", color)
		   
		   VarSetCapacity(utf8Data, StrPut(text, "UTF-8"))
		   StrPut(text, &utf8Data, "UTF-8")
		   str := RegExReplace(StrGet(&utf8Data, "cp0"), "\R", "<br>")
		   
		   html = <span style="font-family: %font%; font-size: %size%px; color: %color%; font-weight: %bold%;">%str%</span>
		   endFragmentOffset := Format("{:010u}", htmlHeaderSize + StrLen(html))
		   htmlHeader := RegExReplace(htmlHeader, "0{10}", endFragmentOffset)
		   str := htmlHeader . html
		   VarSetCapacity(htmlData, htmlDataLen := StrPut(str, "cp0"))
		   StrPut(str, &htmlData, "cp0")
		   
		   VarSetCapacity(unicodeData, unicodeDataLen := StrPut(text, "UTF-16")*2)
		   StrPut(text, &unicodeData, "UTF-16")
		   
		   DllCall("OpenClipboard", "Ptr", 0)
		   DllCall("EmptyClipboard")
		   Loop 2 {
		      b := A_Index = 1
		      len := b ? htmlDataLen : unicodeDataLen
		      pData := b ? &htmlData : &unicodeData
		      clipFormat := b ? htmlFormat : CF_UNICODETEXT
		      hMem := DllCall("GlobalAlloc", "UInt", GMEM_MOVEABLE, "Ptr", len)
		      pMem := DllCall("GlobalLock", "Ptr", hMem, "Ptr")
		      DllCall("RtlMoveMemory", "Ptr", pMem, "Ptr", pData, "Ptr", len)
		      DllCall("SetClipboardData", "UInt", clipFormat, "Ptr", hMem)
		      DllCall("GlobalUnlock", "Ptr", hMem)
		      DllCall("GlobalFree", "Ptr", hMem)
		   }
		   DllCall("CloseClipboard")
		}