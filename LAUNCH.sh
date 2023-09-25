#!/bin/bash

# Lancer le projet avec la commande npm run dev
gnome-terminal -e "npm run dev" &

# Attendre quelques secondes pour que le serveur démarre
sleep 5

# Ouvrir le navigateur
xdg-open "http://localhost:3000/"

echo "Appuyez sur une touche pour quitter..."
read -n 1 -s -r -p ""