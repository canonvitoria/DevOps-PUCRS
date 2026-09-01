# Usa uma imagem oficial de servidor web muito leve
FROM nginx:alpine

# Copia o  arquivo HTML para dentro da pasta do servidor no container
COPY index.html /usr/share/nginx/html/index.html

# Libera a porta 80
EXPOSE 80
