#instalando pacotes#
install.packages("Tmisc")
install.packages("ggplot2")
library(Tmisc)
library(tidyverse)
library(ggplot2)

#carregando dados
data(quartet)
View(quartet)

#agrupando os dados por conjunto
quartet %>%
  group_by(set) %>%
  summarize(mean(x),sd(x),mean(y),sd(y),cor(x,y))

#criando gráfico
ggplot(quartet,aes(x,y)) + geom_point() + geom_smooth(method=lm, se=FALSE) + facet_wrap(~set)