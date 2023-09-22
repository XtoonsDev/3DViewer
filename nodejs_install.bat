@echo off
cls

:: Vérifier si Node.js est déjà installé
where node >nul 2>&1
if %errorlevel%==0 (
    echo Node.js est déjà installé.
) else (
    :: Définir le lien de téléchargement pour Node.js
    set NODEJS_URL=https://nodejs.org/dist/v20.7/node-v20.7.0-x64.msi

    :: Télécharger et installer Node.js
    echo Téléchargement de Node.js...
    bitsadmin.exe /transfer "NodeJSInstaller" %NODEJS_URL% "%TEMP%\nodejs_installer.msi"
    msiexec.exe /i "%TEMP%\nodejs_installer.msi" /qn

    :: Nettoyer les fichiers temporaires
    del "%TEMP%\nodejs_installer.msi"
)

echo Installation terminée. Appuyez sur une touche pour continuer...
pause > nul
