#q1
#sigma^2 / n

#q2
pnorm(70, mean=80, sd=10)
#0.1586533

#q3
qnorm(0.95, mean=1100, sd=75)
#1223.364

#q4
qnorm(0.95, mean=1100, sd=75/sqrt(100))
#1112.336

#q5
pbinom(3, size=5, prob=0.5, lower.tail=FALSE)
#0.1875

#q6
upper = pnorm(16, mean=15, sd=10/sqrt(100))
lower = pnorm(14, mean=15, sd=10/sqrt(100))
upper - lower
#0.6827

#q7
#standard uniform, min=0, max=1, mean=0.5, variance=1/12

#q8
1/sqrt(12 * 100)
#or
nosim <- 1000
n <- 100
sd(apply(matrix(runif(nosim * n), nosim), 1, mean))
#0.029

#q9
ppois(10, lambda=5*3)
#0.1185

#q10
# X ~ binom(1, 0.5), mean(X)=0.5, var(X)=0.25
# Y ~ 2*X-1, mean(Y)=2*0.5-1=0. var(Y)=4*0.25=1
