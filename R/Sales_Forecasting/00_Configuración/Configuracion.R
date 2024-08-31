# Inicio de entorno
renv::init()


# Activación de entorno
renv::activate()


# Librerías del proyecto

install.packages("DBI")
install.packages("RSQLite")
install.packages('dplyr')
install.packages('magrittr')
install.packages('tidyr')
install.packages('lubridate')
install.packages('ggplot2')
install.packages('zoo')
install.packages('purrr')
install.packages('scales')
install.packages('xgboost')
install.packages('stringr')
install.packages('shiny')

install.packages('neuralnet')
install.packages('keras3')
install.packages('tensorflow')
tensorflow::install_tensorflow(gpu = TRUE)

# Actualización de entorno
renv::snapshot()


