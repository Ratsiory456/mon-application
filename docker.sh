#!/bin/bash

echo "=== CONSTRUCTION DE L'IMAGE DOCKER ==="

cd ~/mon_application || exit 1

sudo docker build -t mon-application .

if [ $? -ne 0 ]; then
    echo "Erreur de construction !"
    exit 1
fi

echo "=== LANCEMENT DU CONTENEUR ==="

sudo docker run -d \
    --name mon-app \
    -p 5000:5000 \
    mon-application

echo "Application demarree !"
echo "http://localhost:5000"
