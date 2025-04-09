# 🚀 Ambiente N8N com Docker

Este repositório configura uma instância local do [n8n](https://n8n.io/) utilizando Docker Compose, com suporte a persistência de dados e fácil inicialização em ambientes **Linux** e **Windows**.

## 🛠️ Pré-requisitos

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/install/)
- Git Bash (recomendado no Windows para execução de scripts `.sh`)

---

## 📂 Estrutura do projeto

```
.
├── .env              # Configurações de ambiente
├── docker-compose.yml
├── start-n8n.sh      # Script de inicialização
└── n8n_data/         # Criado automaticamente para persistência (Linux)
```

---

## 🚀 Instruções de uso

### Linux (Ubuntu, Debian, etc)

```bash
chmod +x start-n8n.sh
./start-n8n.sh
```

> Na primeira execução, a pasta `n8n_data/` será criada automaticamente e usada para persistência de dados.

### Windows (Git Bash ou WSL)

```bash
bash start-n8n.sh
```

> ⚠️ Se estiver usando WSL, garanta que o Docker Desktop esteja rodando.

---

## 🔐 Autenticação

No `.env`, a autenticação está desativada por padrão:

```env
N8N_BASIC_AUTH_ACTIVE=false
```

Caso queira ativar:

```env
N8N_BASIC_AUTH_ACTIVE=true
N8N_BASIC_AUTH_USER=admin
N8N_BASIC_AUTH_PASSWORD=senha123
```

---

## 🌐 Acesso

Após iniciar o projeto, acesse:

```
http://localhost:5678
```

---

## 📌 Dicas úteis

- Para parar o ambiente:
  ```bash
  docker compose down
  ```

- Para reiniciar:
  ```bash
  ./start-n8n.sh
  ```

- Se estiver no Windows e quiser persistência corretamente, altere o volume no `docker-compose.yml` para:
  ```yaml
  volumes:
    - ./n8n_data:/home/node/.n8n
  ```

---

## 🧼 Limpeza de permissões (Linux)

Se ocorrer erro de permissão (EACCES), execute:

```bash
sudo chown -R 1000:1000 ./n8n_data
```

---

## 🧪 Testado em

- ✅ Ubuntu 22.04
- ✅ Windows 11 com Docker Desktop
- ✅ WSL 2 com Ubuntu

---

Feito com ❤️ para facilitar o uso local do n8n.
