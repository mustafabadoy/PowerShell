#Consultar Serviços do Windows
Clear-Host
$Serv = Get-Service -Name Spooler
if ($Serv.Status -eq "Running")
    {
    Write-Host "Serviço em Execução"
    }
    Else
    {
    Write-Host "Serviço Parado"
    }
    