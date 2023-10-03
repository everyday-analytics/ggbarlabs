#' geom_barlab_count_percent
#' @description Add label which is the count as well as percentage.  Acts like geom_bar() but text label at the position of the top of the bar.  Percentage is calculated within facet panels.
#'
#' @param vjust
#' @param lineheight
#' @param position
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
geom_barlab_count_percent <- function(vjust = -0.1,
                                    lineheight = .85,
                                    position = ggplot2::position_dodge2(width = .9,
                                                               preserve = "single"), ...){

  stat_count(geom = "text",
             ggplot2::aes(label = paste0(after_stat(count), "\n(",

                                round(
                                  100*(ggplot2::after_stat(count))/
                                    tapply(ggplot2::after_stat(count),
                                           after_stat(PANEL),
                                           sum)[after_stat(PANEL)],
                                  1), "%)" )),
             vjust = vjust,
             lineheight = lineheight,
             position = position,
             ...
             )
}
