require(tidyverse)

datos <- rio::import("anime-en_columnas.csv")
# LIMPIEZA DE DATOS
Hmisc::describe(datos)
str(datos)
table(datos$type)

filtro_1 <- datos %>% filter(
  type=="OVA" | type=="Special" | type=="TV"
)

Hmisc::describe(filtro_1)

is.na(filtro_1$rating) %>% unique()

filtro_2 <- filtro_1 %>% drop_na(rating)

Hmisc::describe(filtro_2)

hist(filtro_2$rating, breaks = 10, freq = F)

filtro3 <- ifelse(filtro_2$episodes=="Unknown", "emision", filtro_2$)

car_despues <- car_antes %>% 
  mutate(carro = ifelse(color == "red", 1, carro))


filtro_3 <- filtro_2 %>% 
  mutate(episodes= ifelse(episodes=="Unknown", "emision", episodes))

filtro_4 <- filtro_3 %>% 
  filter(rating>=3)

hist(filtro_4$rating, breaks = 5, freq = F)

##################
### OBJETIVOS  ###
##################

# Se busca realizar una recomendación de anime dado los datos obtenidos
# de cada usuario según su rating, genero y tipo de anime según sus preferencias.


# Para comenzar, se realizó una limpieza de datos...c
