#'  More complex population growth
#' @param T  period of growth
#' @param C size of forest
#' @param thresh canopy cover threshold
#' @param parms$r - exp growth rate
#' @param parms$g - linear growth rate
#' @param parms$K - carrying capacity
#' @return change in population
#'
treegrowthcalc = function(time, C, thresh, parms) {
  if(C > thresh){
    # compute rate of change of population using exp growth rate
    treegrowth = parms$r*C
  } else (C <= thresh){
    # compute rate of change of population using linear growth rate
    treegrowth = parms$g*(1 - C/K)
  }
    


  # set rate of change to 0 if P is greater than carrying capacity
  treegrowth = ifelse(C > parms$K, 0, treegrowth)
  return(list(treegrowth))
}
