# Usa immagine ufficiale n8n
FROM n8nio/n8n:latest

# Crea un utente non-root per n8n
USER root

# Crea directory per n8n e imposta permessi
RUN mkdir -p /home/node/.n8n && \
    chown -R node:node /home/node/.n8n

# Passa all'utente node (non-root)
USER node

# Imposta variabili d'ambiente di default
ENV N8N_USER_FOLDER=/home/node/.n8n

# Porta di default n8n
EXPOSE 5678

# Avvia n8n
CMD ["n8n", "start"]