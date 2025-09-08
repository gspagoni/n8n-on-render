# Usa l'immagine ufficiale n8n
FROM n8nio/n8n:latest

# Imposta l'utente root per configurare i permessi
USER root

# Crea la directory con permessi corretti
RUN mkdir -p /.n8n && \
    chown -R node:node /.n8n && \
    chmod -R 755 /.n8n

# Torna all'utente node
USER node

# Imposta variabili d'ambiente
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false
ENV N8N_USER_FOLDER=/.n8n

# Espone la porta
EXPOSE 5678

# Avvio con il comando originale dell'immagine
CMD ["tini", "--", "/usr/local/bin/docker-entrypoint.sh", "n8n"]