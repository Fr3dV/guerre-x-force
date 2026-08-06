# Envoyer ce dépôt sur ton GitHub

Le dossier contient déjà un dépôt Git initialisé avec un premier commit.
Il ne reste qu'à le relier à ton compte et à pousser.

## Cas 1 : le dépôt GitHub n'existe pas encore

Avec l'outil en ligne de commande GitHub (`gh`), une seule commande suffit :

```bash
cd guerre-x-force
gh repo create guerre-x-force --public --source=. --remote=origin --push
```

Sans `gh` : crée d'abord le dépôt vide sur github.com (sans README ni licence,
pour éviter un conflit), puis :

```bash
cd guerre-x-force
git remote add origin https://github.com/<utilisateur>/guerre-x-force.git
git push -u origin main
```

## Cas 2 : le dépôt existe déjà et contient des fichiers

```bash
cd guerre-x-force
git remote add origin https://github.com/<utilisateur>/<depot>.git
git fetch origin
git rebase origin/main      # ou : git pull --rebase origin main
git push -u origin main
```

Si l'historique distant n'a rien à voir avec celui-ci :

```bash
git pull origin main --allow-unrelated-histories
git push -u origin main
```

## Cas 3 : tu veux juste remplacer le jeu dans un dépôt existant

Copie `index.html` à l'emplacement voulu de ton dépôt, puis :

```bash
git add index.html
git commit -m "Mise a jour du simulateur (v63)"
git push
```

## Publier la page jouable

Dans **Settings > Pages** du dépôt : source `main`, dossier `/ (root)`.
Le jeu sera accessible sur `https://<utilisateur>.github.io/<depot>/`.

## Mises à jour suivantes

À chaque nouvelle version que je te livre, remplace `index.html`, puis :

```bash
git add index.html
git commit -m "v64 : <ce qui change>"
git push
```

Un marqueur de version est affiché sur la page d'accueil du jeu et dans les
messages d'erreur, ce qui permet de vérifier d'un coup d'oeil quelle version
est en ligne.
