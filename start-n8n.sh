#!/bin/bash

echo "📁 Criando pasta de dados (se não existir)..."
mkdir -p ./n8n_data

echo "🚀 Subindo o ambiente n8n com Docker Compose..."
docker compose up -d

echo ""
echo "✅ n8n está rodando em: http://localhost:5678"
