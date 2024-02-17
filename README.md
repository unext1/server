# Server Template

This server template is designed to simplify the setup of essential tools on your server. It includes scripts for setting up Docker, Oh My Zsh, and three folders containing Docker Compose files for Portainer, Nginx Proxy Manager, and Caddy.
Setup

1. Make the setup script executable:

```bash
chmod +x setup.bash
```

2. Run the setup script:

```bash
./setup.bash
```

This script installs essential tools like Docker and Oh My Zsh.

## Docker Compose Files
### Portainer

Navigate to the portainer folder.

Run the following command to start Portainer:
```bash
docker-compose up -d
```

### Nginx Proxy Manager

Navigate to the nginx-proxy-manager folder.

Run the following command to start Nginx Proxy Manager:

```bash
docker-compose up -d
```

### Caddy

Navigate to the caddy folder.

Create a .env file with the following variables:

```env
CADDY_ADMIN_EMAIL=your-email@example.com
CLOUDFLARE_API_TOKEN=your-cloudflare-api-token
SITE_ADDRESS=your-site-address
CONTAINER_NAME_AND_PORT=container-name:container-port
```

Run the following command to start Caddy:

```bash
docker-compose up -d
```
