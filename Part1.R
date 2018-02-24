set.seed(3000)

num_exp <- 40
lambda <- 0.2
num_sim <- 1000

exp_simulations <- replicate(num_sim, rexp(num_exp, lambda))
simulations_means <- apply(exp_simulations, 2, mean)

hist(simulations_means, breaks=30, main="Means of simulated exponentials", col = "green")
abline(v = mean(simulations_means), lwd="10", col="red")

mean(simulations_means)

print((1/lambda)/sqrt(num_exp))
print(sd(simulations_means)) 
print(((1/lambda)/sqrt(num_exp))^2)
print(sd(simulations_means)^2) 

hist(simulations_means, prob=TRUE, col="green", main="Means of simulated exponentials", breaks=30)
lines(density(simulations_means), lwd=5, col="red")
x <- seq(min(simulations_means), max(simulations_means), length=2*num_exp)
y <- dnorm(x, mean = 1/lambda, sd = sqrt(((1/lambda)/sqrt(num_exp))^2))
lines(x, y, pch=22, col="blue", lwd=5, lty = 2)


