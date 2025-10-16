Write-Host "What would you like to do?"
Write-Host "--------------------------"
Write-Host "1) Get Server Status"
Write-Host "2) Start Server"
Write-Host "3) Stop Server"
$option = Read-Host
if ($option -eq 1)
{
    Get-Process -Name MordhauServer -ErrorAction SilentlyContinue
    Write-Host "$($PSStyle.Foreground.Red)$($Error[0])"
    Get-Process -Name MordhauServer-Win64-Shipping -ErrorAction SilentlyContinue
    Write-Host "$($PSStyle.Foreground.Red)$($Error[0])"
}
elseif ($option -eq 2) 
{
    Write-Host "Starting Mordhau Server"
    #Start-Process -Name MordhauServer
    #Start-Process -Name MordhauServer-Win64-Shipping
}
elseif ($option -eq 3)
{
    Stop-Process -Name MordhauServer -ErrorAction SilentlyContinue
    Write-Host "$($PSStyle.Foreground.Red)$($Error[0])"
    Stop-Process -Name MordhauServer-Win64-Shipping -ErrorAction SilentlyContinue
    Write-Host "$($PSStyle.Foreground.Red)$($Error[0])"
}