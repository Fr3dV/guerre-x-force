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
nuageux, cycle jour / crépuscule / nuit, champs de fleurs alpines, papillons,
cascade et son arc-en-ciel.

**Le copilote** : un personnage donne des conseils contextuels dans une bulle
(décollage, décrochage, approche, combat, largage d'eau, météo, nuit). Son
avatar change d'humeur selon la situation : rassuré, inquiet, apeuré, dépité
après un crash, hilare sur une belle manœuvre. Sa voix est enregistrée (32
phrases), coupée par défaut, activable par le bouton en haut à gauche ; quand
elle parle, le bruit du moteur passe automatiquement en sourdine.

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

Le bouton **COPILOTE** (en haut à gauche) active ou coupe sa voix.

Sur mobile et tablette : manche à gauche, gaz à droite, boutons en bas. Le
copilote se place en haut à gauche pour ne jamais gêner les commandes.

## Publier sur GitHub Pages

1. Onglet **Settings** du dépôt, section **Pages**
2. Source : branche `main`, dossier `/ (root)`
3. Enregistrer, puis attendre une minute

Le jeu est alors accessible à l'adresse
`https://<utilisateur>.github.io/<depot>/`.

## Structure

```
index.html    le jeu complet : HTML, CSS, JS, avatars et voix embarques (~1,1 Mo)
README.md     ce fichier
.gitignore
LICENSE
```

## Notes techniques

- Rendu 3D via three.js r128 (chargé depuis cdnjs)
- Sauvegarde locale dans le navigateur : grade, avion personnalisé, rythme de vol
- Régulation automatique de la qualité selon le rythme d'affichage
- Décor statique aux matrices figées, végétation et bâtiments instanciés
