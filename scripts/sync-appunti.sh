#!/bin/bash
set -e

REPO_URL="https://github.com/gicorada/AppuntiScuola2425.git"
CLONE_DIR=".cache/appunti"
DEST_DIR="content"

if [ -d "$CLONE_DIR" ]; then
  echo "🔄 Pull aggiornamento dal repo AppuntiScuola2425..."
  git -C "$CLONE_DIR" pull
else
  echo "📥 Clono il repo AppuntiScuola2425..."
  git clone --depth=1 "$REPO_URL" "$CLONE_DIR"
fi

#echo "📄 Sincronizzo file .md..."
#rsync -av --include="*/" --include="*.md" --exclude="*" "$CLONE_DIR/" "$DEST_DIR/"

