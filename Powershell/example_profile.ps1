
# Import posh-git and measure time taken
Write-host -ForegroundColor DarkCyan "*********************************"
Write-host -ForegroundColor Cyan "Loading: posh-git"

$exTime = Measure-Command { # Returns TimeSpan object with length of time command took to run
    Import-Module posh-git
}
Write-host "$([int]$exTime.TotalMilliseconds) ms"

# Import oh-my-posh and measure time taken
Write-host -ForegroundColor DarkCyan "*********************************"
Write-host -ForegroundColor Cyan "Loading: Oh My Posh"

$exTime = Measure-Command {
    oh-my-posh init pwsh --config '~\Documents\PowerShell\Helpers\CTv3_amro.omp.json' | Invoke-Expression
}
Write-host "$([int]$exTime.TotalMilliseconds) ms"

# Import Terminal-Icons and measure time taken
Write-host -ForegroundColor DarkCyan "*********************************"
Write-host -ForegroundColor Cyan "Loading: Terminal-Icons"

$exTime = Measure-Command {
    Import-Module -Name Terminal-Icons
}
Write-host "$([int]$exTime.TotalMilliseconds) ms"

Write-host -ForegroundColor DarkCyan "*********************************"

# Set aliases
Set-Alias 1deep ~\Documents\PowerShell\Scripts\1DeepPullSubfolders.ps1
Set-Alias 2deep ~\Documents\PowerShell\Scripts\2DeepPullSubfolders.ps1

