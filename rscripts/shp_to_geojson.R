setwd("/Volumes/Rachel/GitHub Repos/VideoGame-Dashboard-Repo")

library(sf)
library(dplyr)

region_map <- sf::st_read("shapefiles/Merged_Shapes/Merged_Shapes2.shp", stringsAsFactors = F)

# Keep the rest of your transformations
region_map <- st_transform(region_map, crs = 4326)
region_map <- st_zm(region_map)

# add a column without converting to Spatial
region_map <- region_map %>%
  rename(Region = CONTINENT)


st_write(region_map, "shapefiles/Merged_Shapes/Merged_Shapes3.geojson", driver = "GeoJSON")

geo <- st_read("shapefiles/Merged_Shapes/Merged_Shapes3.geojson")
plot(st_geometry(geo))
