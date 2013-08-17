$path = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings'
Set-ItemProperty -Path $path -Name "ProxyEnable" -Value "1"
Set-ItemProperty -Path $path -Name "MigrateProxy" -Value "1"
If(-not(Test-Path -Path $path))
  {
   New-Item -Path $path -Force
   New-ItemProperty -Path $path -Name "ProxyServer" -Value "129.252.46.48:3128"
  }
Else
  {
   Set-ItemProperty -Path $path -Name "ProxyServer" -Value "129.252.46.48:3128"
  }



