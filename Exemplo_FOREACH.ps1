#Exempor FOREACH
cls
#foreach ($numeros in 1,2,3,4,5,6,7,8,9,10) {echo $numeros}
foreach ($arquivos in Get-ChildItem) {
if ($arquivos.IsReadOnly){
Write-Host $arquivos .FullName}
}

#Mais Exemplos
Get-Process Notepad
Get-Process Notepad | foreach kill

