function CloselocalProcess {
    [CmdletBinding()]
    param()
    # Write-Host "Starting Java process cleanup..." -ForegroundColor Cyan

    # try {
    #     # Get all java.exe processes
    #     $javaProcesses = Get-Process -Name java -ErrorAction SilentlyContinue

    #     if ($null -eq $javaProcesses -or $javaProcesses.Count -eq 0) {
    #         Write-Host "No Java processes found." -ForegroundColor Yellow
    #     }
    #     else {
    #         foreach ($proc in $javaProcesses) {
    #             try {
    #                 Write-Host "Stopping Java process with ID $($proc.Id) and name $($proc.ProcessName)" -ForegroundColor Magenta
    #                 Stop-Process -Id $proc.Id -Force -ErrorAction Stop
    #             }
    #             catch {
    #                 Write-Warning "Failed to stop process ID $($proc.Id): $_"
    #             }
    #         }

    #         Write-Host "All Java processes terminated." -ForegroundColor Green
    #     }
    # }
    # catch {
    #     Write-Error "An error occurred during Java process cleanup: $_"
    # }

    Write-Host "Starting JMeter server cleanup" -ForegroundColor Cyan
}
