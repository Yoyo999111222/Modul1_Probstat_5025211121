#NO.1
p = 0.2
x = 3

#A
peluang = dgeom(x,1-p)
peluang

#B
n = 10000
mean(rgeom(n,p) == 3)

#C

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

