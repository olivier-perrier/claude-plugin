# Changelog

## 0.1.0 - 2026-11-20

Première publication.

- Commande `/revue [chemin]` : revue du chemin donné ou du diff courant.
- Skill `criteres-revue` : 5 critères (correction, lisibilité, tests, sécurité, RGPD) et format du rapport.
- Hook `PostToolUse` : `php -l` sur chaque fichier `.php` écrit, exit 2 avec message clair en cas d'erreur.
- `marketplace.json` pour une installation depuis le dépôt git interne.
