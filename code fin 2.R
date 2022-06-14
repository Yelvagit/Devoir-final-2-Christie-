library(openxlsx)
y<-read.xlsx('Exportations de marchandises.xlsx')
as.numeric(y$Annee)
y

#Realisons un graphique en nuage de points
library(ggplot2)
ggplot(data=y,aes(x=Annee,y=Export))+
  geom_point()

#Realisons un graphique en ligne
ggplot(data=y,aes(x=Annee,y=Export))+
  geom_line()

#Realisons un graphique en baton
ggplot(data=y,aes(x=Annee,y=Export))+
  geom_bar(stat="identity")
