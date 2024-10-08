# Madagascar Population Visualization (2020)

This project aims to visualize population data from Madagascar in 3D using a publicly available dataset. The visualization is created using R, leveraging various libraries for data processing, spatial analysis, and rendering.

![Madagascar Population Visualization](madagascar_population_2020.png)
## Project Overview

This script reads population data from a CSV file, processes it into a spatial object, and then converts it into a raster format. The raster data is then used to generate a 3D model, which is rendered with custom colors and lighting to create a high-quality image.

## Prerequisites

To run this code, you need to have the following R packages installed:

- **readr**: For reading CSV files.
- **sp**: For handling spatial data.
- **raster**: For creating raster data from spatial data.
- **MetBrewer**: For generating color palettes.
- **rayshader**: For rendering 3D visualizations.
- **glue**: For string manipulation.
- **crayon**: For colored terminal output.
- **png**: For handling PNG files.

## Data sources
[https://hub.worldpop.org/](https://hub.worldpop.org/geodata/summary?id=37337)
