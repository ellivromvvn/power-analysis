library(pwr)

# Regression

## Calculate the required denominator degrees of freedom (v)
result <- pwr.f2.test(u = 2,          # Number of predictors
                      f2 = 0.15,      # Medium effect size
                      sig.level = 0.05, 
                      power = 0.80)

## Calculate total sample size (N = v + u + 1)
required_N <- ceiling(result$v + result$u + 1)
cat("Required Sample Size:", required_N)

# Calculate sample size for different effect sizes
pwr.chisq.test(
  w = 0.15,
  df = 8,
  sig.level = .05,
  power = .8
)