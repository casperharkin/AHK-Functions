; Toggle Bluetooth script
; AHK v1
; Author: Casper Harkin
; Date: 02/01/2025

; Retrieve the full command line that the script was launched with
full_command_line := DllCall("GetCommandLine", "str")

; Check if the script is running as an administrator or if it was restarted with the "/restart" argument
if not (A_IsAdmin or RegExMatch(full_command_line, " /restart(?!\S)")) {
    try
        ; Relaunch the script with administrator privileges if it is not already running as admin
        Run *RunAs "%A_AhkPath%" /restart "%A_ScriptFullPath%"
    ExitApp ; Exit the current instance of the script
}

; Bind the "q" key to toggle Bluetooth functionality
q::ToggleBluetooth()

; Function to toggle the Bluetooth state
ToggleBluetooth() {
    static t := True ; Initialize a static variable to track the current Bluetooth state (True means enabled)
    t := !t ; Toggle the state (True <-> False)

    ; Construct and run a PowerShell command to toggle Bluetooth
    Run % "PowerShell -Command ""(Get-PnpDevice -Class Bluetooth).Where({$_.Status " (t ? "-ne 'OK'}) | Enable" : "-eq 'OK'}) | Disable") "-PnpDevice -Confirm:$false""", , Hide
    ; Explanation:
    ; - `Get-PnpDevice -Class Bluetooth`: Retrieves Bluetooth devices
    ; - `.Where({$_.Status ...})`: Filters devices based on their current status
    ; - `Enable-PnpDevice` or `Disable-PnpDevice`: Enables or disables the devices
    ; - `-Confirm:$false`: Suppresses confirmation prompts
}
