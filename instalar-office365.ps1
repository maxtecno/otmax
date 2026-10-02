# ============================================================
# OptimusMax - Instalador Office 365 (GO365)
# Repo: github.com/maxtecno/otmax
# Upstream: github.com/NaeemBolchhi/Get-Office-365 (MIT)
# ============================================================
$host.UI.RawUI.WindowTitle = "OptimusMax - Instalar Office 365"
try { [Console]::OutputEncoding = [System.Text.Encoding]::UTF8 } catch {}
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Clear-Host
Write-Host "===========================================" -ForegroundColor Cyan
Write-Host "  OPTIMUSMAX - INSTALADOR DE OFFICE 365" -ForegroundColor Cyan
Write-Host "  Repo: github.com/maxtecno/otmax" -ForegroundColor DarkCyan
Write-Host "  Upstream: github.com/NaeemBolchhi/Get-Office-365" -ForegroundColor DarkCyan
Write-Host "===========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "[INFO] Descargando instalador GO365..." -ForegroundColor Yellow
try {
    & ([ScriptBlock]::Create((irm https://naeembolchhi.github.io/Get-Office-365/GO365.ps1)))
    Write-Host ""
    Write-Host "[OK] Instalador GO365 finalizado." -ForegroundColor Green
} catch {
    Write-Host "[ERROR] Fallo: $($_.Exception.Message)" -ForegroundColor Red
}
Write-Host ""
Write-Host "Presiona ENTER para cerrar..." -ForegroundColor Gray
Read-Host | Out-Null