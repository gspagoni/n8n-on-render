# Usa l'immagine ufficiale n8n
FROM n8nio/n8n:latest

# Imposta variabili d'ambiente per evitare problemi di permessi
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false
ENV N8N_USER_FOLDER=/.n8n

# Espone la porta
EXPOSE 5678

# Avvio semplice - lascia che l'immagine usi il suo comando di default
CMD ["tini", "--", "/usr/local/bin/docker-entrypoint.sh", "n8n"]