# Usa immagine Node.js come base
FROM node:18-alpine

# Installa n8n globalmente
RUN npm install -g n8n

# Crea utente e directory per n8n
RUN addgroup -g 1000 n8nuser && \
    adduser -u 1000 -G n8nuser -s /bin/sh -D n8nuser && \
    mkdir -p /home/n8nuser/.n8n && \
    chown -R n8nuser:n8nuser /home/n8nuser

# Passa all'utente n8n
USER n8nuser

# Imposta la directory di lavoro
WORKDIR /home/n8nuser

# Imposta variabili d'ambiente
ENV N8N_USER_FOLDER=/home/n8nuser/.n8n

# Porta di default n8n
EXPOSE 5678

# Avvia n8n
CMD ["n8n", "start"]