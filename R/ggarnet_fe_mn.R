#' Title
#'
#' @param type = database name of the desired plot
#' to see plots a available check data file
#'
#' @return a ggplot plot with the selected polygon
#' @export
#'
#' @examples ggarnet_fe_mn()

ggarnet_fe_mn<-function() {

  grad<-tibble::tribble(~"Mg",~"FeMn",~"Ca",~"Label",
                        0.7,0.3,0,"Type  A",
                        0.2,0.8,0,"Type  A",
                        0.2,0.7,0.1,"Type  A",
                        0.5,0.4,0.1,"Type  A",
                        0,1,0,"Type B I",
                        0,0.9,0.1,"Type B I",
                        0.2,0.7,0.1,"Type B I",
                        0.2,0.8,0,"Type B I",
                        0,0.9,0.1,"Type B II",
                        0,0.45,0.55,"Type B II",
                        0.1,0.4,0.5,"Type B II",
                        0.1,0.6,0.3,"Type B II",
                        0.2,0.7,0.1,"Type B II",
                        0.1,0.6,0.3,"Type C I",
                        0.1,0,0.9,"Type C I",
                        0.4,0,0.6,"Type C I",
                        0.4,0.5,0.1,"Type C I",
                        0.2,0.7,0.1,"Type C I",
                        1,0,0,"Type C II",
                        0.7,0.3,0,"Type C II",
                        0.5,0.4,0.1,"Type C II",
                        0.4,0.5,0.1,"Type C II",
                        0.4,0,0.6,"Type C II",
                        0,0,1,"Type D",
                        0.1,0,0.9,"Type D",
                        0.1,0.4,0.5,"Type D",
                        0,0.45,0.55,"Type D")


                       grad.lab<-plyr::ddply(grad,"Label",function(df)
                        {apply(df[,1:3],2,mean)})

                       plot<-ggtern::ggtern() +
                         ggplot2::geom_polygon(data=grad,
                                               alpha=0.75,
                                               size=0.5,
                                               color="black",
                                               ggplot2::aes_string(x=colnames(grad)[2],y=colnames(grad)[1],z=colnames(grad)[3],fill=colnames(grad)[4]))

                       return(plot)
}
