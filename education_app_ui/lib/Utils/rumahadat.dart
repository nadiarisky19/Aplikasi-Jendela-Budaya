import 'package:flutter/material.dart';
import 'package:education_app_ui/home_scree.dart';

class RumahadatScreen extends StatefulWidget {
  const RumahadatScreen({Key? key}) : super(key: key);

  @override
  _RumahadatScreenState createState() => _RumahadatScreenState();
}

class _RumahadatScreenState extends State<RumahadatScreen> {
  List<Map<String, String>> houses = [
    {
      'Asal': 'Nangroe Aceh Darussalam',
      'Nama': 'Rumah Adat Krong Bade',
      'Deskripsi': 'Rumah adat Krong Bade, khas dari suku Gayo di Aceh Tengah, adalah struktur kayu yang kokoh dengan atap melengkung terbuat dari daun rumbia atau ijuk. Dengan ruangan yang luas dan terbuka, rumah ini tidak hanya berfungsi sebagai tempat tinggal, tetapi juga sebagai pusat kegiatan sosial dan keagamaan. Dihiasi dengan ornamen tradisional yang memperindah tampilannya, rumah Krong Bade menjadi lambang penting dari identitas budaya suku Gayo, yang terus dijaga dan dilestarikan oleh masyarakat setempat.',
      'Gambar': 'assets/RumahAdat/KrongBade.png',
    },
    {
      'Asal': 'Sumatera Utara',
      'Nama': 'Rumah Adat Bolon',
      'Deskripsi': 'Bolon adalah rumah adat tradisional suku Batak di Sumatera Utara, Indonesia. Rumah ini memiliki struktur kayu yang kokoh dengan atap yang melengkung dan biasanya terbuat dari daun rumbia atau ijuk. Bolon memiliki ruangan yang luas dan terbuka, seringkali dengan dua lantai, yang digunakan sebagai tempat tinggal keluarga serta untuk kegiatan sosial dan keagamaan. Rumah adat ini dihiasi dengan berbagai ukiran dan ornamen tradisional yang memperindah tampilannya. Bolon merupakan bagian penting dari warisan budaya suku Batak, yang masih dijaga dan dilestarikan oleh masyarakat setempat sebagai simbol identitas dan kebanggaan budaya mereka.',
      'Gambar': 'assets/RumahAdat/Bolon.png',
    },
    {
      'Asal': 'Sumatera Barat',
      'Nama': 'Rumah Adat Gadang',
      'Deskripsi': 'Gadang adalah rumah adat tradisional masyarakat Minangkabau di Sumatera Barat, Indonesia. Rumah gadang memiliki ciri khas atap yang melengkung ke atas dengan hiasan berbentuk tanduk kerbau di bagian ujungnya, yang melambangkan kemakmuran dan kejayaan. Struktur bangunan gadang terbuat dari kayu yang kokoh dan biasanya memiliki ruangan yang luas dengan lantai yang tinggi. Rumah gadang digunakan sebagai tempat tinggal keluarga besar dan seringkali menjadi pusat kegiatan sosial dan keagamaan masyarakat Minangkabau. Keberadaan rumah gadang juga menjadi lambang identitas budaya dan kebanggaan warisan nenek moyang yang dijaga dengan baik oleh masyarakat setempat.',
      'Gambar': 'assets/RumahAdat/Gadang.png',
    },
    {
      'Asal': 'Sumatera Selatan',
      'Nama': 'Rumah Adat Limas',
      'Deskripsi': 'Rumah adat satu ini memiliki bentuk yang sesuai dengan namanya, yaitu menyerupai limas. Tamu yang berkunjung ke rumah ini harus singgah ke ruang atas atau teras rumah. Hal ini merupakan tradisi masyarakat Sumatera Selatan agar dapat merasakan budaya mereka, yang tampak pada ukiran di dalamnya.',
      'Gambar': 'assets/RumahAdat/Limas.png',
    },
    {
      'Asal': 'Riau',
      'Nama': 'Rumah Adat Selaso Jatuh Kembar',
      'Deskripsi': 'Selaso Jatuh Kembar adalah rumah adat tradisional suku Melayu di Provinsi Riau, Indonesia. Rumah ini memiliki ciri khas atap yang melengkung ke atas pada bagian depan dan belakang, sehingga menyerupai bentuk kembar. Struktur bangunannya terbuat dari kayu yang kokoh dengan tiang-tiang utama yang tinggi. Selaso Jatuh Kembar biasanya memiliki ruang yang luas dan terbuka, sering digunakan sebagai tempat tinggal keluarga besar serta pusat kegiatan sosial dan keagamaan. Rumah adat ini juga sering dihiasi dengan ukiran dan ornamen tradisional yang memperindah tampilannya. Keberadaan Selaso Jatuh Kembar menjadi simbol identitas budaya masyarakat Melayu Riau dan dijaga dengan baik sebagai bagian dari warisan budaya yang berharga.',
      'Gambar': 'assets/RumahAdat/SelasoJatuhKembar.png',
    },
    {
      'Asal': 'Kepulauan Riau',
      'Nama': 'Rumah Adat Atap Limas Potong',
      'Deskripsi': 'Rumah atap limas potong adalah rumah tradisional yang umum ditemui di Kepulauan Riau, Indonesia. Ciri khasnya adalah atap yang berbentuk limas dengan bagian ujungnya dipotong, membentuk bentuk segitiga. Struktur bangunannya terbuat dari kayu yang kuat, dan atapnya biasanya terbuat dari bahan alami seperti ijuk atau rumbia. Rumah ini memiliki bentuk yang simpel namun elegan, dengan ruang yang luas dan terbuka di dalamnya. Rumah atap limas potong biasanya digunakan sebagai tempat tinggal keluarga dan juga sering menjadi tempat pertemuan sosial atau kegiatan keagamaan masyarakat setempat. Keberadaannya menjadi bagian penting dari identitas budaya masyarakat Kepulauan Riau dan merupakan warisan budaya yang dijaga dengan baik.',
      'Gambar': 'assets/RumahAdat/LimasPotong.png',
    },
    {
      'Asal': 'Jambi',
      'Nama': 'Rumah Adat Panggung',
      'Deskripsi': 'Rumah Panggung Jambi adalah rumah tradisional yang dibangun di atas tiang-tiang yang kokoh, umumnya dari kayu. Struktur rumah panggung ini memungkinkan sirkulasi udara yang baik di bawah rumah, melindungi dari serangan binatang atau banjir. Ciri khasnya adalah atap yang melengkung ke atas, terbuat dari bahan alami seperti ijuk atau rumbia. Ruangan di dalamnya biasanya luas dan terbuka, sering digunakan untuk kegiatan keluarga dan sosial, serta pertemuan adat atau keagamaan masyarakat setempat. Rumah panggung Jambi merupakan bagian yang penting dari identitas budaya masyarakat Jambi dan menjadi warisan budaya yang dijaga dengan baik.',
      'Gambar': 'assets/RumahAdat/Panggung.png',
    },
    {
      'Asal': 'Bengkulu',
      'Nama': 'Rumah Adat Bubungan Lima',
      'Deskripsi': 'Bubungan Lima adalah rumah adat Bengkulu dengan atap limas berbentuk lima sisi. Terbuat dari kayu kuat dengan atap ijuk, rumah ini memiliki ruang terbuka luas dan tinggi. Digunakan untuk tempat tinggal dan pertemuan sosial, rumah Bubungan Lima menjadi bagian penting dari identitas budaya masyarakat Bengkulu.',
      'Gambar': 'assets/RumahAdat/bubunganlima.png',
    },
    {
      'Asal': 'Lampung',
      'Nama': 'Rumah Adat Nuwo Sesat',
      'Deskripsi': 'Rumah adat Provinsi Lampung memiliki nama Nuwo Sesat. Ciri khas dari rumah ini adalah bentuknya panggung dan di sisi-sisinya terdapat ornamen yang khas. Biasanya, ukuran dari rumah ini sangat besar, tetapi saat ini banyak yang membuat Rumah Nuwo Sesat berukuran lebih kecil. Namun, rumah ini tidak dibangun sebagai tempat tinggal. Sama seperti rumah adat lainnya,  Rumah Nuwo Sesat ini hanya dibangun untuk acara adat dan melakukan musyawarah.',
      'Gambar': 'assets/RumahAdat/nuwosesat.png',
    },
    {
      'Asal': 'Bangka Belitung',
      'Nama': 'Rumah Adat Rakit',
      'Deskripsi': 'Karena Bangka Belitung memiliki banyak yang tergenang air atau di tepi laut, warga setempat harus menyesuaikan diri, yaitu dengan membangun rumah di atas air juga yang dinamakan Rumah Rakit. Bentuk rumah adat provinsi Bangka belitung terlihat sangat unik karena merupakan perpaduan rumah Melayu dengan aksen arsitektur Tionghoa. Pembuatan rumah ini menggunakan bambu khusus dan bahan lainnya, yang tentunya kuat dan membuatnya dapat mengapung di atas air. Rumah Rakit ini biasa menjadi tempat tinggal warga.',
      'Gambar': 'assets/RumahAdat/rakit.png',
    },
    {
      'Asal': 'DKI Jakarta',
      'Nama': 'Rumah Adat Kebaya',
      'Deskripsi': 'Rumah Kebaya dari DKI Jakarta mengusung corak khas suku Betawi. Atap dari rumah ini menyerupai pelana terlipat dan memiliki corak-corak yang khas seperti kebaya. Rumah Kebaya memiliki teras yang luas bertujuan untuk menjadi tempat santai keluarga dan menyambut tamu.',
      'Gambar': 'assets/RumahAdat/kebaya.png',
    },
    {
      'Asal': 'Jawa Barat',
      'Nama': 'Rumah Adat Kasepuh',
      'Deskripsi': 'Rumat adat dari Jawa Barat ini merupakan peninggalan dari Kerajaan Islam di wilayah tersebut. Rumah yang sering disebut Keraton Kasepuhan ini sebenarnya merupakan perluasan dari Keraton Pakungwati. Tidak heran bila pintu utama keraton terlihat unik dan menawan.',
      'Gambar': 'assets/RumahAdat/kasepuhan.png',
    },
    {
      'Asal': 'Banten',
      'Nama': 'Rumah Adat Baduy',
      'Deskripsi': 'Rumah adat dari Banten ini merupakan tempat tinggal suku Baduy, yang merupakan suku asli di wilayah tersebut. Biasanya, suku Baduy membuat rumah ini menggunakan bambu dan ijuk untuk atapnya. Suku Baduy juga memiliki asas kekeluargaan yang amat kental. Inilah yang membuat mereka membangun rumah secara gotong royong sebagai tempat tinggal.',
      'Gambar': 'assets/RumahAdat/baduy.png',
    },
    {
      'Asal': 'Jawa Tengah ',
      'Nama': 'Rumah Adat Joglo',
      'Deskripsi': 'Rumah adat dari Jawa Tengah yang sering disebut sebagai Rumah Joglo. Biasanya, bagian depan rumah akan ada pendopo untuk menjamu tamu. Rumah adat Jawa Tengah ini memiliki empat tiang penopang. Selain itu, Anda juga bisa melihat sentuhan kejawen dari suku Jawa di sisi-sisi rumah.',
      'Gambar': 'assets/RumahAdat/joglo.png',
    },
    {
      'Asal': 'DI Yogyakarta',
      'Nama': 'Rumah Adat Joglo',
      'Deskripsi': 'Sama seperti Rumah Joglo di Jawa Tengah, rumah dari DI Yogyakarta ini juga memiliki 4 tiang penopang dan terdiri dari dua bagian, yaitu rumah induk dan rumah tambahan. Bagian induk adalah tempat utama seperti rumah pada umumnya yang memiliki pendopo, teras, dan lain-lain. Sedangkan rumah tambahan, berisi pelengkap untuk rumah induk. ',
      'Gambar': 'assets/RumahAdat/joglo2.png',
    },
    {
      'Asal': 'Jawa Timur',
      'Nama': 'Rumah Adat Joglo',
      'Deskripsi': 'Memang merupakan ciri khas dari Rumah Joglo memiliki 4 tiang penopang. Ini pula yang terlihat dari rumah adat Jawa Timur. Ciri khas dari Rumah Joglo ini terletak pada bentuk dan ukurannya yang unik dan juga makna seni yang tinggi. Umumnya, rumah joglo di daerah ini tidak hanya digunakan sebagai tempat tinggal, tetapi juga untuk menyimpan peninggalan sejarah.',
      'Gambar': 'assets/RumahAdat/joglo.png',
    },
    {
      'Asal': 'Bali',
      'Nama': 'Rumah Adat Gapura Candi Bentar',
      'Deskripsi': 
      'Rumah adat Provinsi Bali ini terdiri dari dua bagian, yaitu rumah huniannya dan juga Gapura Candi Bentar. Arah bangunan, letak, dimensi pekarangan, dan beberapa aspek lainnya, harus mengikuti aturan khusus yang berlaku sesuai aturan agama. Hal inilah yang menjadi keunikan dari Rumah Gapura Candi Bentar.',
      'Gambar': 'assets/RumahAdat/gapuracandibentar.png',
    },
    {
      'Asal': 'Nusa Tenggara Barat (NTB)',
      'Nama': 'Rumah Adat Bale',
      'Deskripsi': 'Rumah Bale Jajar ini merupakan tempat tinggal untuk suku Sasak dengan ekonomi menengah ke atas. Rumah ini memiliki dua delam Bale dan Satu Serambi yang disebut Sesangkok. Selain itu, Bale ini juga mempunyai sambi yang berguna untuk tempat menyimpan bahan makanan dan keperluan rumah lainnya.',
      'Gambar': 'assets/RumahAdat/bale.png',
    },
    {
      'Asal': 'Nusa Tenggara Timur (NTT)',
      'Nama': 'Rumah Adat Musalaki',
      'Deskripsi': 'Rumah Musalaki ini biasanya menjadi tempat tinggal bagi kepala suku atau pemimpin daerah dan juga untuk menyelenggarakan acara adat. Rumah adat ini juga menjadi tempat untuk bermusyawarah dan melakukan ritual. Uniknya, Rumah Musalaki berdiri di atas batu besar, yang berfungsi sebagai pondasinya untuk mengurangi risiko keretakan, jika terjadi bencana alam.',
      'Gambar': 'assets/RumahAdat/musalaki.png',
    },
    {
      'Asal': 'Kalimantan Barat',
      'Nama': 'Rumah Adat Panjang',
      'Deskripsi': 'Rumah adat Provinsi Kalimantan Barat ini mempunyai ukuran yang besar dan terdiri dari dua bagian, yaitu bangunan atas dan bawah. Rumah ini sangat unik karena memadukan kesan modern dan tradisional sekaligus. Arsitektur Rumah Panjang bertema budaya Suku Dayak pada beberapa sisi bangunannya.',
      'Gambar': 'assets/RumahAdat/panjang.png',
    },
    {
      'Asal': 'Kalimantan Tengah',
      'Nama': 'Rumah Adat Betang',
      'Deskripsi': 'Rumah Betang suku Dayak di Kalimantan Tengah adalah rumah adat berbentuk panjang seperti perahu terbalik, dengan atap melengkung. Terbuat dari kayu ulin dan atap ijuk, rumah ini digunakan untuk tempat tinggal keluarga besar dan kegiatan sosial serta adat. Sebagai bagian penting dari budaya suku Dayak, rumah Betang dijaga sebagai warisan budaya yang berharga.',
      'Gambar': 'assets/RumahAdat/betang.png',
    },
    {
      'Asal': 'Kalimantan Selatan',
      'Nama': 'Rumah Adat Bubungan Tinggi',
      'Deskripsi': 'Rumah Bubungan Tinggi suku Banjar di Kalimantan Selatan memiliki atap tinggi yang curam dan terbuat dari ijuk atau rumbia. Terdiri dari struktur kayu kokoh, rumah ini digunakan sebagai tempat tinggal keluarga besar dan kegiatan sosial serta keagamaan. Sebagai bagian penting dari budaya suku Banjar, rumah ini dijaga sebagai warisan budaya yang berharga.',
      'Gambar': 'assets/RumahAdat/bubungantinggi.png',
    },
    {
      'Asal': 'Kalimantan Timur',
      'Nama': 'Rumah Adat Lamin',
      'Deskripsi': 'Rumah Lamin dari Kalimantan Timur juga tidak kalah uniknya. Gaya arsitektur yang khas dan juga luas bangunannya menjadi ciri khas dari Rumah Lamin. Pada bagian atap rumah terdapat ornamen kepala naga dari kayu. Di sisi-sisi bangunannya juga terdapat ukiran atau lukisan budaya yang unik. ',
      'Gambar': 'assets/RumahAdat/lamin.png',
    },
    {
      'Asal': 'Kalimantan Utara',
      'Nama': 'Rumah Adat Baloy',
      'Deskripsi': 'Rumah Baloy adalah rumah adat suku Dayak Kenyah di Kalimantan Utara, Indonesia. Ciri khasnya adalah atap yang tinggi dan melengkung ke atas seperti tanduk kerbau. Struktur rumah ini umumnya terbuat dari kayu yang kokoh, sementara atapnya menggunakan bahan alami seperti ijuk atau rumbia. Di dalamnya, terdapat ruangan yang luas dan terbuka, sering digunakan untuk tempat tinggal keluarga besar serta pertemuan sosial dan upacara adat. Rumah Baloy menjadi simbol penting dari identitas budaya suku Dayak Kenyah dan dijaga dengan baik sebagai bagian dari warisan budaya yang berharga.',
      'Gambar': 'assets/RumahAdat/baloy.png',
    },
    {
      'Asal': 'Sulawesi Barat',
      'Nama': 'Rumah Adat Boyang',
      'Deskripsi': 'Rumah Boyang adalah rumah adat tradisional suku Mandar di Sulawesi Barat, Indonesia. Ciri khasnya adalah atap yang tinggi dan melengkung, sering kali terbuat dari ijuk atau rumbia. Struktur bangunan ini umumnya terbuat dari kayu yang kokoh. Di dalamnya, ruangannya luas dan terbuka, digunakan sebagai tempat tinggal keluarga besar serta untuk kegiatan sosial dan keagamaan masyarakat setempat. Rumah Boyang merupakan simbol penting dari identitas budaya suku Mandar dan dijaga dengan baik sebagai bagian dari warisan budaya yang berharga.',
      'Gambar': 'assets/RumahAdat/boyang.png',
    },
    {
      'Asal': 'Sulawesi Utara',
      'Nama': 'Rumah Adat Walewangko',
      'Deskripsi': 'Rumah Pewaris atau Walewangko adalah rumah adat daerah Minahasa, Provinsi Sulawesi Utara. Rumah ini dijadikan sebagai tempat penyimpanan hasil panen warga setempat. Rumah tersebut bentuknya adalah rumah panggung. Pembuatan rumah panggung pada zaman dahulu bertujuan menghindari serangan musuh dan binatang buas. Rumah pewaris memiliki 26 tiang penyangga yang menggunakan bahan kayu pada lantai dasar dan lantai 1 menggunakan bahan kayu dan beton.',
      'Gambar': 'assets/RumahAdat/walewangko.png',
    },
    {
      'Asal': 'Sulawesi Tengah',
      'Nama': 'Rumah Adat Souraja',
      'Deskripsi': 'Rumah adat Provinsi Sulawesi Tengah ini memiliki tiga ruangan di dalamnya. Ruang pertama merupakan ruang depan untuk menerima tamu. Sedangkan pada ruang kedua terdapat ruang tengah, yang juga merupakan ruang tamu. Ruangan ini punya tujuan agar penghuninya bisa saling lebih dekat. Untuk ruang terakhir, merupakan ruang rahasia.',
      'Gambar': 'assets/RumahAdat/sauraja.png',
    },
    {
      'Asal': 'Sulawesi Tenggara',
      'Nama': 'Rumah Adat Buton',
      'Deskripsi': 'Rumah Buton ini terbagi ke dalam tiga strata sesuai pemilik rumahnya. Pertama adalah Kamali (Malige), yang biasanya berfungsi sebagai tempat tinggal keluarga sultan. Kedua, Tare Pata Pale, yaitu untuk pejabat pengadilan. Terakhir, adalah Tare Talu Pale untuk masyarakat biasa.',
      'Gambar': 'assets/RumahAdat/buton.png',
    },
    {
      'Asal': 'Sulawesi Selatan',
      'Nama': 'Rumah Adat Tongkonan',
      'Deskripsi': 'Rumah Tongkonan adalah rumah adat tradisional suku Toraja di Sulawesi Selatan, Indonesia. Ciri khasnya adalah atap yang melengkung seperti perahu terbalik, terbuat dari bambu, kayu, dan atap ijuk atau seng. Struktur rumah ini didukung oleh tiang-tiang yang kuat, sering kali dihiasi dengan ukiran dan ornamen tradisional. Di dalamnya, terdapat ruang tamu yang luas serta ruang keluarga dan tidur yang terbuka. Rumah Tongkonan memiliki peran penting dalam budaya Toraja, sering digunakan untuk pertemuan adat, upacara keagamaan, dan perayaan budaya. Keberadaannya menjadi simbol identitas budaya suku Toraja dan dijaga dengan baik sebagai bagian dari warisan budaya yang berharga.',
      'Gambar': 'assets/RumahAdat/tongkonan.png',
    },
    {
      'Asal': 'Gorontalo',
      'Nama': 'Rumah Adat Dulohupa',
      'Deskripsi': 'Dulohupa adalah rumah adat tradisional suku Gorontalo di Gorontalo, Indonesia. Ciri khasnya adalah atap yang tinggi dengan struktur yang melengkung ke atas. Struktur bangunan ini biasanya terbuat dari kayu yang kuat, sementara atapnya sering menggunakan bahan alami seperti ijuk atau rumbia. Di dalamnya, ruangannya luas dan terbuka, digunakan sebagai tempat tinggal keluarga besar serta untuk kegiatan sosial dan keagamaan masyarakat setempat. Dulohupa menjadi bagian penting dari identitas budaya suku Gorontalo dan dijaga dengan baik sebagai warisan budaya yang berharga.',
      'Gambar': 'assets/RumahAdat/dulohupa.png',
    },
    {
      'Asal': 'Maluku',
      'Nama': 'Rumah Adat Baileo',
      'Deskripsi': 'Rumah adat lain yang tidak kalah unik adalah Rumah Baileo dari Maluku. Tidak ada dinding di rumah ini dan berbentuk panggung. Untuk menyangganya, ada 9 tiang di rumah ini dengan batu pamali yang melengkapinya. Biasanya, warga setempat juga menggunakan batu pamali ini sebagai tempat sesaji bagi roh leluhurnya.',
      'Gambar': 'assets/RumahAdat/baileo.png',
    },
    {
      'Asal': 'Maluku Utara',
      'Nama': 'Rumah Adat Sasadu',
      'Deskripsi': 'Sasadu adalah rumah adat tradisional suku Tobelo di Maluku Utara, Indonesia. Ciri khasnya adalah atap yang melengkung dan tinggi, sering kali terbuat dari ijuk atau seng. Struktur rumah ini biasanya terbuat dari kayu yang kuat dan didukung oleh tiang-tiang utama yang kokoh. Di dalamnya, terdapat ruangan yang luas dan terbuka, sering digunakan untuk tempat tinggal keluarga besar serta untuk kegiatan sosial dan keagamaan masyarakat setempat. Sasadu memiliki peran penting dalam budaya suku Tobelo, menjadi simbol identitas budaya dan dijaga sebagai warisan budaya yang berharga.',
      'Gambar': 'assets/RumahAdat/sasadu.png',
    },
    {
      'Asal': 'Papua Barat',
      'Nama': 'Rumah Adat Honai',
      'Deskripsi': 'Rumah Honai merupakan salah satu rumah khas Papua, namun tidak dapat ditemukan di seluruh Papua, hanya dapat temui pada suku Dani tepatnya di lembah Baliem, Kabupaten Jayawijaya, Papua. Rumah ini memiliki ciri khas yaitu berbentuk dasar lingkaran dengan rangka kayu dan beratap kerucut yang terbuat dari jerami. Tinggi rumahnya hanya mencapai 2,5 meter. Uniknya, semua bahannya berasal dari kayu dan jerami atau ilalang.',
      'Gambar': 'assets/RumahAdat/honai.png',
    },
    {
      'Asal': 'Papua',
      'Nama': 'Rumah Adat Kariwari',
      'Deskripsi': 'Kariwari adalah rumah adat asal provinsi Papua yang didiami oleh suku Tobati-Enggros. Bentuknya cenderung lebih modern dibandingkan dengan rumah adat lainnya di Pulau Papua. Atap dari rumah ini berbentuk segi delapan, serta tiga tingkat lantai yang dipercaya oleh masyarakat dapat menjaga rumah dari cuaca ekstrem. Lantai pertama dari rumah ini biasanya berfungsi untuk melatih remaja laki-laki untuk menjadi pria dewasa yang kuat dan bertanggung jawab. Kemudian, lantai kedua biasanya menjadi tempat berkumpulnya para kepala adat untuk mendiskusikan hal penting terkait desa. Terakhir, lantai tiga digunakan untuk sembahyang kepada para leluhur dan Tuhan.',
      'Gambar': 'assets/RumahAdat/kariwari.png',
    },
    {
      'Asal': 'Papua Tengah',
      'Nama': 'Rumah Adat Honai',
      'Deskripsi': 'Rumah Honai merupakan salah satu rumah khas Papua, namun tidak dapat ditemukan di seluruh Papua, hanya dapat temui pada suku Dani tepatnya di lembah Baliem, Kabupaten Jayawijaya, Papua. Rumah ini memiliki ciri khas yaitu berbentuk dasar lingkaran dengan rangka kayu dan beratap kerucut yang terbuat dari jerami. Tinggi rumahnya hanya mencapai 2,5 meter. Uniknya, semua bahannya berasal dari kayu dan jerami atau ilalang.',
      'Gambar': 'assets/RumahAdat/honai2.png',
    },
    {
      'Asal': 'Papua Pegunungan',
      'Nama': 'Rumah Adat Honai',
      'Deskripsi': 'Rumah Honai merupakan salah satu rumah khas Papua, namun tidak dapat ditemukan di seluruh Papua, hanya dapat temui pada suku Dani tepatnya di lembah Baliem, Kabupaten Jayawijaya, Papua. Rumah ini memiliki ciri khas yaitu berbentuk dasar lingkaran dengan rangka kayu dan beratap kerucut yang terbuat dari jerami. Tinggi rumahnya hanya mencapai 2,5 meter. Uniknya, semua bahannya berasal dari kayu dan jerami atau ilalang.',
      'Gambar': 'assets/RumahAdat/honai.png',
    },
    {
      'Asal': 'Papua Selatan',
      'Nama': 'Rumah Adat Honai',
      'Deskripsi': 'Rumah Honai merupakan salah satu rumah khas Papua, namun tidak dapat ditemukan di seluruh Papua, hanya dapat temui pada suku Dani tepatnya di lembah Baliem, Kabupaten Jayawijaya, Papua. Rumah ini memiliki ciri khas yaitu berbentuk dasar lingkaran dengan rangka kayu dan beratap kerucut yang terbuat dari jerami. Tinggi rumahnya hanya mencapai 2,5 meter. Uniknya, semua bahannya berasal dari kayu dan jerami atau ilalang.',
      'Gambar': 'assets/RumahAdat/honai2.png',
    },
    {
      'Asal': 'Papua Barat Daya',
      'Nama': 'Rumah Adat Honai',
      'Deskripsi': 'Rumah Honai merupakan salah satu rumah khas Papua, namun tidak dapat ditemukan di seluruh Papua, hanya dapat temui pada suku Dani tepatnya di lembah Baliem, Kabupaten Jayawijaya, Papua. Rumah ini memiliki ciri khas yaitu berbentuk dasar lingkaran dengan rangka kayu dan beratap kerucut yang terbuat dari jerami. Tinggi rumahnya hanya mencapai 2,5 meter. Uniknya, semua bahannya berasal dari kayu dan jerami atau ilalang.',
      'Gambar': 'assets/RumahAdat/honai.png',
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
        'Rumah Adat',
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