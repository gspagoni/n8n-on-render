FROM node:22-alpine

# Installa n8n
RUN npm install -g n8n

# Crea directory di lavoro
WORKDIR /data

# Espone porta
EXPOSE 5678

# Avvia n8n
CMD ["n8n"]