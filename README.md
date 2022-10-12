# Modul1_Probstat_5025211121

1. Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.

   a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi  sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri 
      acara vaksinasi ? (distribusi Geometrik)
      
          p = 0.2
          x = 3
        
          #A
          peluang = dgeom(x,1-p)
          peluang
       
       
![Screenshot (2630)](https://user-images.githubusercontent.com/106955551/195245453-95fe4d04-5264-4fb3-951e-7146a5965f41.png)



   b. Mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
         
          #B
          n = 10000
          mean(rgeom(n,p) == 3)
          
          
![Screenshot (2631)](https://user-images.githubusercontent.com/106955551/195245538-741783ce-8c27-4ee2-a101-84bf1c8bfc72.png)


   
   c. Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
   
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
          
          
![Screenshot (2632)](https://user-images.githubusercontent.com/106955551/195245595-fad75a8d-ec57-43cd-be2d-9aecf8b88d5b.png)

    
    e.  Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
    
          #E
          mean = 1/p
          mean
          varian = (1-p)/p^2
          varian
               
![Screenshot (2633)](https://user-images.githubusercontent.com/106955551/195245706-137fff6b-f5a5-46f6-90af-d1a105056d49.png)
          
        
2. Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :
    
    a. Peluang terdapat 4 pasien yang sembuh.
         
          n = 20
          p = 0.2
          x = 4

          #A
          peluang = dbinom(x, n, p)
          peluang
          
![Screenshot (2635)](https://user-images.githubusercontent.com/106955551/195246160-31978615-67bd-4959-a241-a2b0cf126c03.png)

         
    b. Gambarkan grafik histogram berdasarkan kasus tersebut. 
     
          #B
          hist(rbinom(x, n, p), 
              main = "Histogram Distribusi Binomial",
              xlab = "X",
              col  = "purple"
          )
 
 ![Screenshot (2640)](https://user-images.githubusercontent.com/106955551/195246254-dfa9fe4f-82a8-4aab-a57e-5d1d6396baa5.png)

         
    c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Binomial.
      
          #C
          mean = n*p
          varian = n*p*(1-p)
          mean
          varian

![Screenshot (2640)](https://user-images.githubusercontent.com/106955551/195246254-dfa9fe4f-82a8-4aab-a57e-5d1d6396baa5.png)

         
3. Diketahui data dari  sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. 
   (gunakan Distribusi Poisson)
   
    a. Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?

           lamda = 4.5
           x = 6

           #A
           peluang = dpois(x, lamda)
           peluang
 
 ![Screenshot (2641)](https://user-images.githubusercontent.com/106955551/195246620-1c0ea9cb-1892-44b2-b86e-06dd4b6b8687.png)

         
     b. Simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini  selama setahun (n = 365)
     
           #B
           n = 356
           hist(rpois(n, lamda), 
               main = "Histogram Distribusi Poisson",
               xlab = "X",
               col  = "green"
           )
  
  ![Screenshot (2643)](https://user-images.githubusercontent.com/106955551/195246646-72a5e917-4ba0-4430-a93d-e32afd10f3a2.png)


         
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
  
  
  ![Screenshot (2643)](https://user-images.githubusercontent.com/106955551/195246646-72a5e917-4ba0-4430-a93d-e32afd10f3a2.png)

          
4. Diketahui nilai x = 2 dan v = 10. Tentukan:
      
      a. Fungsi Probabilitas dari Distribusi Chi-Square.
      
            x = 2
            v = 10

            #A
            peluang = dchisq(x, 10)
            peluang
           
           
![Screenshot (2644)](https://user-images.githubusercontent.com/106955551/195247447-5bbcda31-f7db-4dd0-8071-c79c7a89bdad.png)

            
      b. Histogram dari Distribusi Chi-Square dengan 100 data random.
      
            #B
            n = 100
            hist(rchisq(n, v), 
               main = "Histogram Distribusi Chi-Square",
               xlab = "X", 
               ylab = "V", 
               col  = "orange"
            )

![Screenshot (2646)](https://user-images.githubusercontent.com/106955551/195247457-60d0787b-1d55-49e4-8d8c-fab0b149f835.png)

            
      c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square.
       
            #C
            mean = v
            varian = 2*v
            mean
            varian 
            
            
![Screenshot (2646)](https://user-images.githubusercontent.com/106955551/195247457-60d0787b-1d55-49e4-8d8c-fab0b149f835.png)


5. Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan

   a. Fungsi Probabilitas dari Distribusi Exponensial 
   
            lambda = 3

            #A
            set.seed(1)
            peluang = dexp(1, rate = lambda)
            peluang
 
 ![Screenshot (2649)](https://user-images.githubusercontent.com/106955551/195248038-260d2dd3-75d0-4951-8ad3-9a3161ac3deb.png)
            
   b. Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random

            #B
            set.seed(1)
            hist(rexp(10, rate = lambda), 
               main = "Histogram Distribusi Eksponensial untuk 10 Bilangan Random",
               col  = "plum"
            )
            
![Screenshot (2650)](https://user-images.githubusercontent.com/106955551/195248053-73b42ff8-0479-4288-a498-071ad1e96d2c.png)

            hist(rexp(100, rate = lambda), 
               main = "Histogram Distribusi Eksponensial untuk 100 Bilangan Random",
               col  = "deeppink"
            )
            
![Screenshot (2651)](https://user-images.githubusercontent.com/106955551/195248057-df5a8a0c-794e-4547-abc1-3e1977432b02.png)

            hist(rexp(1000, rate = lambda), 
               main = "Histogram Distribusi Eksponensial untuk 1000 Bilangan Random",
               col  = "yellow"
            )
            
![Screenshot (2652)](https://user-images.githubusercontent.com/106955551/195248068-ceccf500-b031-4fa4-9b5d-aaef3d0a4a31.png)

            hist(rexp(10000, rate = lambda), 
               main = "Histogram Distribusi Eksponensial untuk 10000 Bilangan Random",
               col  = "aquamarine"
            )
            
![Screenshot (2653)](https://user-images.githubusercontent.com/106955551/195248076-bc55c63a-fab6-481c-abd2-2f6562d55f54.png)
            
            
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

![Screenshot (2654)](https://user-images.githubusercontent.com/106955551/195248086-d8fcb1d7-c350-4828-be16-0bde11a0a467.png)

            
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
            
![Screenshot (2656)](https://user-images.githubusercontent.com/106955551/195248970-c4c174a9-b32b-4b01-9b51-f5fd6fc709ad.png)

            
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
    
 ![Screenshot (2658)](https://user-images.githubusercontent.com/106955551/195248712-2d3cb2b4-2162-45ca-8570-389fd00ed1df.png)
            
            
     c. Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.

            #C
            varian = (sd(data)) ^ 2
            varian

![Screenshot (2659)](https://user-images.githubusercontent.com/106955551/195248724-c5ea0830-6210-4466-a46b-3c0695383081.png)






          

      
         






