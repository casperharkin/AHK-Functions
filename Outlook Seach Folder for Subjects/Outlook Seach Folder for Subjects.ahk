			olApp := ComObjactive("Outlook.Application")
		 	olNameSpace := olApp.GetNamespace("MAPI") 
		 	olFolder := olNameSpace.Folders("abc@abc.com").Folders("Below Safety Stock") 
		
		 	sSubject := "DESIRED SUBJECT TEXT HERE"  
		 	for olItem in olFolder.Items
		    	If instr(olItem.Subject, sSubject)
					MsgBox % "Found Email with your Search Term in the Subject. `n`n`n" olItem.Subject