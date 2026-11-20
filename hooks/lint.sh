#!/usr/bin/env bash
# Lint PHP après chaque écriture : exit 2 = erreur renvoyée à Claude.
fichier=$(jq -r '.tool_input.file_path // empty')

case "$fichier" in
  *.php) ;;
  *) exit 0 ;;
esac

if ! sortie=$(php -l "$fichier" 2>&1); then
  echo "Revue maison : erreur de syntaxe PHP dans $fichier. Corrige-la avant de continuer." >&2
  echo "$sortie" >&2
  exit 2
fi
