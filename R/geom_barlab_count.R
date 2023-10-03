#' geom_text_count
#' @description Add label which is the count.  Acts like geom_bar() but text label at the position of the top of the bar.
#'
#' @param vjust
#' @param position
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
geom_barlab_count <- function(vjust = -0.15, position =
                              ggplot2::position_dodge2(width = .9,
                                                       preserve = "single"), ...){

  ggplot2::stat_count(geom = "text",
                      ggplot2::aes(label = ggplot2::after_stat(count)),
                      vjust = vjust,
                      position = position,
                      ...
  )

}
