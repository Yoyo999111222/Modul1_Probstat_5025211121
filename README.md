# Modul1_Probstat_5025211121

1. Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.

   a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi  sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri 
      acara vaksinasi ? (distribusi Geometrik)
      
          p = 0.2
          x = 3
        
          #A
          peluang = dgeom(x,1-p)
          peluang

   b.  Mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
         
          #B
          n = 10000
          mean(rgeom(n,p) == 3)
   
   c.  Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
   
       Kedua poin tersebut menghasilkan hasil yang berbeda. Pada poin A, dilakukan distribusi Geomterik biasa dan didapatkan nilai 
       sebesar 0.1024 dan akan selalu tetap jika dilakukan pengulangan pengujian. Hal itu dikarenakan nilai distribusi Geometrik 
       yang digunakan adalah tetap dan tidak diacak.
       Sedangkan pada poin B, didapatkan hasil yang selalu berubah-ubah karena hasil tersebut merupakan rata-rata dari semua 
       peluang-peluang yang dapat terjadi pada kejadian tersebut. Nilai peluang distribusi tersebut akan selalu berubah 
       seiring dengan nilai random yang dihasilkan dari fungsi rgeom().
       Untuk kebutuhan sampling, poin B lebih baik untuk digunakan daripada poin A.
       
   d.  Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
   
          #D
          set.seed(0)
          hist(rgeom(n, p),
               main = "Histogram Distribusi Geometrik",
               xlim = c(0,40),
               xlab = "X",
               col  = "cyan"
          )
    
    e.  Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
    
          #E
          mean = 1/p
          mean
          varian = (1-p)/p^2
          varian
        
2. Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :
    
    a. Peluang terdapat 4 pasien yang sembuh.
         
          n = 20
          p = 0.2
          x = 4

          #A
          peluang = dbinom(x, n, p)
          peluang
         
    b. Gambarkan grafik histogram berdasarkan kasus tersebut. 
     
          #B
          hist(rbinom(x, n, p), 
               main = "Histogram Distribusi Binomial",
               xlab = "X",
               col  = "purple"
          )
         
         
    c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Binomial.
      
          #C
          mean = n*p
          varian = n*p*(1-p)
          mean
          varian
         
         
3. Diketahui data dari  sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. 
   (gunakan Distribusi Poisson)
   
    a. Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?

           lamda = 4.5
           x = 6

           #A
           peluang = dpois(x, lamda)
           peluang
         
         
     b. Simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini  selama setahun (n = 365)
     
           #B
           n = 356
           hist(rpois(n, lamda), 
               main = "Histogram Distribusi Poisson",
               xlab = "X",
               col  = "green"
           )
         
         
      c. Bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan
         
         Poin A dan B cenderung sama, karena nilai dari poin A sendiri didapat dari range nilai poin B. Range dari B dapat dilihat 
         pada histogram yang telah terbentuk. Dari sana, nilai dari A berada di dalam range B. Oleh karena itu, dalam estimasi 
         selama 365 hari akan memberikan nilai hasil yang hampir sama dengan estimasi jumlah bayi yang akan dilahirkan di waktu                  
         selanjutnya (esok hari).
         
         
      d. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.
      
            #D
            mean = varian = lamda
            mean
            varian
          
          
4. Diketahui nilai x = 2 dan v = 10. Tentukan:
      
      a. Fungsi Probabilitas dari Distribusi Chi-Square.
      
            x = 2
            v = 10

            #A
            peluang = dchisq(x, 10)
            peluang
            
            
      b. Histogram dari Distribusi Chi-Square dengan 100 data random.
      
            #B
            n = 100
            hist(rchisq(n, v), 
               main = "Histogram Distribusi Chi-Square",
               xlab = "X", 
               ylab = "V", 
               col  = "orange"
            )
            
            
      c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square.
       
            #C
            mean = v
            varian = 2*v
            mean
            varian 
            
            
5. Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan

   a. Fungsi Probabilitas dari Distribusi Exponensial 
   
            lambda = 3

            #A
            set.seed(1)
            peluang = dexp(1, rate = lambda)
            peluang
            
            
   b. Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random

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
            
            
    c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3
               Petunjuk: 
               - Gunakan set.seed(1)
               - Gunakan fungsi bawaan R
               
            #C
            n = 100
            set.seed(1)
            mean = mean(rexp(n, rate = lambda))
            varian = (sd(rexp(n, rate = lambda))) ^ 2
            mean
            varian
            
            
6. Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan

   a.  Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik. Petunjuk(gunakan                   fungsi plot()).
              Keterangan : 
              X1 = Dibawah rata-rata 
              X2 = Diatas rata-rata
              Contoh data :
              1,2,4,2,6,3,10,11,5,3,6,8
              rata-rata = 5.083333
              X1 = 5
              X2 = 6
               
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
            
            
    b. Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan: 
           NRP_Nama_Probstat_{Nama Kelas}_DNhistogram
            Contoh :
            312312312_Rola_Probstat_A_DNhistogram
            
            #B
            hist(data,
               breaks = 50,
               main   = "5025211121_Frederick Yonatan Susanto_Probstat_A_DNhistogram",
               col    = "brown"
            )
            
            
     c. Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.

            #C
            varian = (sd(data)) ^ 2
            varian







          

      
         






