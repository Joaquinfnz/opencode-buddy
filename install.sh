#!/bin/bash
set -e

SKILLS_DIR="$HOME/.config/opencode/skills"
BUDDY_DIR="$SKILLS_DIR/buddy"

echo "🐉 OpenCode Buddy - Instalador"
echo "=============================="

if [ -d "$BUDDY_DIR" ]; then
  echo "⚠️  Buddy ya existe en $BUDDY_DIR"
  read -p "¿Reinstalar? (s/N): " -n 1 -r
  echo
  if [[ ! $REPLY =~ ^[Ss]$ ]]; then
    echo "Abortado."
    exit 0
  fi
  rm -rf "$BUDDY_DIR"
fi

mkdir -p "$SKILLS_DIR"

TEMP_DIR=$(mktemp -d)
trap "rm -rf $TEMP_DIR" EXIT

echo "📥 Descargando..."
git clone https://github.com/Joaquinfnz/opencode-buddy.git "$TEMP_DIR/opencode-buddy" --quiet

cp -r "$TEMP_DIR/opencode-buddy" "$BUDDY_DIR"
rm -rf "$BUDDY_DIR/.git"

echo "✅ ¡Buddy instalado en $BUDDY_DIR!"
echo ""
echo "🥚 Reinicia OpenCode y usa /buddy para eclosionar a tu compañero."