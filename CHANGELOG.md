# Journal des versions

## v80 (courante)

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
