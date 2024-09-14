# Usar a imagem oficial do Nginx como base
FROM nginx:alpine

# Copiar os arquivos HTML e CSS para o diretório de conteúdo do Nginx
COPY index.html /usr/share/nginx/html/index.html
COPY styles.css /usr/share/nginx/html/styles.css

# Expor a porta 80 para o Nginx
EXPOSE 80

# Comando para iniciar o Nginx
CMD ["nginx", "-g", "daemon off;"]
