#NO.1
p = 0.2
x = 3

#A
peluang = dgeom(x,p)
peluang

#B
n = 10000
mean(rgeom(n,p) == 3)

#C
#ada di readme github

#D
set.seed(0)
hist(rgeom(n, p),
     main = "Histogram Distribusi Geometrik",
     xlim = c(0,40),
     xlab = "X",
     col  = "cyan"
)

#E
mean = 1/p
mean
varian = (1-p)/p^2
varian


#NO.2
n = 20
p = 0.2
x = 4

#A
peluang = dbinom(x, n, p)
peluang

#B
hist(rbinom(x, n, p), 
     main = "Histogram Distribusi Binomial",
     xlab = "X",
     col  = "purple"
)

#C
mean = n*p
varian = n*p*(1-p)
mean
varian


#NO.3
lambda = 4.5
x = 6

#A
peluang = dpois(x, lambda)
peluang

#B
n = 356
hist(rpois(n, lambda), 
     main = "Histogram Distribusi Poisson",
     xlab = "X",
     col  = "green"
)

#C
#ada di readme github

#D
mean = varian = lambda
mean
varian


#NO.4
x = 2
v = 10

#A
peluang = dchisq(x, 10)
peluang

#B
n = 100
hist(rchisq(n, v), 
     main = "Histogram Distribusi Chi-Square",
     xlab = "X", 
     ylab = "V", 
     col  = "orange"
)

#C
mean = v
varian = 2*v
mean
varian 


#NO.5
lambda = 3

#A
set.seed(1)
peluang = rexp(1, rate = lambda)
peluang

#B
set.seed(1)
hist(rexp(10, rate = lambda), 
     main = "Histogram Distribusi Eksponensial untuk 10 Bilangan Random",
     col  = "plum"
)
hist(rexp(100, rate = lambda), 
     main = "Histogram Distribusi Eksponensial untuk 100 Bilangan Random",
     col  = "deeppink"
)
hist(rexp(1000, rate = lambda), 
     main = "Histogram Distribusi Eksponensial untuk 1000 Bilangan Random",
     col  = "yellow"
)
hist(rexp(10000, rate = lambda), 
     main = "Histogram Distribusi Eksponensial untuk 10000 Bilangan Random",
     col  = "aquamarine"
)

#C
n = 100
set.seed(1)
mean = mean(rexp(n, rate = lambda))
varian = (sd(rexp(n, rate = lambda))) ^ 2
mean
varian


#NO.6
n = 100
mean = 50
sd = 8

#A
#data <- c(1,2,4,2,6,3,10,11,5,3,6,85)
data <- rnorm(n,mean,sd)
rata_rata <- mean(data)
x1 <- floor(mean(data))
x2 <- ceiling(mean(data))

Z_scores <- (data - mean(data) / sd(data))

plot(Z_scores, type = "o", col = "blueviolet")

#B
hist(data,
     breaks = 50,
     main   = "5025211121_Frederick Yonatan Susanto_Probstat_A_DNhistogram",
     col    = "brown"
)

#C
varian = (sd(data)) ^ 2
varian