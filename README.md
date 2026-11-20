# revue-maison

Plugin Claude Code qui installe **la revue de code maison** de l'équipe.

## Ce que le plugin installe

| Brique | Fichier | Rôle |
|--------|---------|------|
| Commande | `commands/revue.md` | `/revue [chemin]` : lance une revue (diff courant par défaut) |
| Skill | `skills/criteres-revue/SKILL.md` | Les 5 critères et le format du rapport, chargés aussi sur une demande naturelle (« relis ce code ») |
| Hook | `hooks/hooks.json` + `hooks/lint.sh` | Après chaque `Write`/`Edit` d'un `.php`, `php -l` ; en cas d'erreur, exit 2 et message clair |

Les trois briques servent une seule pratique : la commande déclenche la revue, le skill en
fixe les critères et le hook garantit qu'aucun fichier syntaxiquement faux n'arrive en revue.

## Installation

```
/plugin marketplace add https://forge.interne.example/formation/revue-maison.git
/plugin install revue-maison@formation-acelys
```

Ouvrir ensuite une nouvelle session : `/revue` apparaît dans la liste des commandes.

## Prérequis

- Claude Code avec le support des plugins
- `bash` (Git Bash sous Windows), `jq` et `php` dans le PATH

## Limites connues

- Le hook ne vérifie que la syntaxe des fichiers `.php` (pas le style ni les autres langages).
- La revue est un avis : elle ne remplace pas la relecture par un humain.
