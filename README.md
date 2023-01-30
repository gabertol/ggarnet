<b>Themes for ggtern package for ternary classification plots for mineral chemistry.</b>

Minerals currently included (check data file to see the available datasets)
- Garnet (including (1) Fe+Mn, Mg and Ca and (2) Mn, Mg and Ca)
- Tourmaline (in prep)

<b>How to use</b>                                                  
1- Install devtools in R
install.packages("devtools")

2- Import dev tools from library and use install_github to download this package
library(devtools)
devtools::install_github("gabertol/ggarnet")

3- Import ggarnet
library(ggarnet)

<b>Examples</b>                                            
library(ggarnet)                                 
library(ggplot2)                             
library(ggtern)                                     

gg_label_tern(type="./data/garnet_mg_mn_ca.csv")+
ggplot2::scale_fill_brewer(pallete="set2")

gg_label_tern(type="./data/garnet_mg_fe_mn_ca.csv")+
geom_point(data="yourDF",aes(x,y)) # replace yourDF by a dataframe with your data


<b>Authors</b>                                                 
Dr. Gabriel Bertolini   (gabertol@gmail.com)                                              
Undergrad João Miguel Maraschin Santos

