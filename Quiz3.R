#q1
1100 + c(-1,1) * qt(0.975, 9-1) * 30 / sqrt(9)
#1076.94 1123.06

#q2
#-2 + qt(0.975, 9-1) * v_sd / sqrt(9) = 0
2 * sqrt(9) / qt(0.975, 9-1)
#2.60


#q4
# new: size 10, mean 3, var 0.6; old: size 10, mean 5, var 0.68
sp <- sqrt((9 * 0.6 + 9 * 0.68) / (10 + 10 - 2))
3 - 5 + c(-1, 1) * qt(0.975, 10 + 10 - 2) * sp * sqrt(1/10 + 1/10)
#-2.751649 -1.248351

#q6
#old: size 100, mean 6, sd 2; new: size 100, mean 4, sd 0.5
s1 <- 2^2/100
s2 <- 0.5^2/100
df <- (s1+s2)^2 / (s1^2/99 + s2^2/99)
6 - 4 + c(-1,1) * qt(0.975, df) * sqrt(s1+s2) 
#1.591503 2.408497

#q7
#treated: size 9, mean -3, sd 1.5; placebo: size 9, mean 1, sd 1.8
#independent group, unequal variance
s1 <- 1.5^2/9
s2 <- 1.8^2/9
df <- (s1+s2)^2 / (s1^2/8 + s2^2/8)
-3 - 1 + c(-1,1) * qt(0.95, df) * sqrt(s1+s2)
#-5.366303 -2.633697 right
#dependent group, equal variance
sp <- sqrt((8*1.5^2 + 8*1.8^2) / (9+9-2))
-3 - 1 + c(-1,1) * qt(0.95, 9+9-2) * sp * sqrt(1/9 + 1/9)
#-5.363579 -2.636421 also right





