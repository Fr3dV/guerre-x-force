#!/usr/bin/env bash
# Deploiement d'une nouvelle version de GUERRE X FORCE sur GitHub.
#
# Usage :
#   ./deploy.sh                        publie le index.html courant
#   ./deploy.sh chemin/vers/jeu.html   remplace index.html puis publie
#
# Au premier lancement, le script cree le depot distant si l'outil gh est
# installe, sinon il te demande l'URL du depot.

set -euo pipefail
cd "$(dirname "$0")"

SRC="${1:-}"
if [ -n "$SRC" ]; then
  if [ ! -f "$SRC" ]; then
    echo "Fichier introuvable : $SRC" >&2
    exit 1
  fi
  cp "$SRC" index.html
  echo "index.html mis a jour depuis $SRC"
fi

if [ ! -f index.html ]; then
  echo "index.html manquant dans $(pwd)" >&2
  exit 1
fi

# version lue directement dans le jeu, pour nommer le commit
VER=$(grep -o "window.__VER='[^']*'" index.html | head -1 | sed "s/.*='//;s/'//") || VER=""
[ -z "$VER" ] && VER="mise a jour"

# depot git local
if [ ! -d .git ]; then
  git init -q -b main
  echo "Depot git initialise"
fi

# remote
if ! git remote get-url origin >/dev/null 2>&1; then
  if command -v gh >/dev/null 2>&1; then
    echo "Creation du depot distant via gh..."
    git add -A
    git -c user.email="${GIT_EMAIL:-jeu@local}" -c user.name="${GIT_NAME:-GUERRE X FORCE}" \
        commit -q -m "GUERRE X FORCE $VER" || true
    gh repo create guerre-x-force --public --source=. --remote=origin --push
    echo "Depot cree et publie."
    exit 0
  else
    read -r -p "URL du depot GitHub (https://github.com/<toi>/<depot>.git) : " URL
    git remote add origin "$URL"
  fi
fi

git add -A
if git diff --cached --quiet; then
  echo "Aucune modification a publier."
  exit 0
fi

git -c user.email="${GIT_EMAIL:-jeu@local}" -c user.name="${GIT_NAME:-GUERRE X FORCE}" \
    commit -q -m "GUERRE X FORCE $VER"
git push -u origin main

echo
echo "Publie : $VER"
echo "Si GitHub Pages est actif, la nouvelle version sera en ligne dans une minute."
