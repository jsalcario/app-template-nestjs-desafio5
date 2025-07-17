# Imagen base
FROM node:18

# Establecer directorio de trabajo
WORKDIR /app

# Copiar archivos de dependencias
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto del código
COPY . .

# Exponer el puerto de NestJS
EXPOSE 3000

# Comando por defecto
CMD ["npm", "run", "start:dev"]