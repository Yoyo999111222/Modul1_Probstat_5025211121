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




