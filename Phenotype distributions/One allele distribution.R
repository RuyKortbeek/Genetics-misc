# Make a distribution of a population containing two alleles
# a = dominant
# A = recessive
# We continue with a Aa x Aa cross

# Set up phenotype distibutions for two alleles
a = rnorm((75*1000), 90, 7)
A = rnorm((25*1000), 120, 8)

#combine in phenotypes in one population
c = c(a,A)
hist(log(c))

# Plot contributions of the phenotypes over the combined population 
plot(density(scale(log(c))))

# approxima a function of the distibution to be able to integrate
d = approxfun(density(scale(log(c))))
integrate(d, -3.5,.65)

# Add a line (e.g. at the desired frequency distribution)
abline(v = 0.65, lty = 2, col =  "red")


########################################
# Function for frequency distributions #
########################################
# to be finished

freq = function(perc.A, perc.B){
  df = c(rnorm((perc.A*1000), 90, 7), rnorm((perc.B*1000), 110, 8))
  plot(density(scale(log(df))))
}

# e.g. allele A = 75%, allele B = 25% -- > freq(75, 25)

