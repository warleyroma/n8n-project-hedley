FROM n8nio/n8n

# Define o diretório de trabalho
WORKDIR /home/node

# Copia as variáveis de ambiente (se quiser embutir, opcional)

ENV N8N_BASIC_AUTH_ACTIVE=false
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV WEBHOOK_URL=https://seu-subdominio.onrender.com
ENV GENERIC_TIMEZONE=America/Sao_Paulo
ENV DB_TYPE=sqlite
ENV DB_SQLITE_VACUUM_ON_STARTUP=true

# COPY .env .env

# Expõe a porta usada pelo n8n
EXPOSE 5678

# Comando para iniciar o n8n
CMD ["n8n"]

