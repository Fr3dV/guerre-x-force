# GUERRE X FORCE

Simulateur de vol en fichier unique, jouable directement dans le navigateur.
Aucune installation, aucune dépendance à installer : tout tient dans `index.html`
(la bibliothèque 3D est chargée depuis un CDN au premier lancement).

## Jouer

Deux possibilités :

1. Ouvrir `index.html` dans un navigateur récent (Chrome, Edge, Firefox, Safari).
2. Activer GitHub Pages sur ce dépôt (voir plus bas), puis ouvrir l'URL publique.

## Contenu

**Sept appareils pilotables**

| Appareil | Type | Particularité |
|---|---|---|
| Rafale | chasseur delta | post-combustion, 4 MICA, 4 bombes |
| Vautour | bombardier | 12 bombes en soute |
| Épervier | avion à hélice | pilotage souple, vol lent |
| Fantôme | furtif | facettes, soute interne, discret de nuit |
| Éclair | supersonique de ligne | Mach 2, nez basculant |
| Atlas | transport militaire | 4 turbopropulseurs, parachutage de fret |
| Canadair | bombardier d'eau | écopage sur le lac, largage sur les feux |

Plus un huitième appareil : **le tien**, construit dans l'atelier (22 réglages :
voilure, flèche, dièdre, moteurs, nez, verrière, empennage, marquages, livrée,
puissance, vitesse maximale).

**Quatre modes**

- Réaliste : tour de la vallée par anneaux chronométrés
- Débutant : mêmes objectifs, pilotage assisté
- Combat aérien : jusqu'à 20 chasseurs, progression en 6 grades, duel final
- Pompier : incendies de forêt, écopage, largage d'eau

**Le monde** : 90 km de côté, relief alpin jusqu'à 2 400 m, lac de 1,7 km,
métropole avec gratte-ciel et circulation, aéroport international, forêts à
quatre essences, parcellaire agricole, météo dynamique avec averses et plafond
nuageux, cycle jour / crépuscule / nuit.

## Commandes

| Touche | Action |
|---|---|
| Maj / Ctrl | Gaz + / − |
| Flèches | Profondeur et ailerons |
| A / E | Palonnier |
| Espace | Canon |
| X | Bombes, caisses ou eau |
| F | Missile |
| T | Roquettes (à partir du grade 4) |
| R | Train |
| N | Heure du jour |
| C | Caméra |
| P | Pause |
| Échap | Menu |

Sur mobile : joystick à gauche, gaz à droite, boutons en bas.

## Publier sur GitHub Pages

1. Onglet **Settings** du dépôt, section **Pages**
2. Source : branche `main`, dossier `/ (root)`
3. Enregistrer, puis attendre une minute

Le jeu est alors accessible à l'adresse
`https://<utilisateur>.github.io/<depot>/`.

## Structure

```
index.html    le jeu complet (HTML, CSS, JS, ~410 Ko)
README.md     ce fichier
.gitignore
LICENSE
```

## Notes techniques

- Rendu 3D via three.js r128 (chargé depuis cdnjs)
- Sauvegarde locale dans le navigateur : grade, avion personnalisé, rythme de vol
- Régulation automatique de la qualité selon le rythme d'affichage
- Décor statique aux matrices figées, végétation et bâtiments instanciés
