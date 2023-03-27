#' Title
#'
#' @param type = database name of the desired plot
#' to see plots a available check data file
#'
#' @return a ggplot plot with the selected polygon
#' @export
#'
#' @examples ggarnet_mn()

ggarnet_mn<-function() {

   grad<-read.csv(paste(find.package("ggarnet"),"/data/garnet_mg_mn_ca.csv",sep="")) %>%
    tibble()

  grad.lab<-plyr::ddply(grad,"Label",function(df)
  {apply(df[,1:3],2,mean)})

  plot<-ggtern::ggtern() +
    ggplot2::geom_polygon(data=grad,
                          alpha=0.75,
                          size=0.5,
                          color="black",
                          ggplot2::aes_string(y=colnames(grad)[3],x=colnames(grad)[2],z=colnames(grad)[1],fill=colnames(grad)[4]))

  return(plot)

}

