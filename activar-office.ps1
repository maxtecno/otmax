# OptimusMax - Activador de Office (MAS Ohook)
# Fuente upstream: https://github.com/massgravel/Microsoft-Activation-Scripts
# Licencia: MIT

$host.UI.RawUI.WindowTitle = "OptimusMax - Activar Office (MAS Ohook)"
try { [Console]::OutputEncoding = [System.Text.Encoding]::UTF8 } catch {}

Clear-Host
Write-Host "===========================================" -ForegroundColor Cyan
Write-Host "  OPTIMUSMAX - ACTIVADOR DE OFFICE (OHOOK)" -ForegroundColor Cyan
Write-Host "  Fuente: github.com/massgravel/Microsoft-Activation-Scripts" -ForegroundColor DarkCyan
Write-Host "===========================================" -ForegroundColor Cyan
Write-Host ""

& ([ScriptBlock]::Create((irm https://get.activated.win))) /Ohook

Write-Host ""
Write-Host "Presiona ENTER para cerrar..." -ForegroundColor Gray
Read-Host | Out-Null