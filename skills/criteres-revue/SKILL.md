---
name: criteres-revue
description: Critères de la revue de code maison. À utiliser dès qu'on demande de relire, revoir, auditer ou critiquer du code, ou de vérifier qu'il est prêt à être fusionné.
---

# Critères de revue maison

Passe le code en revue selon ces 5 critères, dans cet ordre :

1. **Correction** : le code fait-il ce qu'il annonce ? Cas limites, valeurs nulles, arrondis.
2. **Lisibilité** : noms explicites, fonctions courtes, pas de code mort.
3. **Tests** : chaque comportement nouveau a-t-il un test ?
4. **Sécurité** : aucun secret en clair, entrées utilisateur validées.
5. **RGPD** : aucune donnée client réelle ni donnée personnelle dans le code ou les exemples.

## Format du rapport

| Gravité | Fichier:ligne | Critère | Constat | Suggestion |
|---------|---------------|---------|---------|------------|

Gravité : `bloquant`, `à corriger`, `suggestion`.
Termine par un verdict en une ligne : **prêt** ou **à reprendre**.

Exemple (projet fictif « projet-meteo ») :

| à corriger | src/Releve.php:12 | Lisibilité | Variable `$t` peu claire | Renommer en `$temperature` |
