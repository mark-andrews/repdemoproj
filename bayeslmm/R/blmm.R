#' Perform a Bayesian linear mixed effects model
#'
#' @export
#' @param formula An R model formula for mixed effects models
#' @param data The name of a data frame
#' @param cores The number of CPU cores that the model will use
#' @param seed The initial conditions of the random number generator
#' @return A list with a two element: model and waic.
#' @examples
#' \dontrun{
#' M <- lmm(rt ~ days + (1|subject), data)
#' }
lmm <- function(formula, data, cores = 4, seed = 10101){
  M <- brms::brm(as.formula(formula),
                 cores = cores,
                 chains = 4,
                 seed = seed,
                 data = data)

  list(model = M,
       waic = brms::waic(M)$estimates['waic', 'Estimate'])
}

#' A linear mixed effect facet plot
#'
#' @export
#' @param data A data frame
#' @return A ggplot2 plot
#' @import ggplot2
#' @examples
#' \dontrun{
#' lmmplot(sleepstudy)
#' }
lmmplot <- function(data){
  ggplot(data,
         aes(x = day, y = rt, colour = subject)) +
    geom_point() +
    stat_smooth(method = 'lm', se = F) +
    facet_wrap(~subject) +
    theme_minimal() +
    theme(legend.position = 'none')
}
