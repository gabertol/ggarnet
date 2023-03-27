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
<<<<<<< HEAD
  grad<-read.csv(paste(find.package("ggarnet"),"/data/garnet_mg_fe_mn_ca.csv",sep="")) %>%
=======
  grad<-read.csv(paste(.libPaths(),"/ggarnet/data/garnet_mg_fe_mn_ca.csv",sep="")) %>%
>>>>>>> 41fcef3f8a73616ee860c767bba0e48a5864f728
    tibble()



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
