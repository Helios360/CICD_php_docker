FROM php:8.1-apache

# Copier les fichiers de l'application dans le conteneur
COPY ./public /var/www/html

# Activer le module rewrite d'Apache
RUN a2enmod rewrite

# Exposer le port 80
EXPOSE 80
