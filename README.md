# 64-fenetres
Le jeu des 64 fenetres, exercice d'algorithmique.


Inspiré de cet exercice d'algorithmique:

https://www.codingame.com/playgrounds/22485/petit-exercice-algorithmique-en-swift


Le principe:

Les fenêtres sont numérotées de 1 à 64 et ont toutes deux volets battants, Le proprio rassemble 64 visiteurs. Chaque visiteur a un brassard numéroté de 1 à 64, les visiteurs passent par toutes les fenêtres dans l'ordre croissant et se succèdent dans l'ordre croissant également.

Règles

Le visiteur n.1 ouvre les battants gauches des fenêtres. Le visiteur n.2 ouvre les battants droits des fenêtres dont le numéro est pair. Le visiteur n.3 ouvre les battants gauches fermés et ferme ceux qui sont ouverts et dont le numéro est un multiple de 3. Le visiteur n.3 ouvre les battants droits fermés et ferme ceux qui sont ouverts et dont le numéro est un multiple de 4.

{ ... ainsi jusqu'au 63 ...}

Le dernier visiteur ouvre les battants droits fermés et ferme ceux qui sont ouverts. 😵‍💫😵‍💫😵‍💫

Enfin

un visiteur gagne si la fenêtre de son numéro est ouverte.

Affichez les gagnants!
