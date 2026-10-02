# ============================================================
# OptimusMax - Activador de Office (Ohook)
# Repo: github.com/maxtecno/otmax
# Upstream: github.com/massgravel/Microsoft-Activation-Scripts (MIT)
# ============================================================
$host.UI.RawUI.WindowTitle = "OptimusMax - Activar Office (Ohook)"
try { [Console]::OutputEncoding = [System.Text.Encoding]::UTF8 } catch {}
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Clear-Host
Write-Host "===========================================" -ForegroundColor Cyan
Write-Host "  OPTIMUSMAX - ACTIVADOR DE OFFICE (OHOOK)" -ForegroundColor Cyan
Write-Host "  Repo: github.com/maxtecno/otmax" -ForegroundColor DarkCyan
Write-Host "  Upstream: github.com/massgravel/Microsoft-Activation-Scripts" -ForegroundColor DarkCyan
Write-Host "===========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "[INFO] Descargando modulo MAS (Ohook)..." -ForegroundColor Yellow
try {
    & ([ScriptBlock]::Create((irm https://get.activated.win))) /Ohook
    Write-Host ""
    Write-Host "[OK] Activacion Ohook completada." -ForegroundColor Green
} catch {
    Write-Host "[ERROR] Fallo: $($_.Exception.Message)" -ForegroundColor Red
}
Write-Host ""
Write-Host "Presiona ENTER para cerrar..." -ForegroundColor Gray
Read-Host | Out-Null