import 'package:bookstore_dicoding/repositories/book_data.dart';

class HomeRepository {
  static List<Book> popularBook = [
    Book(
      photo:
          'https://cdn.gramedia.com/uploads/picture_meta/2023/9/4/ut2nbnlcpd8vzbsfogxgcb.jpg',
      name: 'Sakamoto Days 05',
      createdBy: 'YUTO SUZUKI',
      language: 'Indonesia',
      description:
          'Sakamoto Days adalah serial manga Jepang karangan Yuto Suzuki, serial ini pertama kali rilis di majalah Shōnen Jump Giga pada 26 Desember 2019, kemudian serial ini mulai mendapatkan serialisasi mingguan pada 21 November 2020 di majalah Weekly Shōnen Jump. Ceritanya full action campur komedi dan sudah diterjemahkan ke berbagai bahasa, bahkan sampai Okober 2022 komik ini sudah terjual 2 juta copies di Jepang.',
      price: 36000,
      yearRelease: 2023,
      page: 120,
      category: Category.comic,
    ),
    Book(
      photo:
          'https://cdn.gramedia.com/uploads/picture_meta/2023/7/11/h6qyk6tgcvfpk3cekekebr.jpg',
      name: 'Edens Zero 15',
      createdBy: 'Hiro Mashima',
      language: 'Indonesia',
      description:
          "Setelah bertarung dengan sengit, Shiki dan kawan-kawannya berhasil mengalahkan ‘unit 6’ Beast Poseidon Nero. Namun, pasukan aliansi antarbintang yang telah menyapu bersih ‘unit 1’ dalam sekejap malah menghadang mereka! Semua yang berhubungan dengan elsie dianggap musuh, sehingga Homura ikut ditangkap. Shiki yang tidak terima itu mengacungkan tinju besi amarahnya kepada Justice… Di sisi lain, Hermit pergi bersama Weisz ke server satelit raksasa yang merupakan sumber penyebaran virus yang membuat mesin mengamuk. Namun, dia malah berjumpa kembali dengan Profesor Müller, penyebab utama dari trauma masa lalunya, dan kembali tertangkap!",
      price: 32000,
      yearRelease: 2023,
      page: 180,
      category: Category.comic,
    ),
    Book(
      photo:
          'https://cdn.gramedia.com/uploads/items/9786020003436_doraemon_07.jpg',
      name: 'Doraemon 7',
      createdBy: 'Fujiko F. Fujio',
      language: 'Indonesia',
      description:
          """Doraemon adalah judul sebuah manga dan anime yang sangat populer yang dikarang Fujiko F. Fujio sejak 1 Juni 1969 dan berkisah tentang kehidupan seorang anak pemalas kelas 5 sekolah dasar yang bernama Nobita Nobi yang didatangi oleh sebuah robot kucing bernama Doraemon yang datang dari masa depan, yaitu datang dari abad ke-22. Doraemon dikirim untuk menolong Nobita agar keturunan Nobita dapat menikmati kesuksesannya daripada harus menderita dari utang finansial yang akan terjadi pada masa depan yang disebabkan karena kebodohan Nobita.\nKomik Doraemon ini mengisahkan kehidupan sehari-hari Doraemon yang merupakan robot kucing dari abad ke-22 dengan Nobita yang merupakan tokoh utama dalam cerita ini. Doraemon memiliki sebuah Kantong Ajaib (Kantong Empat Dimensi) yang berisi banyak sekali alat ajaib dari masa depan. Nobita, yang tau akan kantong ajaib ini seringkali datang merengek-rengek karena masalah di sekolah atau di lingkungan yang terjadi padanya, setelah memohon atau memaksa, Doraemon akan mengeluarkan sebuah alat yang dapat membantu Nobita menyelesaikan masalah itu, alat itu juga kadang digunakan dengan alasan pamer ke teman-temannya, atau bahkan digunakan sebagai ajang balas dendam Nobita.""",
      price: 32000,
      yearRelease: 2011,
      page: 200,
      category: Category.comic,
    ),
    Book(
      photo:
          'https://cdn.gramedia.com/uploads/items/JP_APCL2017MTH03POCO_C.jpg',
      name: 'Princess of Convenience',
      createdBy: 'Marion Lennox',
      language: 'Indonesia',
      description:
          """Untuk dapatkan kualiti kain terbaik, perencana mode pakaian, Jessica buat rancangan pelancongan ke Kerajaan kecil kepangeranan Alp'Azuri di Eropah. Semasa ia kagumi keelokan gambaran sempurna bentang alam saat berkendera kelilingi negri, satu mobil yang terlepas kendali tumbuk mobil Jessicaguna kecepatan penuh dan buat dia hilang kesedaran. Masa dia dapatkan kesedaran dia balik, dia jumpa dirinya dirawati di Istana Kerajaan. Tunangan Pangeran Raoul’s dari Alp'Azuri meninggal disebabkan kerana kemalangan itu. Jessica persalahkan diri dia seorang sudah sebabkan kemalangan yang hilangkan nyawa tunangan sang Pangeran, akan tetapi Pangeran Raoul tetapkan bahawa perkara itu tak boleh salahkan Jessica.""",
      price: 16000,
      yearRelease: 2017,
      page: 128,
      category: Category.comic,
    ),
    Book(
      photo: 'https://cdn.gramedia.com/uploads/items/cov_SINAWANG.jpg',
      name: 'Koloni: Sinawang',
      createdBy: 'Dedy Koerniawan Soesanto',
      language: 'Indonesia',
      description:
          """Cerita horor ini kemudian menginspirasi orang untuk menjadikannya sebuah film maupun drama. Nggak hanya itu, komik bergenre horor pun bisa ditemui. Hal menarik dari cerita horor adalah suasana tegang yang dimunculkan setiap kali hantu tersebut datang.""",
      price: 33750,
      yearRelease: 2022,
      page: 152,
      category: Category.comic,
    ),
    Book(
      photo:
          'https://cdn.gramedia.com/uploads/picture_meta/2022/12/22/u6batnemgwvakal3bu82fb.jpg',
      name: 'Bungkam Suara',
      createdBy: 'J.S. Khairen',
      language: 'Indonesia',
      description:
          """Negara Kesatuan Adat Lemunesia (NKAL) merupakan negara yang tidak terdeteksi di peta dunia. Mereka menganggap dunia yang ada saat ini adalah Dunia Luar. NKAL berdiri pada 23 Januari 1991. Mulanya terdiri dari kerajaan-kerajaan kecil. Mereka Bersatu untuk membentuk sebuah negara atau kerajaan besar. NKAL adalah negara yang canggih di hal-hal tertentu, namun tertinggal di hal-hal lain. Pemimpin tertinggi NKAL adalah Raja Utama dan Pemangku Adat. Raja dipilih secara bergilir bergantian dari masing-masing Kerajaan.""",
      price: 86250,
      yearRelease: 2022,
      page: 376,
      category: Category.novel,
    ),
    Book(
      photo: 'https://cdn.gramedia.com/uploads/items/img20210331_14355714.jpg',
      name: 'Alvaska',
      createdBy: 'Matcharay_',
      language: 'Indonesia',
      description:
          """Kebodohan terbesarku adalah membantu dirinya untuk mendapatkan orang yang dia cintai. Dan, kebohongan terbesarku adalah pura-pura baik-baik saja akan semua itu.\nNovel ini menceritakan Eugenia Thana yang memiliki perasaan kepada seorang laki-laki yang bersikap dingin. Namun, cintanya bertepuk sebelah tangan karena laki-laki tersebut menyukai perempuan lain. Meski begiu, Thana tetap berusaha untuk mendapatkan hati dari laki-laki yang dingin dan angkuh tersebut. Melalui dukungan serta ejekan dari teman-temannya, Thana tetap mencoba supaya laki-laki tersebut melihat dan mencintainya.""",
      price: 84150,
      yearRelease: 2021,
      page: 372,
      category: Category.novel,
    ),
    Book(
      photo:
          'https://cdn.gramedia.com/uploads/picture_meta/2023/2/22/f8kwf3xx4zc36vtyf3ffxz.jpg',
      name: 'Ther Melian: Boundless',
      createdBy: 'Shienny M.s',
      language: 'Indonesia',
      description:
          """Setelah pertarungan yang menyatukan nasib Luxias dan Noxus serta mengembalikan Valadin ke Dunia Terra, rombongan Aelwen dan kawan-kawan melanjutkan perjalanan menuju Eirandia, Kutub Selatan Benua Terra. Mereka mengarungi Samudra Vanora sampai akhirnya badai menghadang dan memaksa kapal mereka untuk melempar sauh di pelabuhan kecil di Benua Barat. Masa lalu kembali mengejar Valadin di sini, dalam bentuk yang tak terduga. Sementara itu, seiring dengan makin dekatnya mereka ke Eirandia, makin banyak bahaya yang dijumpai. Misteri para Penghuni Kedalaman, munculnya `sosok` lain dari era bangsa Aetherial, hingga mengungkap peradaban tersembunyi di dasar samudra. Berbagai misteri menanti Aelwen dan teman-temannya, dan di antara semua pertanyaan itu, ada Kabut Sihir yang menjerat mereka dalam putaran tanpa batas.... ***""",
      price: 84000,
      yearRelease: 2023,
      page: 280,
      category: Category.novel,
    ),
    Book(
      photo:
          'https://cdn.gramedia.com/uploads/items/722030150_The_Devil_All_the_Time.jpg',
      name: 'The Devil All the Time',
      createdBy: 'Donald Ray Pollock',
      language: 'Indonesia',
      description:
          """The Devil All The Time merupakan hasil adaptasi dari novel berjudul sama karya Donald Ray Pollock, yang menelusuri dua generasi antara Perang Dunia II dan Perang Vietnam. Film ini disebut akan memberikan sebuah gambaran menarik sekaligus mengerikan mengenai pertempuran antara keadilan dan kejahatan. Sebagaimana dilansir Vanity Fair, sutradara Antonio Campos telah mengerjakan adaptasi film ini sejak lima tahun lalu. Novel ini mengambil latar belakang selama Perang Dunia Kedua dan Perang Vietnam yang mengangkat kisah seorang pemuda bernama Arvin Russell (Tom Holland) di kota Knockemstiff, Ohio.""",
      price: 75000,
      yearRelease: 2022,
      page: 320,
      category: Category.novel,
    ),
    Book(
      photo:
          'https://cdn.gramedia.com/uploads/items/9786020633176_.Atomic_Habit.jpg',
      name: 'Atomic Habits',
      createdBy: 'James Clear',
      language: 'Indonesia',
      description:
          """Atomic Habits: Perubahan Kecil yang Memberikan Hasil Luar Biasa adalah buku kategori self improvement karya James Clear. Pada umumnya, perubahan-perubahan kecil seringkali terkesan tak bermakna karena tidak langsung membawa perubahan nyata pada hidup suatu manusia. Jika diumpamakan sekeping koin tidak bisa menjadikan kaya, suatu perubahan positif seperti meditasi selama satu menit atau membaca buku satu halaman setiap hari mustahil menghasilkan perbedaan yang bisa terdeteksi. Namun hal tersebut tidak sejalan dengan pemikiran James Clear, ia merupakan seorang pakar dunia yang terkenal dengan 'habits' atau kebiasaan. Ia tahu bahwa tiap perbaikan kecil bagaikan menambahkan pasir ke sisi positif timbangan dan akan menghasilkan perubahan nyata yang berasal dari efek gabungan ratusan bahkan ribuan keputusan kecil. Ia menamakan perubahan kecil yang membawa pengaruh yang luar biasa dengan nama atomic habits.""",
      price: 81000,
      yearRelease: 2019,
      page: 356,
      category: Category.study,
    ),
    Book(
      photo:
          'https://cdn.gramedia.com/uploads/picture_meta/2023/1/10/aagyqjfwwj9udb2vxqaaa2.jpg',
      name: 'Personal Finance 101',
      createdBy: 'Philip Mulyana',
      language: 'Indonesia',
      description:
          """Salah satu kenyataan yang baru kita sadari setelah dewasa adalah betapa sulitnya mengelola keuangan. Gaji pas-pasan, habis. Gaji besar, habis juga. Jangankan untuk investasi, untuk dana darurat pun nggak ada. Bokap gue mengalami itu. Setelah melihat sendiri bagaimana bokap gue kesulitan mengatur keuangan, gue malah mengulangi kesalahan beliau. Itulah alasan kenapa gue menulis buku ini. Gue nggak mau kesalahan ini terulang lagi pada kalian.""",
      price: 68000,
      yearRelease: 2023,
      page: 124,
      category: Category.study,
    ),
    Book(
      photo:
          'https://cdn.gramedia.com/uploads/picture_meta/2023/9/24/wetu6syhxsut7hzgzhnaju.jpg',
      name: 'Crisis Leadership',
      createdBy: 'RIVAN ACHMAD PURWANTONO',
      language: 'Indonesia',
      description:
          """Apa esensi dari Crisis Leadership?\nKrisis memacu kita untuk berubah. Secara tidak kita sadari, krisis mendekatkan diri kita pada peluang, karena tingkat pertumbuhan dan perubahan mendasar hanya cenderung terjadi di masa sulit.""",
      price: 142800,
      yearRelease: 2023,
      page: 232,
      category: Category.study,
    ),
    Book(
      photo:
          'https://cdn.gramedia.com/uploads/picture_meta/2023/9/21/78wnp4tci8tn6adxcpot49.jpg',
      name: 'Branding di Era 5.0',
      createdBy: 'Edi Sudrajat',
      language: 'Indonesia',
      description:
          """Untuk membuat konsumen tertarik dengan produk yang dijual, Anda dapat meningkatkan kesadaran merek brand Anda dengan beberapa cara yang dibahas di buku ini, antara lain memaksimalkan media sosial, seperti Facebook, Twitter, Instagram, TIk Tok, Telegram, WhatsApp,dan Linkedln, menggaet perusahaan pendanaan, membuat brosur yang menarik, mengganti model bisnis, memberi diskon, menjual produk musiman, perang harga, berkolaborasi, menyimpan dan memaksimalkan data pelanggan, membuat isu yang bermanfaat bagi brand Anda, melakukan promosi berdasarkan usia, memberikan garansi, membuat tagline yang menarik, memberikan merchandise, melakukan co-branding, mengirimkan kartu ulang tahun untuk pelanggan, membuat membuat kompetitor sendiri, melakukan live streaming, membuat podcast, mengadakan giveaway, membuat logo yang menarik, memaksimalkan SEO, dan memanfaatkan tools media sosial seperti Google Trends, GOogle Analytics, Hootsuite, dan BuzzSumo.""",
      price: 58075,
      yearRelease: 2023,
      page: 240,
      category: Category.study,
    ),
    Book(
      photo:
          'https://cdn.gramedia.com/uploads/items/722050345_Cover_Kitab_MS_Office_2021.jpg',
      name: 'Kitab MS Office 2021',
      createdBy: 'Jubilee Enterprise',
      language: 'Indonesia',
      description:
          """Microsoft Office adalah perangkat lunak paket aplikasi perkantoran buatan Microsoft dan dirancang untuk dijalankan di bawah sistem operasi Microsoft Windows dan Mac OS X. Umumnya Microsoft Office ini digunakan sebagai alat untuk mempermudah aktivitas dalam perkantoran. Hal tersebut \tidak dapat dipungkiri, mengingat pada awalnya Microsoft mengembangkan Office ini untuk tujuan perkantoran.""",
      price: 93000,
      yearRelease: 2022,
      page: 424,
      category: Category.study,
    ),
  ];

  static List<Book> newestBook = [
    Book(
      photo:
          'https://cdn.gramedia.com/uploads/items/722030150_The_Devil_All_the_Time.jpg',
      name: 'The Devil All the Time',
      createdBy: 'Donald Ray Pollock',
      language: 'Indonesia',
      description:
          """The Devil All The Time merupakan hasil adaptasi dari novel berjudul sama karya Donald Ray Pollock, yang menelusuri dua generasi antara Perang Dunia II dan Perang Vietnam. Film ini disebut akan memberikan sebuah gambaran menarik sekaligus mengerikan mengenai pertempuran antara keadilan dan kejahatan. Sebagaimana dilansir Vanity Fair, sutradara Antonio Campos telah mengerjakan adaptasi film ini sejak lima tahun lalu. Novel ini mengambil latar belakang selama Perang Dunia Kedua dan Perang Vietnam yang mengangkat kisah seorang pemuda bernama Arvin Russell (Tom Holland) di kota Knockemstiff, Ohio.""",
      price: 75000,
      yearRelease: 2022,
      page: 320,
      category: Category.novel,
    ),
    Book(
      photo:
          'https://cdn.gramedia.com/uploads/items/9786024806163_GUNDALA-KLASI.jpg',
      name: 'Koloni Gundala Putra Petir',
      createdBy: 'Hasmi',
      language: 'Indonesia',
      description:
          """Kisah Gundala terinspirasi dari karakter legenda Jawa yang memiliki kemampuan menangkap petir, Ki Ageng Selo. Berkisah tentang seorang ilmuwan muda bernama Sancaka yang mendapatkan kekuatan super berupa tenaga petir dari Kaisar Krons, Sang Raja Petir. Lalu pada episode kedua yang berjudul "Perhitungan di Planet Covox", Gundala mendapatkan kemampuan bergerak secepat topan dari Kaisar Taifun.""",
      price: 141000,
      yearRelease: 2019,
      page: 136,
      category: Category.comic,
    ),
    Book(
      photo:
          'https://cdn.gramedia.com/uploads/items/ID_HCO2014MTH12TAOCT_B.jpg',
      name: 'The Art of Creative Thinking',
      createdBy: 'Robert W. Olson',
      language: 'English',
      description:
          """DO IT!That's the simple, eloquent message of will show you how to Define the problem, Open your mind, Identify solutions and Transform the problem.These are skills you can learn. As you practice The Art of Creative Thinking you will find that along with increased productivity come increased health and happiness as well.""",
      price: 68000,
      yearRelease: 2023,
      page: 124,
      category: Category.study,
    ),
    Book(
      photo:
          'https://cdn.gramedia.com/uploads/picture_meta/2023/9/4/j5rfwv2inlfrvauqskfmfs.jpg',
      name: 'One Punch Man 25',
      createdBy: 'ONE & YUSUKE MURATA',
      language: 'Indonesia',
      description:
          'One Punch Man menceritakan tentang Saitama, seseorang yang tidak terlihat mengesankan dan memiliki hobi yang agak unik, yaitu menjadi pahlawan. Untuk mengejar impian masa kecilnya, Saitama berlatih tanpa henti selama tiga tahun, bahkan sampai kehilangan semua rambutnya dalam proses latihannya itu. Sekarang, Saitama sangat kuat, dia bisa mengalahkan musuh mana pun hanya dengan satu pukulan. Saking kuatnya, Saitama tidak memiliki seorang pun yang menandingi kekuatannya sehingga membuatnya merasa sangat bosan. Suatu hari, Saitama menarik perhatian Genos, cyborg berusia 19 tahun yang menyaksikan kekuatannya dan ingin menjadi murid Saitama. Genos mengusulkan agar keduanya bergabung dengan Asosiasi Pahlawan untuk menjadi pahlawan bersertifikat yang akan diakui atas kontribusi positif mereka kepada masyarakat. Saitama, yang terkejut karena tidak ada siapa yang tahu siapa dia, dengan cepat setuju. Bertemu sekutu baru dan menghadapi musuh baru, Saitama memulai perjalanan baru sebagai anggota Asosiasi Pahlawan untuk merasakan serunya pertempuran yang pernah dia rasakan. Miliki komik ini dan ikuti keseruan Saitama yang lucu ini!',
      price: 25600,
      yearRelease: 2023,
      page: 208,
      category: Category.comic,
    ),
    Book(
      photo:
          'https://cdn.gramedia.com/uploads/picture_meta/2023/7/25/a5qsu3sctdsfscsfudnx9i.jpg',
      name: 'Blue Lock 10',
      createdBy: 'MUNEYUKI KANESHIRO',
      language: 'Indonesia',
      description:
          """Blue Lock adalah serial manga Jepang yang ditulis oleh Muneyuki Kaneshiro dan diilustrasikan oleh Yusuke Nomura. Blue Lock sendiri adalah sebuah fasilitas yang dibangun oleh pemerintahan Jepang guna menemukan dan mengembangkan 1 striker yang akan menjadi bintang timnas jepang sekaligus super star di dunia sepakbola kelak.\nBlue Lock tidak menceritakan kisah pemain di suatu turnamen sepakbola seperti pada umumnya. Blue Lock memiliki sedikit kesamaan dengan Squid Game. Yaitu menyeleksi 300 peserta, melakukan serangkaian permainan dengan sistem gugur, sehingga akan tersisa 1 orang sebagai pemenang.\nCerita dimulai ketika seorang bernama Isagi Yoichi kelas 2 SMA yang tergabung dalam klub sepakbola yang kalah dalam kualifikasi turnamen nasional jepang tingkat SMA. Kendati kalah di kualifikasi, Isagi tetap diundang sebagai salah 1 dari 300 orang yang akan diseleksi di fasilitas Blue Lock""",
      price: 36000,
      yearRelease: 2023,
      page: 200,
      category: Category.comic,
    ),
    Book(
      photo: 'https://cdn.gramedia.com/uploads/items/9786230303661_RESPATI.jpg',
      name: 'Respati',
      createdBy: 'RAGIEL JP',
      language: 'Indonesia',
      description:
          """Buku novel yang berjudul Respati ini merupakan karya Ragiel JP. Novel ini dapat dinikmati oleh pembaca baik dari kalangan remaja maupun orang dewasa. Buku ini menceritakan tentang kisah Respati.\nSejak mengalami kecelakaan di umur 14 tahun, Respati tiba-tiba memiliki kemampuan aneh, ia bisa melihat mimpi orang lain bahkan memasuki mimpi itu. Ia bisa melihat mimpi orang yang sedang tertidur secara jelas dan ketika ia menyentuh orang itu ia akan masuk ke dalam mimpi orang tersebut.""",
      price: 56000,
      yearRelease: 2021,
      page: 248,
      category: Category.novel,
    ),
    Book(
      photo: 'https://cdn.gramedia.com/uploads/items/Cover_Eat_Drink_Sleep.jpg',
      name: 'Eat Drink Sleep',
      createdBy: 'Kim In Suk',
      language: 'Indonesia',
      description:
          """Sebuah komedi romantis tentang romansa tiga wanita yang tidak pernah langsing sebelumnya dan pengalaman mereka saat makan, minum, dan tidur.\nPenulis utama untuk "A Gluttonous Beauty menyediakan ceritaacara makan makanan di saluran kabel Food Channel yang menarik secara emosional.\nI-sook hanya gelisah, karena dia tidak bisa memaksa dirinya untuk mengakui cintanya kepada Seong-jae, produser acara tersebut. Ratusan kali dia telah mengambilnya dengan keras dengan cara mencela diri sendiri dan menyimpulkan bahwa dia tidak akan menyukainya!""",
      price: 101250,
      yearRelease: 2022,
      page: 366,
      category: Category.novel,
    ),
    Book(
      photo:
          'https://cdn.gramedia.com/uploads/items/9786025638503_ANTI_PANIK_BERBICARA_DI_DEPAN_UMUM.jpg',
      name: 'Anti Panik Berbicara Di Depan Umum',
      createdBy: 'Asti Musman',
      language: 'Indonesia',
      description:
          """Ketika kita menghadiri suatu acara, seringkali terkagum dan bahkan iri menyaksikan pembawa acara yang pandai berbicara di depan umum dan mampu mencairkan suasana. Kemampuan tersebut tentu saja tidak didapatkan secara instan. Mereka yang tampak percaya diri di hadapan publik, telah melakukan latihan terus-menerus.\n8Banyak aspek yang harus dikuasai agar lihai memainkan irama suatu acara. Pembiasaan diri dan keterampilan berbahasa adalah hal mutlak yang harus dimiliki seorang pembawa acara. Saat bertugas sebagai pembawa acara, lancar tidaknya suatu acara, berhasil tidaknya suatu acara, tergantung pada pembawa acara. Mengingat pentingnya peran yang dimainkannya, orang yang ditugasi tentu bukan orang yang sembarangan.""",
      price: 79500,
      yearRelease: 2018,
      page: 308,
      category: Category.study,
    ),
    Book(
      photo:
          'https://cdn.gramedia.com/uploads/picture_meta/2023/2/28/jkebftipxoed7qsx9x5pxt.jpg',
      name: 'Ghosting Writer',
      createdBy: 'Aya Widjaja',
      language: 'Indonesia',
      description:
          """Kebodohan terbesarku adalah membantu dirinya untuk mendapatkan orang yang dia cintai. Dan, kebohongan terbesarku adalah pura-pura baik-baik saja akan semua itu.\nNovel ini menceritakan Eugenia Thana yang memiliki perasaan kepada seorang laki-laki yang bersikap dingin. Namun, cintanya bertepuk sebelah tangan karena laki-laki tersebut menyukai perempuan lain. Meski begiu, Thana tetap berusaha untuk mendapatkan hati dari laki-laki yang dingin dan angkuh tersebut. Melalui dukungan serta ejekan dari teman-temannya, Thana tetap mencoba supaya laki-laki tersebut melihat dan mencintainya.""",
      price: 74400,
      yearRelease: 2023,
      page: 320,
      category: Category.novel,
    ),
  ];
}
