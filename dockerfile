# Utilise une image Python légère
FROM python:3.9-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers nécessaires
Run apt-get update
COPY . .

# Installer les dépendances
RUN pip install -r requirements.txt

# Exposer le port (optionnel si c'est une API)
EXPOSE 80

# Lancer le script
CMD ["python3", "main.py"]
