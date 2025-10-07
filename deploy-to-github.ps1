# Script de Despliegue Automático a GitHub Pages
# Para: Landing Page Casanare - Emiratos Árabes

Write-Host "=========================================" -ForegroundColor Cyan
Write-Host "  DESPLIEGUE CASANARE - EMIRATOS ARABES  " -ForegroundColor Cyan
Write-Host "=========================================" -ForegroundColor Cyan
Write-Host ""

# Verificar si Git está instalado
try {
    git --version | Out-Null
    Write-Host "✓ Git detectado" -ForegroundColor Green
} catch {
    Write-Host "✗ Git no está instalado. Por favor instala Git primero." -ForegroundColor Red
    Write-Host "  Descarga: https://git-scm.com/download/win" -ForegroundColor Yellow
    pause
    exit
}

Write-Host ""
Write-Host "Este script te ayudará a publicar tu sitio en GitHub Pages" -ForegroundColor Yellow
Write-Host ""

# Solicitar nombre de usuario de GitHub
$username = Read-Host "Ingresa tu usuario de GitHub"
if ([string]::IsNullOrWhiteSpace($username)) {
    Write-Host "✗ Nombre de usuario requerido" -ForegroundColor Red
    pause
    exit
}

# Solicitar nombre del repositorio
$reponame = Read-Host "Ingresa el nombre del repositorio (ej: casanare-emiratos)"
if ([string]::IsNullOrWhiteSpace($reponame)) {
    Write-Host "✗ Nombre de repositorio requerido" -ForegroundColor Red
    pause
    exit
}

Write-Host ""
Write-Host "Configuración:" -ForegroundColor Cyan
Write-Host "  Usuario: $username" -ForegroundColor White
Write-Host "  Repositorio: $reponame" -ForegroundColor White
Write-Host "  URL Final: https://$username.github.io/$reponame/" -ForegroundColor Green
Write-Host ""

$confirm = Read-Host "¿Continuar? (S/N)"
if ($confirm -ne "S" -and $confirm -ne "s") {
    Write-Host "Operación cancelada" -ForegroundColor Yellow
    pause
    exit
}

Write-Host ""
Write-Host "Iniciando despliegue..." -ForegroundColor Cyan
Write-Host ""

# Paso 1: Inicializar Git si no existe
if (-not (Test-Path ".git")) {
    Write-Host "[1/6] Inicializando repositorio Git..." -ForegroundColor Yellow
    git init
    Write-Host "✓ Repositorio inicializado" -ForegroundColor Green
} else {
    Write-Host "[1/6] Repositorio Git ya existe" -ForegroundColor Green
}

# Paso 2: Agregar archivos
Write-Host "[2/6] Agregando archivos al staging..." -ForegroundColor Yellow
git add .
Write-Host "✓ Archivos agregados" -ForegroundColor Green

# Paso 3: Crear commit
Write-Host "[3/6] Creando commit..." -ForegroundColor Yellow
$commitMessage = Read-Host "Mensaje del commit (Enter para usar mensaje por defecto)"
if ([string]::IsNullOrWhiteSpace($commitMessage)) {
    $commitMessage = "Deploy: Landing Page Casanare-EAU $(Get-Date -Format 'yyyy-MM-dd HH:mm')"
}
git commit -m "$commitMessage"
Write-Host "✓ Commit creado: $commitMessage" -ForegroundColor Green

# Paso 4: Configurar remote
Write-Host "[4/6] Configurando repositorio remoto..." -ForegroundColor Yellow
$remoteUrl = "https://github.com/$username/$reponame.git"

# Verificar si ya existe el remote
$existingRemote = git remote get-url origin 2>$null
if ($existingRemote) {
    Write-Host "  Remote ya existe: $existingRemote" -ForegroundColor Yellow
    $updateRemote = Read-Host "  ¿Actualizar URL? (S/N)"
    if ($updateRemote -eq "S" -or $updateRemote -eq "s") {
        git remote set-url origin $remoteUrl
        Write-Host "✓ Remote actualizado" -ForegroundColor Green
    }
} else {
    git remote add origin $remoteUrl
    Write-Host "✓ Remote configurado: $remoteUrl" -ForegroundColor Green
}

# Paso 5: Renombrar rama a main
Write-Host "[5/6] Configurando rama principal..." -ForegroundColor Yellow
git branch -M main
Write-Host "✓ Rama configurada como 'main'" -ForegroundColor Green

# Paso 6: Push a GitHub
Write-Host "[6/6] Subiendo a GitHub..." -ForegroundColor Yellow
Write-Host ""
Write-Host "IMPORTANTE: Se abrirá una ventana de autenticación de GitHub" -ForegroundColor Yellow
Write-Host "Ingresa tus credenciales cuando se soliciten" -ForegroundColor Yellow
Write-Host ""
pause

try {
    git push -u origin main
    Write-Host ""
    Write-Host "=========================================" -ForegroundColor Green
    Write-Host "  ✓ DESPLIEGUE EXITOSO  " -ForegroundColor Green
    Write-Host "=========================================" -ForegroundColor Green
    Write-Host ""
    Write-Host "Próximos pasos:" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "1. Ve a: https://github.com/$username/$reponame" -ForegroundColor White
    Write-Host "2. Click en 'Settings' (Configuración)" -ForegroundColor White
    Write-Host "3. En el menú lateral, click en 'Pages'" -ForegroundColor White
    Write-Host "4. En 'Source', selecciona 'main' branch" -ForegroundColor White
    Write-Host "5. Click en 'Save'" -ForegroundColor White
    Write-Host ""
    Write-Host "Tu sitio estará disponible en:" -ForegroundColor Yellow
    Write-Host "  https://$username.github.io/$reponame/" -ForegroundColor Green
    Write-Host ""
    Write-Host "Tiempo de activación: 2-5 minutos" -ForegroundColor Yellow
    Write-Host ""
    
} catch {
    Write-Host ""
    Write-Host "✗ Error al subir a GitHub" -ForegroundColor Red
    Write-Host "Posibles causas:" -ForegroundColor Yellow
    Write-Host "  - Credenciales incorrectas" -ForegroundColor White
    Write-Host "  - El repositorio no existe en GitHub (créalo primero)" -ForegroundColor White
    Write-Host "  - No tienes permisos en el repositorio" -ForegroundColor White
    Write-Host ""
    Write-Host "Solución:" -ForegroundColor Cyan
    Write-Host "  1. Crea el repositorio en https://github.com/new" -ForegroundColor White
    Write-Host "  2. Nombre del repositorio: $reponame" -ForegroundColor White
    Write-Host "  3. Deja el repositorio VACÍO (sin README)" -ForegroundColor White
    Write-Host "  4. Ejecuta este script nuevamente" -ForegroundColor White
    Write-Host ""
}

Write-Host ""
Write-Host "¿Deseas abrir GitHub en el navegador? (S/N)" -ForegroundColor Yellow
$openBrowser = Read-Host
if ($openBrowser -eq "S" -or $openBrowser -eq "s") {
    Start-Process "https://github.com/$username/$reponame/settings/pages"
    Write-Host "✓ Navegador abierto" -ForegroundColor Green
}

Write-Host ""
Write-Host "Presiona cualquier tecla para salir..." -ForegroundColor Gray
pause

