# Utiliser l'image Node officielle
FROM node:20

# Définir le dossier de travail
WORKDIR /usr/src/app

# Copier les fichiers package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste des fichiers
COPY . .

# Lancer le test au démarrage (optionnel)
CMD [ "npm", "run", "node-test" ]
