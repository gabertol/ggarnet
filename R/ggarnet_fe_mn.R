#' ggarnet_fe_mn
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
