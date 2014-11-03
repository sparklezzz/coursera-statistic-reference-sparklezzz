#q1
# 12 + y - 6 = 17
# y = 11

#q2
qunif(0.75, min=0, max=1)


#q3
# p * X = (1-p) * Y

#q5
x <- 1:4
p <- x/sum(x)
temp <- rbind(x, p)
rownames(temp) <- c("X", "Prob")
temp
sum(x * p)

#q6
#p(A)=p(B)=0.8, p(A and B)=0.7, p(A or B)=0.9
#p(B | ^A) = p(B and ^A) / p(^A) = (0.8-0.7) / (1-0.8) = 0.5

#q7
#P(+|D) = 0.75, P(-|Dc) = 0.52
#P(D) = 0.3, P(Dc) = 0.7, P(Dc and -) = 0.52 * 0.7 = 0.364
#P(D and +) = P(+|D) * P(D) = 0.75 * 0.3 = 0.225
#P(D and -) = P(D) - P(D and +) = 0.3 - 0.225 = 0.075
#P(-) = P(Dc and -) + P(D and -) = 0.364 + 0.075 = 0.439
#P(+) = 1 - 0.439 = 0.561
#P(D|+) = P(D and +) / P(+) = 0.75 * 0.3 / 0.561 = 0.4




