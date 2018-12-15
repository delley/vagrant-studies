#!/bin/bash

echo "Atualizando repositórios"
sudo apt-get update
echo "Instalando o nginx"
sudo apt-get install -y nginx
echo "Instalado PHP"
sudo apt-get install -y php5-fpm