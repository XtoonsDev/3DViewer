@echo off
cls

:: Se déplacer vers le répertoire du projet 3DViewer
cd "%userprofile%\Desktop\3DViewer-main"

:: Lancer le projet avec la commande npm run dev
start cmd /k npm run dev

:: Ouvrir le navigateur
start "" "http://localhost:3000/"

echo Appuyez sur une touche pour quitter...
pause > nul
