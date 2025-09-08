# Usa l'immagine ufficiale n8n con un approccio diverso
FROM n8nio/n8n:latest

# Imposta l'utente root temporaneamente per le configurazioni
USER root

# Crea directory e imposta permessi
RUN mkdir -p /.n8n && \
    chmod 777 /.n8n && \
    chmod 777 /usr/local/lib/node_modules/n8n

# Torna all'utente node
USER node

# Imposta variabili d'ambiente
ENV N8N_USER_FOLDER=/.n8n
ENV NODE_OPTIONS="--max-old-space-size=2048"

# Espone la porta
EXPOSE 5678

# Comando di avvio con percorso completo
CMD ["/usr/local/bin/node", "/usr/local/lib/node_modules/n8n/bin/n8n", "start"]