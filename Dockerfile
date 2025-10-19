# Utiliser l'image officielle Node.js
FROM node:20

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier tout le reste des fichiers du projet
COPY . .

# Exposer le port si nécessaire (par ex. pour une API)
EXPOSE 3000

# Commande pour lancer les tests
CMD ["npm", "test"]
