tokunaga <- function(rl, rn){
  # Calculates Tokunaga's coefficients, given Horton's length ratio and Horton's stream ratio
  t1 <- rn - rl - 2 + (2*rl/rn)
  rt <- rl
  
  return(list(rt=rt, t1=t1))
  
}