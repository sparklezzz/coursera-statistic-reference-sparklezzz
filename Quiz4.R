#q1
c1 <- c(140, 138, 150, 148, 135)
c2 <- c(132, 135, 151, 146, 130)
t.test(c1, c2, alternative="two.sided", paired=TRUE)
#0.08652
#or
diff = c1 - c2
mean_d = mean(diff)
sd_d = sd(diff)
t_stat = mean_d / (sd_d / sqrt(5))
2 * pt(t_stat, df=5-1, lower.tail=FALSE)
#0.08652

#q2
1100 + c(-1,1) * qt(0.975, 9-1) * 30 / sqrt(9)
#1076.94 1123.06

#q3 binom
binom.test(3, 4, alternative = "greater")
#0.3125

#q4 binom
#pbinom(10, 1787, prob=1/100, lower.tail=TRUE)
#or
binom.test(10, 1787, p = 1/100, alternative="less")
#0.03175

#q5 
# new: size 9, mean -3, sd 1.5, placebo: size 9, mean 1.5, sd 1.8
# unequal var
s1 <- 1.5^2/9
s2 <- 1.8^2/9
df <- (s1+s2)^2 / (s1^2/8 + s2^2/8)
sd_val <- sqrt(s1+s2)
t_val <- (1.5 - (-3)) / sd_val
2 * pt(t_val, df=df, lower.tail=FALSE)
#2 * 1.653297e-05
# equal var
sp <- sqrt((8*1.5^2 + 8*1.8^2) / (9+9-2))
t_val <- (1.5 - (-3)) / (sp * sqrt(1/9+1/9))
2 * pt(t_val, df=9+9-2, lower.tail=FALSE)
#2 * 1.458654e-05

#q6
mua = (1123 - 1077) / 2
#mua + qt(0.95, 9-1) * sigma / sqrt(9) = 1123
sigma = (1123 - mua) * sqrt(9) / qt(0.95, 9-1)
pt(q=(mua-1078)/(sigma/sqrt(9)), df=9-1, lower.tail=FALSE)
#0.9438235
# actually, no calculation needed, since 1078 falls in [1077, 1123], and 95% CI contains 90% CI. Is it right?

#q7 power
t_stat0 <- qt(p=0.05, df=100-1, lower.tail=FALSE) 
x <- 0 + t_stat0 * 0.04 / sqrt(100)  
t_stat1 <- (x - 0.01) / (0.04 / sqrt(100))
pt(t_stat1, df = 99, lower.tail=FALSE)
#or
power.t.test(n = 100, delta = 0.01, sd = 0.04, sig.level=0.05, type = "one.sample", alt = "one.sided")$power
#0.7989855

#q8
power.t.test(delta = 0.01, sd = 0.04, sig.level=0.05, power=0.9, type = "one.sample", alt = "one.sided")$n
#138.3856

#q10
# new: size 288, mean 44, sd 12, placebo: size 288, mean 42.04, sd 12
sp <- sqrt((287*12^2 + 287*12^2) / (288+288-2))
t_val <- (44 - 42.04) / (sp * sqrt(1/288+1/288))
2 * pt(t_val, df=288+288-2, lower.tail=FALSE)
#0.05047919

#q11
m <- 10
alpha <- .05
alphaFwer <- alpha / m
alphaFwer







