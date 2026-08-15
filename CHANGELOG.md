# Journal des versions

## v81 (courante)

**Affichage mobile condensé**

Sur téléphone, les dix champs de la barre du haut passaient à la ligne un
par un : la barre occupait la moitié de la hauteur et recouvrait la
minicarte, la réchauffe et le menu. En bas, le tableau de bord mordait sur
le bouton de tir et la rangée de boutons débordait de l'écran des deux
côtés.

- Barre du haut : libellés abrégés, champs déjà lisibles ailleurs retirés
  (train, volets, trim, vent), infos calées à gauche de la minicarte.
- Tableau de bord : sous 640 px de large ou 520 px de haut, les six cadrans
  analogiques cèdent la place à un bandeau compact — horizon artificiel
  conservé, le reste en valeurs numériques (vitesse, altitude, vario, cap,
  régime) plus deux barres gaz et carburant.
- Bas de l'écran recalculé en bandes empilées à partir de la hauteur réelle
  de la rangée de boutons, au lieu d'offsets fixes.
- Téléphone en paysage : disposition en colonnes, manche et gaz gardent les
  coins bas, le reste se loge dans la bande centrale.
- Réchauffe ramenée contre la manette des gaz, abrégée en « PC ».
- Copilote et bouton de voix replacés sous la barre du haut, bulle bornée
  pour ne jamais atteindre la colonne de droite.

**Correction hors mobile**

- La réchauffe se cale désormais sous la barre d'infos : dès que la fenêtre
  rétrécissait, la barre passait à deux lignes et le bouton la recouvrait.

## v80

**Corrections**

- La pause automatique ne se déclenche plus au moindre appui sur tablette :
  seul le masquage réel de l'onglet met le jeu en pause.
- Le manche tactile n'est plus recouvert par le copilote ; la hiérarchie
  d'affichage place les commandes au-dessus du décor et sous les menus.
- Le tableau de bord se dimensionne pour tenir entre le manche et la manette
  des gaz, sans recouvrir aucune commande.
- Le mode Pompier ne contamine plus la partie suivante : retour au menu remet
  tous les modes à zéro et rend le Canadair au hangar. Il n'est conservé que
  s'il est re-sélectionné explicitement, sinon on volait en Combat avec une
  jauge d'eau au lieu des missiles.
- Canadair : traînée d'eau recalibrée, le redécollage depuis le lac est
  possible ; la coque ne traverse plus la surface ni le décor.
- L'anneau du pont, trop bas (34 m), provoquait des crashs : remonté à 80 m.

**Ajouts**

- Copilote : avatar à six humeurs, voix enregistrée (32 phrases, Gemini TTS),
  coupée par défaut, lue via WebAudio avec mise en sourdine du moteur.
- Viseur de combat : collimateur dans l'axe des canons, rouge et pulsant quand
  un ennemi est dans la ligne de tir.
- Progression : chaque ennemi abattu fait monter d'un niveau (chef de
  patrouille +2, As Noir +6). Au-delà du grade 6, chaque niveau répare 20 HP
  et recharge un missile.
- Nature : champs de fleurs alpines, papillons, arc-en-ciel dans la brume de
  la cascade. Lac agrandi de 30 % (2,2 km de diamètre).
