# Tutoriel pour la production des visières Collaboration3D

Dans ce guide vous allez retrouver toutes les informations requises pour fabriquer vos propres visières par impression 3D. 

Le modèle est une version modifiée du merveilleux modèle conçu par le [Fablab de l'Université Libre de Bruxelles](https://fablab-ulb.gitlab.io/projects/coronavirus/protective-face-shields/). Vous pouvez retrouver leur modèle original [ici](https://gitlab.com/fablab-ulb/projects/coronavirus/protective-face-shields/-/tree/master/PFC-Headband-Light-3DPrint).

Le modèle peut sembler assez léger et peu résistant, mais je vous assures qu'avec une bonne impression, il est très difficile de casser la visière.

For the version in English scroll to the end... **TO DO**

## Pour débuter vous allez avoir besoin de...

- Une imprimante 3D 

Tant que la zone d'impression mesure un minimum de 125x125mm vous allez être en mesure d'imprimer les visières. Une surface chauffante est recommendée, mais elle n'est pas essentielle. Utiliser la même méthode d'impression que vous utilisez normalement pour du PLA.
- Du filament de type PLA

Peu couteux, facilement accessible et possible d'imprimer à grande vitesse, le PLA est un matériel idéal pour ce genre d'utilisation. Il faut environ 8g de filament par visière, donc avec une bobine standard de 1kg, vous devriez être en mesure de produire environ 125 visières. Si la production de volume ne vous intéresse pas, vous pouvez aussi utiliser des matériaux comme le PETG, l'ABS, le nylon qui possèdent divers avantages sur le PLA.
- Des feuilles d'acétate de format A4

Vous pourrez en trouver dans les articles de bureau
- Des élastiques

Il faut deux élastiques standard ou vous pouvez concocter votre propre solution pour faire tenir la visière sur la tête.
- Un ordinateur avec [OpenSCAD](https://www.openscad.org/) installé (optionnel) et le logiciel requis pour votre imprimante

Pas besoin d'un ordinateur très puissant, un ordinateur portable fonctionne parfaitement.
- Une perforatrice 3 trous

Plus la capacité est grande, plus votre travail sera facile, vous pourrez faire les trous dans plus d'une feuille d'acétate à la fois.

## Préparation du modèle

Sur [la page principale Github](https://github.com/Fredestroyer007/Collaboration3D), cliquer sur « Clone or download » :

<div align="center"><img src="https://raw.githubusercontent.com/Fredestroyer007/Collaboration3D/master/src/img/wiki/cloneOrDownload.PNG" /></div>

Ensuite, cliquer sur « Download ZIP » et sélectionner l'endroit que vous désirez télécharger les fichiers :

<div align="center"><img src="https://raw.githubusercontent.com/Fredestroyer007/Collaboration3D/master/src/img/wiki/downloadZip.PNG" /></div>

Ouvrez le dossier compressé et vous avez deux options maintenant.

### Option 1: Sélectionner un modèle existant (simple)

**TO DO**

### Option 2: Configurer un modèle selon vos propres besoins (plus avancé)

#### Configuration

Après avoir installé [OpenSCAD](https://www.openscad.org/) sur votre ordinateur vous retrouvez le fichier « modification.scad » dans le dossier « CAD ». Cliquer dessus pour lancer le programme :

<div align="center"><img src="https://raw.githubusercontent.com/Fredestroyer007/Collaboration3D/master/src/img/wiki/modificationSCAD.PNG" /></div>

Une fois dans le programme :

<div align="center"><img src="https://raw.githubusercontent.com/Fredestroyer007/Collaboration3D/master/src/img/wiki/openSCADmain.PNG" /></div>

Vous pouvez fermer le premier panneau pour créer plus d'espace. Vous n'allez pas avoir besoin de ce panneau. Il s'agit du code source de la pièce :

<div align="center"><img src="https://raw.githubusercontent.com/Fredestroyer007/Collaboration3D/master/src/img/wiki/fermer.PNG" /></div>

Sur le panneau de droite « Customizer », cliquer sur « Parameters » pour afficher les paramètres à modifier :

<div align="center"><img src="https://raw.githubusercontent.com/Fredestroyer007/Collaboration3D/master/src/img/wiki/parameter.PNG" /></div>

À la gauche de l'interface, vous retrouvez une visualisation de votre modèle et, à la droite, le panneau des paramètres à modifier. Votre interface devrait ressembler à ceci :

<div align="center"><img src="https://raw.githubusercontent.com/Fredestroyer007/Collaboration3D/master/src/img/wiki/main.PNG" /></div>

#### Paramètres

Vous avez deux paramètres à modifier. Le premier « Stack » est le nombre de visière empiler que vous désirez imprimer par impression. Nous vous suggérons de commencer par des plus petites valeurs et de lentement augmenter le nombre de visière que vous imprimez à la fois à mesure que vous découvrez les limites de votre imprimante 3D. Le second paramètre est « Height ». Vous devez simplement entrez la valeur de la hauteur d'impression de chaque couche de votre imprimante. Ce paramètre est mieux connu sous le nom anglais « layer heigh ». Dans les contraintes de votre imprimante, plus ce paramètre est grand, plus l'impression sera rapide.

Par exemple, pour une Creality Ender-3, comme paramètre pour débuter, nous vous recommandons d'imprimer trois visières à la fois avec une hauteur de couche de 0.28mm :

<div align="center"><img src="https://raw.githubusercontent.com/Fredestroyer007/Collaboration3D/master/src/img/wiki/main.PNG" /></div>

#### Exportation

Avant d'exporter votre modèle pour impression, vous devez faire le rendu du modèle en cliquant sur F6. Soyez patient. Un modèle volumineux avec plusieurs visières de hauteur peut prendre quelques minutes à faire le rendu. Quand le rendu est finit, vous devriez entendre un son et voir apparaître un message comme celui-ci dans le bas de votre écran :

<div align="center"><img src="https://raw.githubusercontent.com/Fredestroyer007/Collaboration3D/master/src/img/wiki/main.PNG" /></div>

Ensuite, pour exporter le modèle, cliquer sur F7 et sélectionner l'endroit pour sauvgarder le fichier. Garder à l'esprit de lui donner un nom utile, OpenSCAD ne gardera pas vos paramètres en mémoire!

## Impression


## Assemblage


TO DO
