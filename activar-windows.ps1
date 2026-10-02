# ============================================================
# OptimusMax - Activador de Windows (HWID)
# Repo: github.com/maxtecno/otmax
# Upstream: github.com/massgravel/Microsoft-Activation-Scripts (MIT)
# ============================================================
$host.UI.RawUI.WindowTitle = "OptimusMax - Activar Windows (HWID)"
try { [Console]::OutputEncoding = [System.Text.Encoding]::UTF8 } catch {}
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Clear-Host
Write-Host "===========================================" -ForegroundColor Cyan
Write-Host "  OPTIMUSMAX - ACTIVADOR DE WINDOWS" -ForegroundColor Cyan
Write-Host "  Repo: github.com/maxtecno/otmax" -ForegroundColor DarkCyan
Write-Host "  Upstream: github.com/massgravel/Microsoft-Activation-Scripts" -ForegroundColor DarkCyan
Write-Host "===========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "[INFO] Descargando modulo MAS (HWID)..." -ForegroundColor Yellow
try {
    & ([ScriptBlock]::Create((irm https://get.activated.win))) /HWID
    Write-Host ""
    Write-Host "[OK] Activacion HWID completada." -ForegroundColor Green
} catch {
    Write-Host "[ERROR] Fallo: $($_.Exception.Message)" -ForegroundColor Red
}
Write-Host ""
Write-Host "Presiona ENTER para cerrar..." -ForegroundColor Gray
Read-Host | Out-Null