# PaperMC Minecraft Server (1.21.1)

This is a free 8GB RAM PaperMC server setup using Docker or Replit.

## 💡 Features
- PaperMC 1.21.1 Build 39
- 8GB RAM support
- Custom `server.properties`
- Optional web panel (`status.html`)

## 🚀 Run with Docker
```bash
docker build -t papermc-server .
docker run -p 25565:25565 papermc-server
