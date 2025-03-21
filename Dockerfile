# Usa una imagen base de Nginx para servir el contenido estático
FROM nginx:alpine

# Copia tu archivo HTML y el archivo JavaScript a la carpeta de Nginx
COPY index.html /usr/share/nginx/html/index.html
COPY logica.js /usr/share/nginx/html/logica.js

# Exponer el puerto 80 (por defecto para Nginx)
EXPOSE 80

# Nginx ya está configurado para iniciar automáticamente
CMD ["nginx", "-g", "daemon off;"]