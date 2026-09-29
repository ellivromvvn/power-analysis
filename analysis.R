library(pwr)

# Regression

## Calculate the required denominator degrees of freedom (v)
result <- pwr.f2.test(u = 10,          # Number of predictors
                      f2 = 0.15,      # Medium effect size
                      sig.level = 0.05, 
                      power = 0.80)

## Calculate total sample size (N = v + u + 1)
required_N <- ceiling(result$v + result$u + 1)
cat("Required Sample Size:", required_N)