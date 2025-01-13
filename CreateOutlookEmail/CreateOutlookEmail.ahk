#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; Script:    CreateOutlookEmail
; Author:    Casper Harkin
; Github:     
; Date:      13/01/2025
; Version:   1

/*
    Usage:
    This AutoHotkey script automates the creation of an email in Microsoft Outlook. The script allows you to:
    - Set the subject of the email
    - Set the recipient's email address
    - Add attachments
    - Set the email's 'Sent on Behalf of' address
    - Insert a predefined body of text into the email, while preserving the user's existing email signature

    Before running the script, ensure the following:
    - Outlook must be installed and configured on your machine.
    - You must run the script with administrator privileges to ensure proper access to Outlook via COM.
    
    How to use:
    1. Modify the `default_Text` variable to include the body of the email you'd like to send. This can be done by altering the default message.
    2. Change the `m.Subject` line to set the email's subject (for example: "Subject: Employment Status Update").
    3. Modify the recipient's address in `m.To` to the desired recipient's email address (for example: "employee@example.com").
    4. Specify the path of any file you'd like to attach in the `m.Attachments.Add()` line (for example: `"C:\path\to\file.txt"`).
    5. If necessary, change the `m.SentOnBehalfOfName` to reflect the email account you want to send on behalf of (for example: `"hr@example.com"`).

    Features:
    - The script uses Outlook's COM object model to interface directly with the Outlook application and send emails.
    - It ensures that any existing email signatures configured in Outlook are preserved by inserting the body text before the signature.
    - The script supports attachments, so you can include files as part of the email.

    Notes:
    - Ensure Outlook is open and running before executing this script.
    - The email draft will open in Outlook, allowing you to make additional modifications or review the content before sending.
    - The script does not send the email automatically but opens it for you to review, ensuring full control over the final content.
*/



CreateOutlookEmail()

Exit
CreateOutlookEmail(){


default_Text =
(
	
	This email is to inform you that, as of [Date], your employment with [Company Name] will be terminated. This decision has been made following a review of various factors, which have led to this outcome. Unfortunately, we are unable to provide further details at this time.
	
	You are required to return all company property, including but not limited to keys, documents, and any other materials belonging to [Company Name], by [Date]. Failure to do so may result in further actions.
	
	Please be advised that your final paycheck will be processed and sent to the address we have on file. If you have any questions regarding this process, you may contact the appropriate department.
	
	Thank you for your time with us.
	
	Sincerely,
	Casper Harkin
	HR Intern
)
	
	m :=	ComObjActive("Outlook.Application").CreateItem(0)
	m.Subject := "Subject: Employment Status Update"
	m.To :=	"Employee@gmail.com"
	m.Display
	myInspector :=	m.GetInspector, myInspector.Activate
	wdDoc :=	myInspector.WordEditor
	wdRange :=	wdDoc.Range(0, wdDoc.Characters.Count)
	wdRange.InsertBefore("Dear " . "Employee" . " Id: " . "13335-42782" . default_Text)
	m.Attachments.Add("C:\Users\User\Documents\Counseling Services in Your Area.txt")
	m.SentOnBehalfOfName := "HR@gmail.com"
	
)

}
