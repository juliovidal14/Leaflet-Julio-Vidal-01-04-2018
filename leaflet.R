## Random points in Kansas 
## Julio Vidal Navarro 
## 01/04/2018

library(leaflet)
my_map <- leaflet() %>%
  addTiles()
my_map

df <- data.frame(lat =runif(500, min = 39.25, max =39.35), lng =runif(500, min = -100.65, max = -100.55))
df %>%
  leaflet() %>%
  addTiles() %>%
  addCircleMarkers(clusterOptions = markerClusterOptions())
  