#!/bin/bash
# Uso: ./wifi_audit.sh <tu_SSID>  
echo "🔍 Auditando tu WiFi: $1"  

# 1. Verificar cifrado (WPA2/WPA3)  
sudo iw dev wlan0 scan | grep "$1" -A 10 | grep "AKM"  

# 2. Buscar dispositivos sospechosos  
echo "📡 Dispositivos conectados:"  
sudo arp-scan --localnet  

# 3. Recomendaciones  
echo "💡 Tips de protección:"  
echo " - Usa WPA3 si tu router lo soporta"  
echo " - Cambia la contraseña por defecto"
