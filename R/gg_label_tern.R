#' Title
#'
#' @param type = database name of the desired plot
#' to see plots a available check data file
#'
#' @return a ggplot plot with the selected polygon
#' @export
#'
#' @examples gg_label_tern(type="./data/garnet_mg_fe_mn_ca.csv")

gg_label_tern <- function(type) {


  grad<-tibble::as_tibble(read.csv(type,sep = ";"))


  grad.lab<-plyr::ddply(grad,"Label",function(df)
  {apply(df[,1:3],2,mean)})

  ggtern::ggtern(data=grad,ggplot2::aes_string(y=colnames(grad)[3],x=colnames(grad)[2],z=colnames(grad)[1],color=colnames(grad)[4],fill=colnames(grad)[4])) +
    ggplot2::geom_polygon(alpha=0.75,size=0.5,color="black") +
    ggtern::geom_mask() +
    ggplot2::geom_text(data=grad.lab,ggplot2::aes(label=Label),color="black",size=3.5) +
    ggtern::weight_percent() +
    ggplot2::guides(fill='none') +
    ggtern:: theme_legend_position("topleft") +
    ggplot2::labs(title = "Metamorphic grade",
         fill  = "Label",
         color = "Label")
}

