# OptimusMax - Instalador Office 365 (GO365)
# Fuente upstream: https://github.com/NaeemBolchhi/Get-Office-365
# Licencia: MIT

$host.UI.RawUI.WindowTitle = "OptimusMax - Instalar Office 365"
try { [Console]::OutputEncoding = [System.Text.Encoding]::UTF8 } catch {}

Clear-Host
Write-Host "===========================================" -ForegroundColor Cyan
Write-Host "  OPTIMUSMAX - INSTALADOR DE OFFICE 365" -ForegroundColor Cyan
Write-Host "  Fuente: github.com/NaeemBolchhi/Get-Office-365" -ForegroundColor DarkCyan
Write-Host "===========================================" -ForegroundColor Cyan
Write-Host ""

& ([ScriptBlock]::Create((irm https://naeembolchhi.github.io/Get-Office-365/GO365.ps1)))

Write-Host ""
Write-Host "Presiona ENTER para cerrar..." -ForegroundColor Gray
Read-Host | Out-Null