; Change your hotkey here (Default Win + ~)
^!t::

DetectHiddenWindows, on
IfWinExist ahk_exe ubuntu.exe
{

	IfWinActive ahk_exe ubuntu.exe
	{
		WinHide ahk_exe ubuntu.exe
		WinActivate ahk_id %active_id%
	}
	else
	{
		WinGet, active_id, ID, A
		WinShow ahk_exe ubuntu.exe
		WinActivate ahk_exe ubuntu.exe
	}
}
else
	Run ubuntu.exe

DetectHiddenWindows, off
return
