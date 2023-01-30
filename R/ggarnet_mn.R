#' ggarnet_mn
#'
#' @param type = database name of the desired plot
#' to see plots a available check data file
#'
#' @return a ggplot plot with the selected polygon
#' @export
#'
#' @examples ggarnet_mn()

ggarnet_mn<-function() {

  grad<-tibble::tribble(~"Mg",~"Mn",~"Ca",~"Label",
                        0,1,0,"Low P/T",
                        0.4,0.6,0,"Low P/T",
                        0.425,0.45,0.075,"Low P/T",
                        0.6,0.3,0.1,"Low P/T",
                        0.35,0.3,0.35,"Low P/T",
                        0.3,0.325,0.375,"Low P/T",
                        0.25,0.35,0.4,"Low P/T",
                        0.2,0.425,0.375,"Low P/T",
                        0,0.85,0.15,"Low P/T",
                        0,0.85,0.15,"Int. P/T",
                        0.2,0.425,0.375,"Int. P/T",
                        0.25,0.35,0.4,"Int. P/T",
                        0.3,0.325,0.375,"Int. P/T",
                        0.35,0.3,0.35,"Int. P/T",
                        0.6,0.3,0.1,"Int. P/T",
                        0.7,0.2,0.1,"Int. P/T",
                        0.7,0.1,0.2,"Int. P/T",
                        0.65,0.05,0.3,"Int. P/T",
                        0.55,0.05,0.4,"Int. P/T",
                        0.425,0.075,0.5,"Int. P/T",
                        0.3,0.1,0.6,"Int. P/T",
                        0.2,0.175,0.625,"Int. P/T",
                        0.1,0.3,0.6,"Int. P/T",
                        0,0.75,0.25,"Int. P/T",
                        0.55,0.05,0.4,"High P/T",
                        0.425,0.075,0.5,"High P/T",
                        0.3,0.1,0.6,"High P/T",
                        0.2,0.175,0.625,"High P/T",
                        0.1,0.3,0.6,"High P/T",
                        0,0.75,0.25,"High P/T",
                        0,0.2,0.8,"High P/T",
                        0.025,0.125,0.85,"High P/T",
                        0.075,0.05,0.875,"High P/T",
                        0.15,0,0.85,"High P/T",
                        0.2,0.025,0.775,"High P/T",
                        0.3,0.05,0.65,"High P/T",
                        0,0.2,0.8,"And-Gr",
                        0,0,1,"And-Gr",
                        0.15,0,0.85,"And-Gr",
                        0.075,0.05,0.875,"And-Gr",
                        0.025,0.125,0.85,"And-Gr",
                        0.9,0,0.1,"Eclogite",
                        0.15,0,0.85,"Eclogite",
                        0.2,0.025,0.775,"Eclogite",
                        0.3,0.05,0.65,"Eclogite",
                        0.55,0.05,0.4,"Eclogite",
                        1,0,0,"Granulite",
                        0.85,0.075,0.075,"Granulite",
                        0.7,0.2,0.1,"Granulite",
                        0.7,0.1,0.2,"Granulite",
                        0.65,0.05,0.3,"Granulite",
                        0.55,0.05,0.4,"Granulite",
                        0.9,0,0.1,"Granulite")


  grad.lab<-plyr::ddply(grad,"Label",function(df)
  {apply(df[,1:3],2,mean)})

  ggtern::ggtern(data=grad,ggplot2::aes_string(y=colnames(grad)[3],x=colnames(grad)[2],z=colnames(grad)[1],color=colnames(grad)[4],fill=colnames(grad)[4])) +
    ggplot2::geom_polygon(alpha=0.75,size=0.5,color="black") +
    ggtern::geom_mask() +
    ggplot2::geom_text(data=grad.lab,ggplot2::aes(label=Label),color="black",size=3.5) +
    ggtern::weight_percent() +
    ggplot2::guides(fill='none') +
    ggtern:: theme_legend_position("topleft") +
    ggplot2::labs(title = "Garnet",
                  fill  = "Label",
                  color = "Label")

}
