dim oShell
set oShell = Wscript.CreateObject("Wscript.Shell")
configproxy = "proxy:4731"

if msgbox("Habilitar Proxy?", vbQuestion or vbYesNo) = vbYes then
oShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyEnable", 1, "REG_DWORD"
oShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyServer", configproxy, "REG_SZ"
else
oShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyEnable", 0, "REG_DWORD"
end if

Set oShell = Nothing
