#'  More complex population growth
#' @param T  period of growth
#' @param Cinitial size of forest
#' @param parms$thresh canopy cover threshold
#' @param parms$r - exp growth rate
#' @param parms$g - linear growth rate
#' @param parms$K - carrying capacity
#' @return change in population
#'
treegrowthcalc = function(time, Cinitial, parms) {
  if (Cinitial < parms$thresh) {
    # compute rate of change of population using exp growth rate
    treegrowth = parms$r*Cinitial
  } else if(Cinitial >= parms$thresh){
    # compute rate of change of population using linear growth rate
    treegrowth = parms$g*(1 - (Cinitial/K))
  }
    


  # set rate of change to 0 if P is greater than carrying capacity
  treegrowth = ifelse(Cinitial > parms$K, 0, treegrowth)
  return(list(treegrowth))
}
