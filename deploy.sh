#!/bin/bash

echo "1. Parando o container antigo..."
sudo docker stop app-web || true
sudo docker rm app-web || true

echo "2. Construindo a nova imagem do Docker..."
sudo docker build -t minha-aplicacao-web .

echo "3. Iniciando a nova versão em container..."
sudo docker run -d -p 80:80 --name app-web minha-aplicacao-web

echo "Deploy finalizado com sucesso!"
