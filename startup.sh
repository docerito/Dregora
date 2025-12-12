#!/bin/bash
echo "🚀 [Doce-Bt] Auto-start iniciando..."

DISCORD_USER_ID="331904820590018562"
WEBHOOK_URL="https://doce-bt.onrender.com"

echo "📡 Notificando a Discord..."

CODESPACE_NAME="${CODESPACE_NAME:-unknown}"
GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN="${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN:-unknown}"

TUNNEL_HOST="${CODESPACE_NAME}-8080.${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}"

curl -X POST "$WEBHOOK_URL" \
  -H "Content-Type: application/json" \
  -d '{
    "user_id": "'"$DISCORD_USER_ID"'",
    "codespace_name": "'"$CODESPACE_NAME"'",
    "tunnel_url": "'"$TUNNEL_HOST"'",
    "tunnel_port": 25565,
    "tunnel_type": "codespace"
  }'

echo "✅ [Doce-Bt] Notificación enviada"
