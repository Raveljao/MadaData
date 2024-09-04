#Script install and load packages

# Liste des packages nécessaires
required_packages <- c(
  "rayshader",   # Pour le rendu 3D
  "rgl",         # Pour la visualisation 3D interactive
  "raster",      # Pour manipuler les données raster
  "dplyr",       # Pour manipuler les données (data wrangling)
  "ggplot2",     # Pour les graphiques
  "magick",      # Pour la manipulation d'images
  "glue",        # Pour manipuler des chaînes de caractères
  "png",         # Pour la lecture/écriture de fichiers PNG
  "purrr",       # Pour l'application de fonctions sur des listes/vecteurs
  "crayon",      # Pour ajouter des couleurs dans la console
  "av",          # Pour l'animation en vidéo
  "tidyverse",   # Ensemble de packages pour le data science
  "sf",          # Pour manipuler des données spatiales
  "tmap",        # Pour la visualisation de cartes thématiques
  "mapview",     # Pour la visualisation interactive des données spatiales
  "stars",       # Pour manipuler des données raster et vectorielles
  "MetBrewer",   # Pour les palettes de couleurs esthétiques
  "colorspace",  # Pour la manipulation des couleurs
  "rayrender",   # Pour des rendus 3D réalistes
  "extrafont"    # Pour gérer les polices de caractères supplémentaires
)

# Fonction pour installer et charger les packages
install_and_load <- function(packages) {
  for (pkg in packages) {
    if (!require(pkg, character.only = TRUE)) {
      install.packages(pkg, dependencies = TRUE)
      library(pkg, character.only = TRUE)
    }
  }
}

# Installer et charger les packages
install_and_load(required_packages)

# Afficher un message une fois terminé
cat(crayon::green("Tous les packages ont été installés et chargés avec succès!\n"))
