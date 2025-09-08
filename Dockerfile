# Usa immagine ufficiale n8n
FROM n8nio/n8n:latest

# Porta di default n8n
EXPOSE 5678

# Avvia n8n
CMD ["n8n", "start"]
