#!/bin/bash
set -e

echo "[$(date --iso-8601=seconds)] 🚀 [d0ce3-Addons] Codespace iniciado"

ADDONS_PATH="$HOME/.d0ce3_addons"
START_SCRIPT="$ADDONS_PATH/start_web_server.sh"

if [ -f "$START_SCRIPT" ]; then
    echo "[$(date --iso-8601=seconds)] ✅ d0ce3tools detectado"
    echo "[$(date --iso-8601=seconds)] 🚀 Iniciando servicios..."
    
    bash "$START_SCRIPT" > /tmp/start_web_server.log 2>&1 &
    
    echo "[$(date --iso-8601=seconds)] ✅ Servicios iniciados en background"
    echo "[$(date --iso-8601=seconds)] 📋 El tunnel notificará automáticamente al bot"
else
    echo "[$(date --iso-8601=seconds)] ⚠️ d0ce3tools no instalado en $ADDONS_PATH"
    echo "[$(date --iso-8601=seconds)] 💡 Instala el addon en el 'menu de msx' primero"
fi

echo "[$(date --iso-8601=seconds)] ✅ Startup completado"
exit 0
