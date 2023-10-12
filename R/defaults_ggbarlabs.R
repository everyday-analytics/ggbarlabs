#' Title
#'
#' @return
#' @export
#'
#' @examples
defaults_ggbarlabs <- function(){
  
  list(
  theme_classic(base_size = 15) ,
  theme(axis.line.y = element_blank(),
        axis.text.y.right = element_blank(),
        axis.ticks.y = element_blank(),
        axis.title.y = element_blank(),
        axis.text.y = element_blank(),
        panel.grid.major.y = element_line(color = alpha("gray35", .1)),
        panel.grid.major.x = element_blank(),
        panel.grid.minor.x = element_blank(),
        axis.ticks = element_blank(),
        axis.line.x = element_line(colour = "gray35"),
        legend.position = "top",
        legend.justification = 0) ,
  scale_y_continuous(expand = expansion(mult = c(0, .15))))
}


#' Title
#'
#' @param data 
#' @param ... 
#'
#' @return
#' @export
#'
#' @examples
ggbarlabs <- function(data = NULL, ...){
  ggplot(data= data , ... ) +
  defaults_ggbarlabs()
}
