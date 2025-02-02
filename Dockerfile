# Utiliser une image de base officielle
FROM node:16

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers de dépendances
COPY package.json yarn.lock ./

# Installer les dépendances
RUN yarn install

# Copier le reste du code de l'application
COPY . .

# Exposer le port sur lequel l'application écoute
EXPOSE 3000

# Commande pour démarrer l'application
CMD ["yarn", "start"]