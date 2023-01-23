<b>Themes for ggtern package for ternary classification plots for mineral chemistry.</b>

Minerals included
- Garnet (including (1) Fe+Mn, Mg and Ca and (2) Mn, Mg and Ca)
- Tourmaline (in prep)

<b>Examples:</b>                                            
library(ggarnet)                                 
library(ggplot2)                             
library(ggtern)                                     

gg_label_tern(type="./data/garnet_mg_mn_ca.csv")+
ggplot2::scale_fill_brewer(pallete="set2")

gg_label_tern(type="./data/garnet_mg_fe_mn_ca.csv")+
geom_point(data="yourDF",aes(x,y)



Dr. Gabriel Bertolini                                                 
Undergrad João Miguel Maraschin Santos

