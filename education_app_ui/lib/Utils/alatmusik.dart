import 'package:flutter/material.dart';
import 'package:education_app_ui/home_scree.dart';

class AlatmusikScreen extends StatefulWidget {
  const AlatmusikScreen({Key? key}) : super(key: key);

  @override
  _AlatmusikScreenState createState() => _AlatmusikScreenState();
}

class _AlatmusikScreenState extends State<AlatmusikScreen> {
  List<Map<String, String>> houses = [
    {
      'Asal': 'Nangroe Aceh Darussalam',
      'Nama': 'Alat Musik Serune Kalee',
      'Deskripsi': 'Alat musik tradisional dari Aceh adalah serune kale. Serune kale sangat populer di daerah Pidie, Aceh Utara, Aceh Besar dan Aceh Barat. Alat musik ini kerap kali dimainkan bersamaan dengan Rapai dan Gendrang pada acara-acara hiburan, tari-tarian atau penyambutan tamu kehormatan. Bahan dasar sarune kale ini berupa kayu, kuningan dan tembaga. Bentuk alat musiknya hampir menyerupai seruling bambu. Fungsinya sebagai pemanis atau penghias musik tradisional Aceh.',
      'Gambar': 'assets/AlatMusik/serune.png',
    },
    {
      'Asal': 'Sumatera Utara',
      'Nama': 'Alat Musik Oloan',
      'Deskripsi': 'Oloan adalah salah satu gung berpencu yang terdapat pada Batak Toba. Oloan dimainkan dengan cara dipukul pencunya dengan stick yang terbuat dari kayu dan pangkal ujungnya dilapisi dengan kain atau karet.. Oloan ini terbuat dari bahan metal/perunggu dengan sistem cetak. Untuk membedakannya dengan suara ogung lainnya maka tuning yang dilakukan adalah dengan menempelkan getah puli (sejenis pohon enau) dibagian dalam gung tersebut. Semakin banyak getah puli tersebut, maka semakin rendahlah suara gung tersebut. Gung oloan berukuran garis menengah lebih kurang 32,5 cm, tinggi 7 cm, dan bendulan (pencu) di tengah dengan diameter lebih kurang 10 cm.',
      'Gambar': 'assets/AlatMusik/oloan.jpg',
    },
    {
      'Asal': 'Sumatera Barat',
      'Nama': 'Alat Musik Suluang',
      'Deskripsi': 'Saluang adalah alat musik tradisional dari Minangkabau, Sumatera Barat, Indonesia. Ini adalah jenis seruling bambu yang dimainkan dengan cara ditiup. Saluang memiliki panjang sekitar 30-50 cm dan terdiri dari tiga atau empat lubang untuk menghasilkan nada-nada yang berbeda. Biasanya, saluang dimainkan bersama dengan talempong, sebuah alat musik perkusi tradisional dari Minangkabau. Suara yang dihasilkan oleh saluang memiliki keindahan yang khas dan sering digunakan dalam berbagai acara adat, perayaan, dan pertunjukan seni tradisional Minangkabau.',
      'Gambar': 'assets/AlatMusik/suluang.jpg',
    },
    {
      'Asal': 'Sumatera Selatan',
      'Nama': 'Alat Musik Kenong',
      'Deskripsi': 'Kenong adalah salah satu alat musik tradisional yang berasal dari Sumatera Selatan, Indonesia. Ini adalah logam berbentuk mangkuk dengan permukaan datar yang dipukul dengan palu atau alat pemukul khusus lainnya. Kenong biasanya memiliki ukuran yang bervariasi dan diposisikan di bagian tengah ansambel gamelan. ',
      'Gambar': 'assets/AlatMusik/akordeon.jpg',
    },
    {
      'Asal': 'Riau',
      'Nama': 'Alat Musik Gambus',
      'Deskripsi': 'Gambus adalah alat musik tradisional yang sering dikaitkan dengan budaya Riau, Indonesia. Gambus merupakan jenis alat musik petik yang mirip dengan gitar, tetapi memiliki bentuk yang sedikit berbeda. Biasanya, gambus memiliki leher yang panjang dan ramping, serta bagian badan yang berbentuk bulat atau mirip dengan pear. Alat musik ini memiliki senar-senar yang terbuat dari nilon atau kawat, yang dipetik dengan menggunakan jari atau pick.',
      'Gambar': 'assets/AlatMusik/gambus.jpg',
    },
    {
      'Asal': 'Kepulauan Riau',
      'Nama': 'Alat Musik Gendang Panjang',
      'Deskripsi': 'Gendang Panjang adalah salah satu alat musik tradisional yang berasal dari Kepulauan Riau, Indonesia. Alat musik ini termasuk dalam kelompok alat musik pukul atau perkusi. Gedang Panjang terbuat dari bahan-bahan alami seperti kayu atau bambu yang dipahat dengan teliti untuk membentuk rongga yang panjang dan sempit. Alat musik ini dimainkan dengan cara dipukul menggunakan alat pemukul, seperti tongkat atau kayu kecil lainnya.',
      'Gambar': 'assets/AlatMusik/gendangpanjang.jpg',
    },
    {
      'Asal': 'Jambi',
      'Nama': 'Alat Musik Cangor',
      'Deskripsi': 'Salah satu alat musik terkenal dari Jambi adalah Cangor. Cangor termasuk ke dalam jenis musik idio-kordofon. Alat musik ini terbuat dari bahan bambu yang dipotong dengan panjang sekitar 40 cm, dan pada bagian kulit bambu dicungkil dan diganjal dengan bantalan kayu. Cangor dimainkan dengan cara dipukul dengan menggunakan dua tongkat yang terbuat dari bahan rotan. Alat musik ini biasa dimainkan oleh para petani saat sedang istirahat setelah mengurus kebun di ladang.',
      'Gambar': 'assets/AlatMusik/akordeon.jpg',
    },
    {
      'Asal': 'Bengkulu',
      'Nama': 'Alat Musik Dol',
      'Deskripsi': 'Dol Bengkulu adalah sebuah alat musik tradisional yang berasal dari daerah Bengkulu, Indonesia. Dol Bengkulu merupakan jenis alat musik pukul yang terbuat dari bahan kayu. Bentuknya mirip dengan gendang, tetapi ukurannya lebih kecil. Alat musik ini memiliki dua bagian utama, yaitu badan yang terbuat dari kayu dan membran yang terbuat dari kulit binatang, seperti kulit kambing atau sapi, yang direntangkan di salah satu sisi badan alat musik. Dol Bengkulu dimainkan dengan cara dipukul menggunakan tangan atau alat pemukul kecil.',
      'Gambar': 'assets/AlatMusik/dol.jpg',
    },
    {
      'Asal': 'Lampung',
      'Nama': 'Alat Musik Bende',
      'Deskripsi': 'Lampung memiliki beberapa jenis alat musik daerah yang unik dan khas. Salah satu contohnya bende yang termasuk dalam jenis alat musik idiofon. Bende memiliki suara khas yang ditimbulkan ketika alat musik ini dipukul. Bende terbuat dari tembaga atau perunggu. Bentuknya bulat dan pada bagian tengahnya sedikit menonjol ke luar.',
      'Gambar': 'assets/AlatMusik/bende.jpg',
    },
    {
      'Asal': 'Bangka Belitung',
      'Nama': 'Alat Musik Gendang Melayu',
      'Deskripsi': 'Gendang Melayu Bangka Belitung biasanya terdiri dari dua buah gendang yang disebut "gendang ibu" dan "gendang anak". Gendang ibu memiliki ukuran yang lebih besar dan menghasilkan suara yang lebih rendah, sementara gendang anak memiliki ukuran yang lebih kecil dengan suara yang lebih tinggi. Kedua gendang ini dimainkan secara bersamaan dengan menggunakan tangan atau alat pemukul.',
      'Gambar': 'assets/AlatMusik/gendangmelayu.jpg',
    },
    {
      'Asal': 'DKI Jakarta',
      'Nama': 'Alat Musik Tanjidor',
      'Deskripsi': 'Tanjidor adalah musik atau orkes rakyat Betawi yang menggunakan alat musik barat terutama alat musik tiup. Biasa disingkat tanji. Tanji artinya menabuh. Karena yang ditabuh adalah tambur yang berbuji dor dor dor, maka digabunglah menjadi tanjidor.',
      'Gambar': 'assets/AlatMusik/tanjidor.jpg',
    },
    {
      'Asal': 'Jawa Barat',
      'Nama': 'Alat Musik Angklung',
      'Deskripsi': 'Alat musik tradisional terkenal di Jawa Barat adalah angklung. Alat musik tradisional ini terbuat dari bambu. Angklung dimainkan dengan cara digoyangkan. Setelah digoyangkan maka bunyinya akan keluar. Bunyi ini terjadi karena adanya benturan badan pipa bambu. Bunyi yang bergetar menghasilkan susunan nada 2, 3 sampai dengan 4 nada dalam setiap ukuran baik besar maupun kecil.',
      'Gambar': 'assets/AlatMusik/angklung.jpg',
    },
    {
      'Asal': 'Banten',
      'Nama': 'Alat Musik Gendang Dogdog',
      'Deskripsi': 'Provinsi Banten memiliki alat musik bernama gendang dogdog yang dimainkan dengan cara ditabuh seperti bedug. Alat musik ini terbuat dari kayu berbentuk silinder memanjang. Bagian tengahnya dibuat berongga, di mana salah satu sisinya ditutup dengan membran dari kulit kambing atau sapi.',
      'Gambar': 'assets/AlatMusik/dogdog.jpeg',
    },
    {
      'Asal': 'Jawa Tengah ',
      'Nama': 'Alat Musik Gamelan',
      'Deskripsi': 'Gamelan adalah salah satu alat musik tradisional Indonesia yang berasal dari Jawa Tengah. Alat musik ini diduga sudah ada di Jawa sejak tahun 404 Masehi, dilihat dari adanya penggambaran masa lalu di relief Candi Borobudur dan Prambanan. Gamelan merupakan seperangkat instrumen yang dibunyikan dari beberapa alat musik, seperti di antaranya gambang, gendang, dan gong. Perpaduan ini memiliki sistem nada non diatonis yang menyajikan suara indah jika dimainkan secara harmonis.',
      'Gambar': 'assets/AlatMusik/gamelan.jpg',
    },
    {
      'Asal': 'DI Yogyakarta',
      'Nama': 'Alat Musik Gamelan',
      'Deskripsi': 'Gamelan adalah ansambel atau perpaduan beberapa alat musik, seperti diantaranya gambang, gendang, dan gong. Perpaduan ini memiliki sistem nada non diatonis yang menyajikan suara indah jika dimainkan secara harmonis. Kata gamelan sendiri berasal dari bahasa Jawa Gamel, yang artinya memukul atau menabuh.',
      'Gambar': 'assets/AlatMusik/gamelan.jpeg',
    },
    {
      'Asal': 'Jawa Timur',
      'Nama': 'Alat Musik Gamelan',
      'Deskripsi': 'Gamelan adalah ansambel musik tradisional Jawa yang terdiri dari berbagai jenis instrumen, termasuk gong, kenong, saron, slenthem, dan lain-lain. Setiap wilayah di Jawa memiliki ciri khasnya sendiri dalam gaya gamelan, dan demikian pula dengan Jawa Timur. Gamelan Jawa Timuran memiliki karakteristik tertentu dalam penggunaan pola nada dan ritme.',
      'Gambar': 'assets/AlatMusik/gamelan.jpg',
    },
    {
      'Asal': 'Bali',
      'Nama': 'Alat Musik Genceng',
      'Deskripsi': 'Genceng atau Ceng-ceng terbuat dari logam yang berbentuk seperti piringan atau cakram yang berukuran tidak terlalu lebar, mirip seperti simbal. Ceng-ceng sendiri mendapatkan namanya karena bunyi yang dihasilkan saat beradu. Ceng-ceng dimainkan dengan cara diadu satu dengan yang lain sehingga menimbulkan bunyi nyaring.',
      'Gambar': 'assets/AlatMusik/genceng.jpeg',
    },
    {
      'Asal': 'Nusa Tenggara Barat (NTB)',
      'Nama': 'Alat Musik Genggong',
      'Deskripsi': 'Alat musik ini juga dikenal dengan sebutan "genggong lombok" atau "genggong sasak" karena popularitasnya di pulau Lombok, salah satu bagian dari NTB. Genggong terbuat dari bahan-bahan sederhana seperti bambu dan daun aren. Alat musik ini memiliki bagian utama yang disebut "gergaji", yang terbuat dari sepotong bambu kecil yang digores pada salah satu sisinya. Di ujung gergaji, terdapat seutas tali atau benang yang diikatkan. Saat dimainkan, tali ini ditarik dengan satu tangan sementara ujung gergaji ditempatkan di mulut oleh pemain. Ketika tali ditarik dan dilepaskan, gergaji akan bergetar dan menghasilkan suara yang khas.',
      'Gambar': 'assets/AlatMusik/genggong.jpg',
    },
    {
      'Asal': 'Nusa Tenggara Timur (NTT)',
      'Nama': 'Alat Musik Sasando',
      'Deskripsi': 'Dari Nusa Tenggara Timur (NTT), memiliki alat musik tradisional bernama sasando. Sasando memiliki bentuk yang sangat unik dan berbeda dari alat musik petik lainnya yakni berbentuk tabung panjang. Sasando sendiri terbuat dari bambu, kayu, paku penyangga, senar string, dan daun lontar. Cara memainkan sasando adalah dengan menggunakan kedua tangan untuk memetik dawainya. Seperti bermain gitar.',
      'Gambar': 'assets/AlatMusik/sasando.jpg',
    },
    {
      'Asal': 'Kalimantan Barat',
      'Nama': 'Alat Musik Tuma',
      'Deskripsi': 'Salah satu alat musik tradisional khas Kalimantan Barat ialah tuma. Tuma memiliki panjang sekitar 1,25 meter, sehingga sering disebut sebagai gendang panjang. Untuk ukuran diameternya berkisar 0,15 meter. Alat musik tradisional ini dimainkan dengan cara dipukul atau ditabuh dengan telapak tangan.',
      'Gambar': 'assets/AlatMusik/tuma.jpg',
    },
    {
      'Asal': 'Kalimantan Tengah',
      'Nama': 'Alat Musik Japen',
      'Deskripsi': 'Japen adalah alat musik tradisional Kalimantan Tengah yang bentuknya menyerupai kecapi, gitar, atau mandolin. Japen terbuat dari kayu dan dilengkapi dengan empat buah senar. Bagian badan Japen juga dihiasi dengan ornamen khas Suku dayak yang memiliki banyak makna filosofis. Ketika dawai Japen dipetik, akan menghasilkan nada yang unik namun akan terdengar sedikit mirip dengan musik kebudayaan Tionghoa',
      'Gambar': 'assets/AlatMusik/japen.jpeg',
    },
    {
      'Asal': 'Kalimantan Selatan',
      'Nama': 'Alat Musik Panting',
      'Deskripsi': 'Alat musik khas dari Kalimantan Selatan adalah panting. Alat musik panting merupakan salah satu alat musik tradisional Indonesia yang secara pemetaan tumbuh dan berkembang di daerah Tapin, Kalimantan Selatan. Panting terbuat dari kayu, kulit zat pewarna, dan senar. Kayu yang digunakan di antaranya kayu pulantan, kayu kambang, kayu jingah, kayu halaban, dan lain-lain. Sedangkan bahan kulit diambil dari kulit hewan yang hidup di hutan seperti kulit kijang, rusa, atau kulit hewan melata seperti kulit ular puraca, ular sawah, dan biawak. Panting dimainkan dengan cara dipetik.',
      'Gambar': 'assets/AlatMusik/panting.jpg',
    },
    {
      'Asal': 'Kalimantan Timur',
      'Nama': 'Alat Musik Sampe',
      'Deskripsi': 'Sampe adalah sebuah alat musik tradisional dari beberapa Orang Ulu atau "orang hulu", yang tinggal di rumah-rumah panjang di sepanjang sungai Kalimantan Timur. Sampe terbuat dari kayu Adau yang banyak terdapat di Kalimantan.  Serta menampilkan corak ukiran khas Suku Dayak. Ukiran tersebut sangat dominan dan memenuhi permukaan alat musik yang memiliki panjang sekitar 1 meter itu. Alat musik tradisional khas Kalimantan mirip dengan gitar yang memiliki dawai dan dimainkan dengan cara dipetik. ',
      'Gambar': 'assets/AlatMusik/sampe.jpg',
    },
    {
      'Asal': 'Kalimantan Utara',
      'Nama': 'Alat Musik Babun',
      'Deskripsi': 'Babun adalah alat musik yang menjadi bagian kesenian tradisional Kalimantan Utara. Alat musik babun terbuat dari kayu yang berbentuk oval atau tabung. Pada bagian tengahnya dibuat bulatan berongga, yang nantinya akan ditutup dengan kulit binatang. Sekilas, bentuk babun menyerupai gendang.',
      'Gambar': 'assets/AlatMusik/babun.jpg',
    },
    {
      'Asal': 'Sulawesi Barat',
      'Nama': 'Alat Musik Kecapi Mandar',
      'Deskripsi': 'Kecapi Mandar adalah alat musik tradisional yang berasal dari daerah Mandar, Sulawesi Barat, Indonesia. Kecapi Mandar memiliki bentuk yang mirip dengan kecapi pada umumnya, yaitu alat musik petik yang terdiri dari sejumlah senar yang direntangkan di atas resonator. Resonator biasanya terbuat dari kayu dan memiliki bentuk yang panjang dan ramping. Senar-senar tersebut ditarik dan dipetik dengan menggunakan jari atau alat pemukul khusus.',
      'Gambar': 'assets/AlatMusik/kecapi.jpg',
    },
    {
      'Asal': 'Sulawesi Utara',
      'Nama': 'Alat Musik Kulintang',
      'Deskripsi': 'Kolintang adalah alat musik tradisional yang berasal dari Sulawesi Utara, Indonesia. Kolintang terdiri dari sejumlah potongan kayu yang tersusun dalam rangkaian, dengan masing-masing potongan memiliki tinggi dan ukuran yang berbeda-beda. Potongan-potongan kayu ini dipasang di atas bingkai kayu atau bambu, dan setiap potongan memiliki senar yang direntangkan di atasnya. Senar-senar ini biasanya terbuat dari bahan logam, seperti tembaga atau besi. Alat musik kolintang dimainkan dengan cara dipukul menggunakan alat pemukul khusus, yang seringkali terbuat dari kayu atau bambu. ',
      'Gambar': 'assets/AlatMusik/kulintang.jpg',
    },
    {
      'Asal': 'Sulawesi Tengah',
      'Nama': 'Alat Musik Ganda',
      'Deskripsi': 'Mirip gendang atau gimba, namun berukuran lebih kecil dan ramping. Ganda-ganda terbuat dari kayu yang berbentuk seperti selongsong dengan dua ujung berlubang yang ditutupi kulit binatang. Alat musik ini biasanya digunakan dalam setiap upacara adat dan juga pengiring tarian khas Sulawesi Tengah.',
      'Gambar': 'assets/AlatMusik/ganda.jpg',
    },
    {
      'Asal': 'Sulawesi Tenggara',
      'Nama': 'Alat Musik Ladolado',
      'Deskripsi': 'Ladolado tergolong sebagai alat musik yang dimainkan oleh masyarakat di Sulawesi Tenggara. Bentuk ladolado hampir mirip seperti gambus atau gitar. Ladolado mempunyai empat buah senar yang dikaitkan ke bagian bagian bawahnya. Alat musik ini juga mempunyai pemutar kayu yang berada di bagian atas untuk menetapkan tingkat ketegangan senar supaya bisa mengeluarkan nada yang merdu didengar. Cara memainkan ladolado dengan digesek seperti biola.',
      'Gambar': 'assets/AlatMusik/ladolado.jpg',
    },
    {
      'Asal': 'Sulawesi Selatan',
      'Nama': 'Alat Musik Keso-Keso',
      'Deskripsi': 'Alat musik ini merupakan bagian penting dari budaya Bugis dan Makassar di wilayah tersebut, dan sering digunakan dalam berbagai acara adat, upacara keagamaan, dan perayaan budaya. Keso-keso memiliki bentuk yang mirip dengan marakas atau shaker, yaitu terdiri dari sebuah wadah bulat atau silinder yang diisi dengan biji-bijian, batu kecil, atau bahan-bahan lain yang memberikan suara saat digoyangkan. Biasanya, keso-keso terbuat dari bahan alami seperti kayu atau anyaman bambu, dengan bagian tengah yang berlubang untuk mengisi bahan pengisi suara. Alat musik keso-keso dimainkan dengan cara digoyangkan atau dikocok, sehingga biji-bijian di dalamnya bergerak dan menghasilkan suara yang khas.',
      'Gambar': 'assets/AlatMusik/kesokeso.jpg',
    },
    {
      'Asal': 'Gorontalo',
      'Nama': 'Alat Musik Ganda',
      'Deskripsi': 'Ganda adalah sebuah alat musik tradisional yang berasal dari Gorontalo. Ganda memiliki bentuk yang mirip dengan gendang, tetapi ukurannya lebih kecil. Alat musik ini terbuat dari bahan kayu atau bahan logam dengan permukaan yang direntangkan kulit binatang sebagai membran untuk menghasilkan suara. Ganda dimainkan dengan cara dipukul menggunakan tangan atau alat pemukul khusus. ',
      'Gambar': 'assets/AlatMusik/ganda.jpg',
    },
    {
      'Asal': 'Maluku',
      'Nama': 'Alat Musik Nafiri',
      'Deskripsi': 'Nafiri adalah alat musik tradisional yang berasal dari Maluku, Indonesia. Alat musik ini juga dikenal dengan sebutan "tifa" di beberapa daerah di Maluku. Nafiri umumnya terbuat dari kayu atau logam, dan memiliki bentuk yang mirip dengan terompet atau tanduk. Alat musik ini dimainkan dengan cara ditiup, serupa dengan cara memainkan terompet.',
      'Gambar': 'assets/AlatMusik/nafiri.jpeg',
    },
    {
      'Asal': 'Maluku Utara',
      'Nama': 'Alat Musik Fu',
      'Deskripsi': 'Alat musik Fu merupakan alat musik asal Maluku Utara yang terbuat dari kerang. Alat musik ini dimainkan dengan cara meniup lobangnya. Selain digunakan sebagai alat musik untuk mengiringi tarian, Fu juga digunakan untuk memanggil warga.',
      'Gambar': 'assets/AlatMusik/fu.jpeg',
    },
    {
      'Asal': 'Papua Barat',
      'Nama': 'Alat Musik Guoto',
      'Deskripsi': 'Alat musik Papua barat memiliki keunikan tersendiri. Salah satu contohnya adalah guoto. Guoto adalah alat musik yang dimainkan dengan cara dipetik. Guoto terbuat dari kulit binatang lembu. Alat musik ini memiliki senar yang bisa dipetik dengan tangan.',
      'Gambar': 'assets/AlatMusik/gouto.jpg',
    },
    {
      'Asal': 'Papua',
      'Nama': 'Alat Musik Tifa',
      'Deskripsi': 'Tifa adalah alat musik tradisional yang berasal dari Papua, Indonesia. Alat musik ini merupakan salah satu alat musik perkusi yang paling penting dalam budaya Papua. Tifa terbuat dari bahan-bahan alami seperti kayu atau logam. Alat musik ini memiliki bentuk seperti drum dengan permukaan yang terbuat dari kulit binatang yang direntangkan di kedua ujungnya. Kulit binatang tersebut diikat kuat dengan tali atau pengikat lainnya untuk menciptakan suara yang keras dan jelas saat dipukul. Tifa dimainkan dengan cara dipukul menggunakan tangan atau alat pemukul khusus yang terbuat dari kayu atau bambu.',
      'Gambar': 'assets/AlatMusik/tifa.jpg',
    },
    {
      'Asal': 'Papua Tengah',
      'Nama': 'Alat Musik Kaido',
      'Deskripsi': 'Kido atau Pikon kerap digunakan oleh suku Dani Papua untuk hiburan dan menghilangkan penat. Pikon terbuat dari bambu. Panjangnya sekitar 5,2 cm. Di bagian tengahnya dilekatkan lidi penggetar dan seutas tali sehingga menghasilkan variasi bunyi. Cara memainkan pikon yakni dengan meniup bagian tengah dari bambu yang telah diberi lubang sembari menarik tali yang terhubung dengan lidi',
      'Gambar': 'assets/AlatMusik/kaido.jpg',
    },
    {
      'Asal': 'Papua Pegunungan',
      'Nama': 'Alat Musik Kaido',
      'Deskripsi': 'Kido atau Pikon kerap digunakan oleh suku Dani Papua untuk hiburan dan menghilangkan penat. Pikon terbuat dari bambu. Panjangnya sekitar 5,2 cm. Di bagian tengahnya dilekatkan lidi penggetar dan seutas tali sehingga menghasilkan variasi bunyi. Cara memainkan pikon yakni dengan meniup bagian tengah dari bambu yang telah diberi lubang sembari menarik tali yang terhubung dengan lidi',
      'Gambar': 'assets/AlatMusik/kaido.jpg',
    },
    {
      'Asal': 'Papua Selatan',
      'Nama': 'Alat Musik Tifa',
      'Deskripsi': 'Tifa adalah alat musik tradisional yang berasal dari Papua, Indonesia. Alat musik ini merupakan salah satu alat musik perkusi yang paling penting dalam budaya Papua. Tifa terbuat dari bahan-bahan alami seperti kayu atau logam. Alat musik ini memiliki bentuk seperti drum dengan permukaan yang terbuat dari kulit binatang yang direntangkan di kedua ujungnya. Kulit binatang tersebut diikat kuat dengan tali atau pengikat lainnya untuk menciptakan suara yang keras dan jelas saat dipukul. Tifa dimainkan dengan cara dipukul menggunakan tangan atau alat pemukul khusus yang terbuat dari kayu atau bambu.',
      'Gambar': 'assets/AlatMusik/tifa.jpg',
    },
    {
      'Asal': 'Papua Barat Daya',
      'Nama': 'Alat Musik Krombi',
      'Deskripsi': 'Alat musik tradisional yang terkenal dari Papua Barat Daya adalah Korambi, yang terbuat dari bambu. Krombi sendiri berasal dari suku Tehit di Kabupaten Sorong. Krombi sendiri merupakan alat musik tradisional yang digunakan untuk mengiringi kesenian dan tarian adat. Cara memainkannya dengan cara dipetik dan biasa dimainkan bersama dengan Fuu dan Tifa.',
      'Gambar': 'assets/AlatMusik/krombi.jpg',
    },
    

  ];

late PageController _pageController;

@override
void initState() {
  super.initState();
  _pageController = PageController();
}

@override
void dispose() {
  _pageController.dispose();
  super.dispose();
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(
        'Alat Musik Daerah',
        style: TextStyle(
          fontFamily: 'Pacifico', // Ganti dengan jenis font yang diinginkan untuk judul
        ),
      ),
    ),
    body: Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: _pageController,
            itemCount: houses.length,
            itemBuilder: (context, index) {
              return Card(
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        houses[index]['Asal']!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Rakkas', // Ganti dengan jenis font yang diinginkan untuk 'Asal'
                        ),
                      ),
                      SizedBox(height: 8),
                      Image.asset(
                        houses[index]['Gambar']!,
                        height: 350,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Nama: ${houses[index]['Nama']!}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Rakkas', // Ganti dengan jenis font yang diinginkan untuk 'Nama'
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Center(
                            child: Text(
                              'Deskripsi: ${houses[index]['Deskripsi']!}',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Domine', // Ganti dengan jenis font yang diinginkan untuk 'Nama'
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(8),
                child: ElevatedButton(
                  onPressed: () {
                    if (_pageController.page != 0) {
                      _pageController.previousPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: Text('Back'),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(8),
                child: ElevatedButton(
                  onPressed: () {
                    if (_pageController.page != houses.length - 1) {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: Text('Next'),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
}