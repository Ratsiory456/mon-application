#!/bin/bash

clear

echo "********************************"
echo "*     MON PROJET PYTHON        *"
echo "********************************"

cd ~/mon_application || exit 1

echo "Activation de l'environnement Python..."

source venv/bin/activate

echo "Installation verifiee !"
echo "Python :"
python --version

echo "Flask :"
python -m flask --version

echo "********************************"
echo "*   ENVIRONNEMENT PRET !       *"
echo "********************************"
