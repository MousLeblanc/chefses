@echo off
echo Nettoyage du projet...
cd /d %~dp0

:: Suppression des dossiers
if exist "node_modules" rmdir /s /q "node_modules"
if exist "package-lock.json" del "package-lock.json"

echo Réinstallation des dépendances...
call npm install

echo Opération terminée!
pause