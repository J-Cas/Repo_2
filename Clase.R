if (!require(ggplot2)) install.packages('ggplot2')
require(ggplot2)
data <- diamonds
View(data)
rm(data)

ggplot(diamonds, mapping = aes(x = carat, y = price, color = cut)) + #setup
  geom_point() + #Layers o capas
  facet_wrap(~ cut, ncol = 3) + #Facets o facetas
  labs(title = 'Precio vs. Pesos', x = 'Pesos', y = 'Precios en dólares', 
       subtitle = 'Ejemplo', caption = 'Hola, esto es una prueba') + 
  theme_light()

