xl := ComObjActive("Excel.Application")

If CheckIfExcelIsInEditMode(xl) {
		MsgBox % "Excel is in Edit Mode. Exit formula bar." 
	}
Exit ; EOAES


CheckIfExcelIsInEditMode(xl){
if !ComObjType(ComObjActive("Excel.Application"), "Name") ;If In Edit Mode
	Return True
}
