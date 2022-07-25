OnExit("ExitFunc")

; Setting New Work Area
SetWorkarea(A_ScreenWidth-200,A_ScreenHeight-27)

Return

ExitFunc(){ ; Reverting to Old Workarea
SetWorkarea(A_ScreenWidth,A_ScreenHeight)
}

EncodeInteger( p_value, p_size, p_address, p_offset )
{
	loop, %p_size%
		DllCall( "RtlFillMemory"
			, "uint", p_address+p_offset+A_Index-1
			, "uint", 1
			, "uchar", ( p_value >> ( 8*( A_Index-1 ) ) ) & 0xFF )
}

SetWorkarea(Width, Hight) {
VarSetCapacity( area, 16 )
EncodeInteger(Width, 4, &area, 8 )
EncodeInteger(Hight, 4, &area, 12 )
success := DllCall( "SystemParametersInfo", "uint", 0x2F, "uint", 0, "uint", &area, "uint", 0 )
if ( ErrorLevel or ! success )
{
	MsgBox, [1] failed: EL = %ErrorLevel%
	ExitApp
}
return
}