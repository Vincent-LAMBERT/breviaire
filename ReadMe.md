# Bréviaire des faluchard.e.s Grenoblois.e.s

Ce projet est le bréviaire des faluchard.e.s grenoblois.e.s, un document LaTeX qui répertorie tous les chants de la communauté grenobloise. Il est destiné à être utilisé par les faluchard.e.s de Grenoble et est mis à jour régulièrement pour refléter les changements dans la communauté.

### LaTex: Qu'est-ce que c'est ?
LaTeX est un système de composition de documents qui permet de produire des documents de haute qualité typographique. Contrairement à un document Word, un document LaTeX est un fichier texte brut qui est ensuite compilé pour produire un document PDF. Cela a pour avantage de séparer le contenu de la mise en forme, ce qui permet de se concentrer sur le contenu sans se soucier de la présentation. LaTeX est particulièrement adapté pour les documents scientifiques et techniques, mais il peut également être utilisé pour des documents plus généraux.

## Installation du projet

Pour installer le projet, il faut d'abord cloner le dépôt git. Pour cela, référez vous à la documentation de git disponible en ligne. Il y a énormément de ressources sur le sujet.

ATTENTION: Travailler avec git vous permettra de garder une trace des modifications et de collaborer avec d'autres personnes. Il est donc fortement recommandé de l'utiliser pour ce projet.

## Organisation du projet

Le projet est composé d'un fichier principal `main.tex` qui est le point d'entrée du projet. Il fait appel à plusieurs fichiers `.tex` dans le dossier `texfile` qui contiennent les fonctions spécifiques à ce projet LaTeX. Chaque chant est contenu dans des fichiers `.tex` séparés dans le dossier `chants` et leurs images associées sont dans le dossier `images`. Les éventuelles partitions sont dans le dossier associé.

## Compilation du projet

Pour compiler le projet, je vous conseille d'utiliser Docker. Cela vous permettra d'être assuré.e d'avoir la même version de LaTeX et aucun problème de compilation différent d'une machine à une autre.

### Docker

Une fois installé, vous pouvez utiliser le Dockerfile fourni dans le projet pour créer une image Docker qui contient tout ce dont vous avez besoin pour compiler le projet:

```docker build --network=host -t inkscape-latex -f Dockerfile.inkscape-latex .```

Vous pouvez ensuite exécuter le conteneur Docker pour compiler le projet avec la commande suivante:

```docker run --rm -i -v "`pwd`":/data inkscape-latex pdflatex --shell-escape -synctex=1 -interaction=nonstopmode -file-line-error main.tex```

Petite astuce: pour un environnement de travail plus agréable, vous pouvez associer cette ligne de commande aux recettes de l'extension LaTeX Workshop de VSCode. Cela vous permettra de compiler le projet directement depuis l'éditeur sans avoir à taper la commande à chaque fois. Référez-vous à la documentation de l'extension pour savoir comment faire.

Ci-dessous, un exemple de configuration pour l'extension LaTeX Workshop de VSCode (fichier settings.json):
```
"latex-workshop.latex.recipes": [
    {
        "name": "inkscape-latex",
        "tools": [
            "inkscape-latex"
        ]
    }
],
"latex-workshop.latex.tools" : [
    {
        "name": "inkscape-latex",
        "command": "docker",
        "args": [
            "run",
            "--rm",
            "-i",
            "-v",
            "%DIR%:/data",
            "inkscape-latex",
            "pdflatex",
            "--shell-escape",
            "-synctex=1",
            "-interaction=nonstopmode",
            "-file-line-error",
            "%DOCFILE_EXT%"
        ]
    }

]
```

### Sans docker

Si vous ne souhaitez pas utiliser Docker, vous pouvez installer LaTeX sur votre machine. et compiler avec pdflatex. Assurez-vous d'avoir installé Inkscape (nécessaire pour les svg) et installez les dépendances nécessaires.

