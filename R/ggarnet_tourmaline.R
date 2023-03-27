#' ggarnet_tourmaline
#'
#' @param type = database name of the desired plot
#' to see plots a available check data file
#'
#' @return a ggplot plot with the selected polygon
#' @export
#'
#' @examples ggarnet_tourmaline()

ggarnet_tourmaline<-function() {

<<<<<<< HEAD
  grad<-read.csv("./data/ggarnet_tourmaline.csv") %>%
=======
  grad<-read.csv("./data/tourmaline.csv") %>%
>>>>>>> f51cc47b3221c49cd950afc175478ec743f73aa3
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
