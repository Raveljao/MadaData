# Read the CSV files
data2020 <- read_csv("C:/Users/madaj/OneDrive/2024/Projet Data/R/Data_population/ppp_MDG_2020_1km_Aggregated.csv")

# Convert data to spatial object
coordinates(data2020) <- ~X+Y
# Convert to raster
r <- rasterFromXYZ(data.frame(data2020))
plot(r)
mat <- raster_to_matrix(r)
# Define your color palette
color <- MetBrewer::met.brewer(name="OKeeffe1", direction = -1)
tx <- grDevices::colorRampPalette(color, bias = 4.5)(256)
swatchplot(tx)
swatchplot(color)

mat %>%
  height_shade(texture = tx) %>%
  plot_3d(heightmap = mat, zscale = 70,solid = F, fov = 1, theta = 135, zoom = 0.75, phi = 30,shadowdepth = 0.01, windowsize = c(2600, 2000))
render_snapshot("madagascar_population_2020.png")
# Adjusting Camera Angle Global
render_camera(theta = 15,
              phi = 30,
              zoom = 0.60,
              fov = 10
)

outfile <- glue::glue("madagascar_population_2020.png")


start_time <- Sys.time()
cat(crayon::cyan(start_time), "\n")
if(!file.exists(outfile)) {
  png::writePNG(matrix(1), target = outfile)
}

render_highquality(
   filename = outfile,
    interactive = F,
   lightdirection = 60, #Degree
    lightaltitude = c(30, 80),
    #lightcolor = c(subset_colors[4], "white"),
      lightcolor = c("white", "white"),  # Set both lights to white
     lightintensity = c(600, 100),
    #width = 800,
       #height = 600,
       width = 2600,
     height = 2000,
    samples = 256,
   aperture=30
  )
