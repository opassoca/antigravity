#!/bin/bash
set -e
echo "◈ Antigravity - Master Ecosystem Installer ◈"

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# 1. Install Master Panel first (Auth + Sync)
echo "[*] Installing Master: Auth Ecosystem..."
cd "$PROJECT_DIR/auth-ecosystem" && ./install.sh

# 2. Install Consumers
echo "[*] Installing Consumer: Proxy Connection..."
cd "$PROJECT_DIR/antigravity-proxy" && ./install.sh

echo "[*] Installing Consumer: Gemini Switcher..."
cd "$PROJECT_DIR/gemini-switcher" && ./install.sh

echo ""
echo "✨ Antigravity Ecosystem Installed Successfully!"
echo "◈ Commands: auth, antigravity-proxy, gemini-switcher"
echo "------------------------------------------------"
