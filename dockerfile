# Utilise une image Python légère
FROM python:3.9-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers nécessaires
COPY requirements.txt requirements.txt
COPY app.py app.py

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port (optionnel si c'est une API)
EXPOSE 80

# Lancer le script
CMD ["python", "app.py"]
