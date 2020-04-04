# Tutoriel pour la production des visières Collaboration3D

Dans ce guide vous allez retrouver toutes les informations requises pour fabriquer vos propres visières par impression 3D pour aider dans la lutte contre COVID-19.

Le modèle est une version modifiée du merveilleux modèle conçu par le [Fablab de l'Université Libre de Bruxelles](https://fablab-ulb.gitlab.io/projects/coronavirus/protective-face-shields/). Vous pouvez retrouver leur modèle original [ici](https://gitlab.com/fablab-ulb/projects/coronavirus/protective-face-shields/-/tree/master/PFC-Headband-Light-3DPrint).

Le modèle peut sembler assez léger et peu résistant, mais je vous assures qu'avec une bonne impression, il est très difficile de casser la visière.

Le coût brut de production estimé est moins de 1$ soit 0,20$ pour le filament, 0,70$ pour la feuille d'acétate et des élastiques. En plus, la durée d'impression par visière est d'environ 20 minutes.

Si vous imprimez le modèle, envoyer nous des photos sur [Facebook](https://www.facebook.com/Collaboration3D/). Nous voulons voir vos résultats!!!

Vous pouvez aussi visiter notre [site web](https://collaboration3d.ca/) pour plus d'information!

Un gros merci à nos commanditaires : le Collège de Bois-de-Boulogne, la fondation de l'Hôpital Sacré-Coeur de Montréal et Bureau en gros!

<div align="center"><img src="https://raw.githubusercontent.com/Fredestroyer007/Collaboration3D/master/src/img/wiki/commanditaire%20.png" /></div>

Si vous désirez nous commandités, visiter notre [site web](https://collaboration3d.ca/) pour plus d'information!

For the version in English scroll to the end... **TO DO**

## Pour débuter vous allez avoir besoin de...

- Une imprimante 3D 

Tant que la zone d'impression mesure un minimum de 125x125mm vous allez être en mesure d'imprimer les visières. Une surface chauffante est recommendée, mais elle n'est pas essentielle. Utiliser la même méthode d'impression que vous utilisez normalement pour du PLA.

- Du filament de type PLA

Peu coûteux, facilement accessible et possible d'imprimer à grande vitesse, le PLA est un matériel idéal pour ce genre d'utilisation. Il faut environ 8g de filament par visière, donc avec une bobine standard de 1kg, vous devriez être en mesure de produire environ 125 visières. Si la production de volume ne vous intéresse pas, vous pouvez aussi utiliser des matériaux comme le PETG, l'ABS, le nylon qui possèdent divers avantages sur le PLA, mais leur vitesse d'impression est plus lente.

- Des feuilles d'acétate de format A4

Vous pourrez en trouver dans les articles de bureau.

- Des élastiques

Il faut deux élastiques standard ou vous pouvez concocter votre propre solution pour faire tenir la visière sur la tête.

- Un ordinateur avec [OpenSCAD](https://www.openscad.org/) installé (optionnel) et le logiciel requis pour votre imprimante

Pas besoin d'un ordinateur très puissant, un ordinateur portable fonctionne parfaitement.

- Une perforatrice 3 trous de format nord américain 4.25" (format de cartable standard au Canada et aux États-Unis)

Plus la capacité est grande, plus votre travail sera facile, vous pourrez faire les trous dans plus d'une feuille d'acétate à la fois.

# Impression 3D
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
[OpenSCAD](https://www.openscad.org/) est un logiciel gratuit de modélisation CAD paramétrique. Au lieu de modéliser graphiquement un modèle, il est programmer. Cette particularité vous permet d'adapter très facilement le modèle à vos paramètres d'impression.

Après avoir installé [OpenSCAD](https://www.openscad.org/) sur votre ordinateur vous retrouvez le fichier « modification.scad » dans le dossier « CAD ». Cliquer dessus pour lancer le programme :

<div align="center"><img src="https://raw.githubusercontent.com/Fredestroyer007/Collaboration3D/master/src/img/wiki/modificationSCAD.PNG" /></div>

Une fois dans le programme :

<div align="center"><img src="https://raw.githubusercontent.com/Fredestroyer007/Collaboration3D/master/src/img/wiki/openSCADmain.PNG" /></div>

Vous pouvez fermer le premier panneau pour créer plus d'espace. Vous n'allez pas avoir besoin de ce panneau. Il s'agit du code source de la pièce :

<div align="center"><img src="https://raw.githubusercontent.com/Fredestroyer007/Collaboration3D/master/src/img/wiki/fermer.PNG" /></div>

Sur le panneau de droite « Customizer », cliquer sur « Parameters » pour afficher les paramètres à modifier :

<div align="center"><img src="https://raw.githubusercontent.com/Fredestroyer007/Collaboration3D/master/src/img/wiki/parameter.PNG" /></div>

Maitenant que l'interface est prêt, à la gauche, vous retrouvez une visualisation de votre modèle et, à la droite, le panneau des paramètres à modifier. Votre interface devrait ressembler à ceci :

<div align="center"><img src="https://raw.githubusercontent.com/Fredestroyer007/Collaboration3D/master/src/img/wiki/main.PNG" /></div>

#### Paramètres

Vous avez deux paramètres à modifier. Le premier « Stack » est le nombre de visière empiler que vous désirez imprimer par impression. Nous vous suggérons de commencer par des plus petites valeurs et de lentement augmenter le nombre de visière que vous imprimez à la fois à mesure que vous découvrez les limites de votre imprimante 3D. Le second paramètre est « Height ». Vous devez simplement entrez la valeur de la hauteur d'impression de chaque couche de votre imprimante. Ce paramètre est mieux connu sous le nom anglais « layer height ». Dans les contraintes de votre imprimante, plus ce paramètre est grand, plus l'impression sera rapide. Avec ceci en tête, nous vous recommandons de viser une hauteur de couche de 0.3mm et plus si possible pour votre imprimante. Pour observer l'effet de vos paramètres sur la visualisation, cliquer sur un autre champs de paramètre.

Par exemple, pour une Creality Ender-3, comme paramètre pour débuter, nous vous recommandons d'imprimer trois visières à la fois avec une hauteur de couche de 0.28mm :

<div align="center"><img src="https://raw.githubusercontent.com/Fredestroyer007/Collaboration3D/master/src/img/wiki/setting.PNG" /></div>

#### Exportation

Avant d'exporter votre modèle pour impression, vous devez faire le rendu du modèle en cliquant sur F6. Soyez patient. Un modèle volumineux avec plusieurs visières de hauteur peut prendre quelques minutes à faire le rendu. Quand le rendu est finit, vous devriez entendre un son et voir apparaître un message comme celui-ci dans le bas de votre écran :

<div align="center"><img src="https://raw.githubusercontent.com/Fredestroyer007/Collaboration3D/master/src/img/wiki/render.PNG" /></div>

Ensuite, pour exporter le modèle, cliquer sur F7 et sélectionner l'endroit pour sauvgarder le fichier. Garder à l'esprit de lui donner un nom utile, OpenSCAD ne gardera pas vos paramètres en mémoire!

## Impression

Pour débuter, nous vous recommandons de partir de vos paramètres d'impression standard pour votre imprimante pour faire des modifications. Utiliser les paramètres de température recommandé par le fabricant de votre filament.

### Paramètres obligatoires

Pour débuter, dans votre slicer, vous devez sélectionner la même hauteur de couche (« Layer height ») que vous avez sélectionner comme modèle ou dans OpenSCAD. Le but de ce paramètre est de s'assurer que l'espace entre chaque visière soit exactement 2 couches d'impression. Il s'agit probablement d'une hauteur de couches supérieur à ce que vous imprimez normalement, mais le but est d'augmenter la cadence de production. Viser une hauteur de couche de 0.3mm et plus si votre imprimante 3D le permet. 

<div align="center"><img src="https://raw.githubusercontent.com/Fredestroyer007/Collaboration3D/master/src/img/wiki/layer.PNG" /></div>

Le modèle est fait pour être imprimer avec des épaisseurs de branches de 1.2mm. Pour accélérer l'impression et éviter l'utilisation de remplissage (« Infill »), vous devez sélectionner une largeur d'extrusion  (« Extrusion width » ou « Line width ») qui est un multiple de 1.2mm. Les valeurs possibles sont 0.3mm, 0.4mm ou 0.6mm. Garder à l'esprit que la valeur idéale est 0.6mm pour accélérer l'impression. Cependant, une valeur de 0.6mm n'est pas possible avec une buse de 0.3mm, donc pour cette grandeur de buse, limiter la valeur à 0.4mm.

Par le fait même, il faut désactiver toutes formes de remplissage (« Infill ») en sélectionnant une valeur de 0% et sélectionner un nombre de mur assez grand (5-6 murs) pour s'assurer que la visière soit imprimée solide.

<div align="center"><img src="https://raw.githubusercontent.com/Fredestroyer007/Collaboration3D/master/src/img/wiki/width.PNG" /></div>

Désactiver toutes formes de support, elles sont déjà intégrer dans le modèle.

<div align="center"><img src="https://raw.githubusercontent.com/Fredestroyer007/Collaboration3D/master/src/img/wiki/support.PNG" /></div>

Si la superficie de votre imprimante le permet, vous pouvez imprimer plus d'une tour de visières à la fois. Si vous optez pour cette alternative, garder les crochets les plus près les un des autres pour limiter la durée d'impression.

<div align="center"><img src="https://raw.githubusercontent.com/Fredestroyer007/Collaboration3D/master/src/img/wiki/close.PNG" /></div>

### Paramètres optionnels/avancés

Voici quelques paramètres à modifier pour accélérer l'impression. Garder à l'esprit qu'on vise le volume et non la perfection. Aussi, rester à l'intérieur des capacités de votre imprimante. Il est préférable d'imprimer un peu plus lentement que la moitié de vos impressions échoues.

Une vitesse d'impression de plus de 80mm/s devrait être atteignable sur une majorité d'imprimante. Nous vous recommandons de garder la vitesse d'impression de votre premières couches assez lentes (25mm/s) et d'augmenter votre vitesse de déplacement (« Travel ») à plus de 200mm/s.

Si votre imprimante le supporte, vous pouvez augmenter les valeurs d'accélération.

Il ne s'agit que de simples pistes de réflexion. Les paramètres varient énormément d'une imprimante à une autre. Expérimenter! C'est une partie du plaisirs de l'impression 3D!

Comme exemple, voici les paramètres utilisés avec [Cura 4.5](https://ultimaker.com/software/ultimaker-cura) pour une Creality Ender-3 modifié (vous ne serez pas nécessairement en mesure d'atteindre les mêmes vitesses avec une Ender-3, considérer ceci comme une cible) :

<div align="center"><img src="https://raw.githubusercontent.com/Fredestroyer007/Collaboration3D/master/src/img/wiki/quality.PNG" /></div>

<div align="center"><img src="https://raw.githubusercontent.com/Fredestroyer007/Collaboration3D/master/src/img/wiki/shell.PNG" /></div>

<div align="center"><img src="https://raw.githubusercontent.com/Fredestroyer007/Collaboration3D/master/src/img/wiki/infill.PNG" /></div>

<div align="center"><img src="https://raw.githubusercontent.com/Fredestroyer007/Collaboration3D/master/src/img/wiki/Material.PNG" /></div>

<div align="center"><img src="https://raw.githubusercontent.com/Fredestroyer007/Collaboration3D/master/src/img/wiki/Speed.PNG" /></div>

<div align="center"><img src="https://raw.githubusercontent.com/Fredestroyer007/Collaboration3D/master/src/img/wiki/Travel.PNG" /></div>

<div align="center"><img src="https://raw.githubusercontent.com/Fredestroyer007/Collaboration3D/master/src/img/wiki/Cooling.PNG" /></div>

<div align="center"><img src="https://raw.githubusercontent.com/Fredestroyer007/Collaboration3D/master/src/img/wiki/supportcura.PNG" /></div>

<div align="center"><img src="https://raw.githubusercontent.com/Fredestroyer007/Collaboration3D/master/src/img/wiki/adhesion.PNG" /></div>

# Préparation de l'acétate

# Préparation de l'élastique

# Assemblage final

# Processus de désinfectation


TO DO
