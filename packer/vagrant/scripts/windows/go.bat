powershell -Command "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::TLS12; (New-Object System.Net.WebClient).DownloadFile('https://vagrant-public-cache.s3.amazonaws.com/go1.16.6.windows-amd64.msi', 'C:\Windows\Temp\go.msi')" <NUL

set SEE_MASK_NOZONECHECKS=1
cmd /c msiexec /qn /i C:\Windows\Temp\go.msi

setx PATH "%PATH%;C:\Program Files\Go\bin" /m
