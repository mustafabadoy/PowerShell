Clear-Host

Get-Command -Module PSScheduledjob | Sort-Object Noun

$diario = New-JobTrigger -Daily -at 2pm
$umavez = New-JobTrigger -Once -at (Get-Date).AddHours(1)
$semanal = New -JobTrigger -Weekly -DaysofWeek Monday -at 6pm

Register-Scheduledjob -name backup -Trigger $diario -ScriptBlock {
Copy-Item C:\SCRIPTS\*.* C:\OneDrive\Scripts\ -Recurse -Force
}

Get-Scheduledjob