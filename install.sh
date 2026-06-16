#!/bin/bash
set -e
echo "◈ ECOSYSTEM PDK - Master Installer ◈"

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# 1. Install Master Panel first
echo "[*] Installing Master: Gemini Auth..."
cd "$PROJECT_DIR/auth" && ./install.sh

# 2. Install Consumers
echo "[*] Installing Consumer: AGY3 Proxy..."
cd "$PROJECT_DIR/agy3" && ./install.sh

echo "[*] Installing Consumer: GMN Switcher..."
cd "$PROJECT_DIR/gmnswitcher" && ./install.sh

echo ""
echo "✨ Ecosystem PDK Installed Successfully!"
echo "◈ Commands Available: auth, oauth, agy3, gmnswitcher"
echo "------------------------------------------------"
