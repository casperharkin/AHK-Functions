; Script:    Read Write to Memory - AssaultCube.ahk
; Author:    Casper Harkin
; Github:     
; Date:      13/01/2025
; Version:   1

/*
    Based on comments by YMP2 - https://www.autohotkey.com/boards/viewtopic.php?style=7&t=54657
    Game download - https://assault.cubers.net/download.html

    An AutoHotkey script designed to interact with the memory 
    of a game (e.g., AssaultCube) to manipulate player health. This script allows users 
    to display the current health, set the health to a custom value, and read/write memory 
    values dynamically. It leverages Windows API functions to access and modify process memory 
    based on window names and memory addresses.


    Author's Note:
    - Assault Cube V1.3
	- You may need to locate your own pointer and the offset (use a pointerscan in Cheat Engine). 
	- Needs to be run as Admin

    Example Usage:
    To use this script, launch it alongside a supported game (e.g., AssaultCube) to manipulate 
    the player's health:
        - Press F3 to display the current health of the player.
        - Press F4 to set the player's health to 500.

*/

#SingleInstance, Force

; ======================= Main Variables ========================================

Pointer := 0x0017E0A8
Offset := 0xEC

ProcessBase := ProcessBaseFromWindow("AssaultCube")
PlayerObjectPointer := NumberFromWindowProcess("AssaultCube", ProcessBase + Pointer, "ptr")
HealthAddress := PlayerObjectPointer + Offset

; ======================= Hotkeys ===============================================

; Display current health
F3::MsgBox % "Health: " Health := NumberFromWindowProcess("AssaultCube", HealthAddress, "uint")

; Set health to 200
F4::NumberToWindowProcess(500, "AssaultCube", HealthAddress, "uint")

Exit ; End of AES

; Retrieves the base address of a process from a window name
ProcessBaseFromWindow(Window) {
    static GWL_HINSTANCE := -6
    try {
        hWnd := WinExist(Window)
        if (!hWnd) {
            Throw Exception("Window not found: " . Window)
        }

        FuncName := (A_PtrSize = 4) ? "GetWindowLong" : "GetWindowLongPtr"

        ; Get the base address of the process from the window
        Base := DllCall(FuncName, "ptr", hWnd, "int", GWL_HINSTANCE)
        if (!Base) {
            Throw Exception(FuncName . " failed: Error Code " . A_LastError)
        }

        return Base
    } catch e {
        MsgBox, 16, Error, % e.Message
        ExitApp
    }
}

; Reads a number from a process's memory
NumberFromWindowProcess(Window, Address, NumType) {
    hProcess := ""
    Try {
        hProcess := HandleFromPid(PidFromWindow(Window))
        Return NumberFromProcess(hProcess, Address, NumType)
    } Catch e {
        HandleError(e, hProcess)
    } Finally {
        If (hProcess)
            CloseHandle(hProcess)
    }
}

; Writes a number to a process's memory
NumberToWindowProcess(Number, Window, Address, NumType) {
    hProcess := ""  ; Ensure hProcess is initialized to avoid issues in error handling.
    Try {
        hProcess := GetProcessHandleFromWindow(Window)
        NumberToProcess(Number, hProcess, Address, NumType)
    } Catch e {
        HandleError(e, hProcess)
    } Finally {
        If (hProcess)
            CloseHandle(hProcess)
    }
}

GetProcessHandleFromWindow(Window) {
    pid := PidFromWindow(Window)    
    Return HandleFromPid(pid)     
}

PidFromWindow(Window) {
    If !WinExist(Window)
        Throw Exception("Window not found: " . Window)
    WinGet, PID, PID
    Return PID
}

; Gets a handle to the process given its PID
HandleFromPid(Pid) {
    static PROCESS_VM_OPERATION := 0x8, PROCESS_VM_READ := 0x10, PROCESS_VM_WRITE := 0x20
    hProcess := DllCall("OpenProcess", "uint", PROCESS_VM_READ | PROCESS_VM_WRITE | PROCESS_VM_OPERATION, "int", False, "uint", Pid, "ptr")
    If (!hProcess) {
        Throw Exception("OpenProcess failed: Error Code " . A_LastError)
    }
    Return hProcess
}

; Reads a number from process memory
NumberFromProcess(hProcess, Address, NumType) {
    VarSetCapacity(buf, 8, 0)
    If (NumType = "ptr") {
        NumType := ProcessBitness(hProcess) = 32 ? "uint" : "uint64"
    }
    If !DllCall("ReadProcessMemory", "ptr", hProcess, "ptr", Address, "ptr", &buf, "ptr", 8, "ptr", 0) {
        Throw Exception("ReadProcessMemory failed: Error Code " . A_LastError)
    }
    Return NumGet(buf, 0, NumType)
}

; Writes a number to process memory
NumberToProcess(Number, hProcess, Address, NumType) {
    VarSetCapacity(buf, 8, 0)
    If (NumType = "ptr") {
        NumType := ProcessBitness(hProcess) = 32 ? "uint" : "uint64"
    }
    BytesToWrite := NumPut(Number, buf, 0, NumType) - &buf
    If !DllCall("WriteProcessMemory", "ptr", hProcess, "ptr", Address, "ptr", &buf, "ptr", BytesToWrite, "ptr", 0) {
        Throw Exception("WriteProcessMemory failed: Error Code " . A_LastError)
    }
}

; Determines the bitness of a process
ProcessBitness(hProcess) {
    If (!A_Is64bitOS) {
        Return 32
    }
    IsWow64 := False
    DllCall("IsWow64Process", "ptr", hProcess, "uint *", IsWow64)
    Return IsWow64 ? 32 : 64
}

; Error handling
HandleError(e, hProcess := 0) {
    If (hProcess) {
        CloseHandle(hProcess)
    }
    MsgBox,, Error, % e.Message
    ExitApp
}

; Closes a process handle
CloseHandle(hProcess) {
    DllCall("CloseHandle", "ptr", hProcess)
}
