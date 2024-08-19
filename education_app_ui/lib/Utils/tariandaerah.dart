import 'package:flutter/material.dart';
import 'package:education_app_ui/home_scree.dart';

class TarianadatScreen extends StatefulWidget {
  const TarianadatScreen({Key? key}) : super(key: key);

  @override
  _TarianadatScreenState createState() => _TarianadatScreenState();
}

class _TarianadatScreenState extends State<TarianadatScreen> {
  List<Map<String, String>> houses = [
    {
      'Asal': 'Nangroe Aceh Darussalam',
      'Nama': 'Tari Saman',
      'Deskripsi': 'Tarian ini merupakan salah satu kebanggaan budaya Aceh yang populer di seluruh Indonesia. Tari Saman biasanya ditarikan oleh sekelompok penari yang duduk bersila di atas alas tikar. Gerakan tangan, kepala, dan badan dilakukan secara cepat dan sinkron, disertai dengan nyanyian dan tepukan tangan. Tarian ini memiliki nilai-nilai kebersamaan, ketekunan, dan kebersihan.',
      'Gambar': 'assets/TarianAdat/saman.jpg',
    },
    {
      'Asal': 'Sumatera Utara',
      'Nama': 'Tari Tor-Tor',
      'Deskripsi': 'Tari Tor-Tor merupakan tarian sakral suku Batak yang biasa ditampilkan dalam berbagai acara adat, seperti pernikahan, pemakaman, atau upacara keagamaan. Gerakan dalam tarian ini menggambarkan kehidupan sehari-hari, seperti aktivitas bercocok tanam atau berburu. Musik yang mengiringi tarian ini biasanya berasal dari alat musik tradisional gondang.',
      'Gambar': 'assets/TarianAdat/tortor.jpg',
    },
    {
      'Asal': 'Sumatera Barat',
      'Nama': 'Tari Piring',
      'Deskripsi': 'Tari Piring adalah tarian tradisional Minangkabau yang menampilkan gerakan menarik piring dan gelas dengan irama musik yang dinamis. Tarian ini sering dijadikan sebagai simbol kekayaan budaya Minangkabau dan sering ditampilkan dalam berbagai upacara adat, pernikahan, atau festival budaya.',
      'Gambar': 'assets/TarianAdat/piring.jpg',
    },
    {
      'Asal': 'Sumatera Selatan',
      'Nama': 'Tari Tanggai',
      'Deskripsi': 'Tari tanggai adalah tarian tradisional Sumatera Selatan. Tari tanggai berfungsi sebagai tari persembahan bagi tamu undangan. Gerak tangan yang lentur menunjukkan rasa terima kasih atas kedatangannya.Tarian tradisional ini diiringi lagu Gending Sriwijaya.',
      'Gambar': 'assets/TarianAdat/tanggai.jpg',
    },
    {
      'Asal': 'Riau',
      'Nama': 'Tari Zapin',
      'Deskripsi': 'Tari Zapin merupakan tarian tradisional Melayu Riau yang ditampilkan dalam berbagai acara adat, pertunjukan seni, dan festival budaya. Gerakan dalam tarian ini menggambarkan keceriaan dan semangat hidup masyarakat Melayu Riau. Tarian ini sering diiringi oleh musik tradisional seperti gambus dan rebana.',
      'Gambar': 'assets/TarianAdat/zapin.jpg',
    },
    {
      'Asal': 'Kepulauan Riau',
      'Nama': 'Tari Malemang',
      'Deskripsi': 'Tarian malemang berasal dari Kepulauan Riau. Wilayah asal bahasa Indonesia ini diperkirakan sudah mengenal tari malemang sejak abad ke-12. Di Kepri, tari malemang semula merupakan persembahan bagi raja yang beristirahat. Setelah kerajaan runtuh, tari malemang berubah fungsi menjadi hiburan rakyat.',
      'Gambar': 'assets/TarianAdat/malemang.jpg',
    },
    {
      'Asal': 'Jambi',
      'Nama': 'Tari Sekapur Sirih',
      'Deskripsi': 'Tari sekapur sirih adalah tarian tradisional asal Jambi. Seperti judulnya, tari ini berfungsi sebagai persembahan dan penyambutan tamu penting. Tari sekapur sirih umumnya dibawakan penari perempuan dan laki-laki, dengan di antaranya bertugas sebagai pengawal dan pembawa payung.',
      'Gambar': 'assets/TarianAdat/sekapursirih.jpg',
    },
    {
      'Asal': 'Bengkulu',
      'Nama': 'Tari Andun',
      'Deskripsi': 'Tarian andun adalah tari tradisional Bengkulu yang dibawakan saat pesta pernikahan. Tari ini berfungsi sebagai wadah perkenalan muda-mudi dengan iringan kulintang.',
      'Gambar': 'assets/TarianAdat/andun.jpg',
    },
    {
      'Asal': 'Lampung',
      'Nama': 'Tari Sembah',
      'Deskripsi': 'Tari sembah adalah tarian tradisional asal Lampung. Tari yang dikenal juga dengan sebutan tari sigeh pengunten ini dibawakan sebagai bentuk sambutan dan penghormatan kepada tamu.',
      'Gambar': 'assets/TarianAdat/sembah.jpg',
    },
    {
      'Asal': 'Bangka Belitung',
      'Nama': 'Tari Campak',
      'Deskripsi': 'Tari campak adalah tarian tradisional asal Bangka Belitung yang berisi berbalas pantun. Tari ini berfungsi sebagai hiburan penyambutan tamu, pernikahan, rupa suka cita anak muda, dan rasa syukur atas hasil panen. ',
      'Gambar': 'assets/TarianAdat/campak.jpg',
    },
    {
      'Asal': 'DKI Jakarta',
      'Nama': 'Tari Blantek',
      'Deskripsi': 'Blantek, yang biasa menjadi tarian pembuka merupakan tarian yang terinspirasi dari seni bela diri Pencak Silat. Gerakan yang cepat, berenergi dan luwes mengekspresikan semangat pantang menyerah, yang harus selalu dikembangkan di masa pandemi ini.',
      'Gambar': 'assets/TarianAdat/blantek.jpg',
    },
    {
      'Asal': 'Jawa Barat',
      'Nama': 'Tari Jaipong',
      'Deskripsi': 'Merupakan tarian tradisional yang berasal dari daerah Jawa Barat. Tarian ini menampilkan gerakan yang energetik dan atraktif, yang dipadukan dengan musik khas dan pakaian yang berwarna-warni. Jaipong sering dipentaskan dalam berbagai acara budaya dan festival di Jawa Barat.',
      'Gambar': 'assets/TarianAdat/jaipong.jpg',
    },
    {
      'Asal': 'Banten',
      'Nama': 'Tari Cokek',
      'Deskripsi': 'Tari cokek adalah tarian tradisional Banten yang didampingi dengan permainan pencak silat oleh laki-laki. Gerakan penarinya sendiri perlahan-lahan dan dibawakan perempuan. Konon, sebutan cokek berasal dari nama Tan Sio Kek, orang yang memperkenalkan tarian ini pertama kali.',
      'Gambar': 'assets/TarianAdat/cokek.jpg',
    },
    {
      'Asal': 'Jawa Tengah ',
      'Nama': 'Tari Gambyong',
      'Deskripsi': 'Tari gambyong semula dibawakan pada upacara ritual pertanian yang bertujuan untuk kesuburan padi dan perolehan panen melimpah. Para penari gambyong menjadi representasi dewi padi atau Dewi Sri.',
      'Gambar': 'assets/TarianAdat/gambyong.jpg',
    },
    {
      'Asal': 'DI Yogyakarta',
      'Nama': 'Tari Serimpi',
      'Deskripsi': 'Tari serimpi adalah tari tradisional dengan penari yang mewakili air, api, angin, dan tanah, serta empat penjuru mata angin. Tari sakral ini dipentaskan di lingkungan keraton.',
      'Gambar': 'assets/TarianAdat/serimpi.jpg',
    },
    {
      'Asal': 'Jawa Timur',
      'Nama': 'Tari Remo',
      'Deskripsi': 'Tari Remo adalah salah satu tarian untuk penyambutan tamu agung, ditampilkan baik oleh satu atau banyak penari. Karakteristika yang paling utama dari Tari Remo adalah gerakan kaki yang rancak dan dinamis. Gerakan ini didukung dengan adanya lonceng-lonceng yang dipasang di pergelangan kaki.',
      'Gambar': 'assets/TarianAdat/remo.jpg',
    },
    {
      'Asal': 'Bali',
      'Nama': 'Tari Kecak',
      'Deskripsi': 'Merupakan tarian yang unik karena tidak menggunakan musik instrumen, melainkan hanya menggunakan suara "cak" yang dihasilkan oleh para penari. Tarian ini sering menggambarkan cerita dari epik Ramayana dan dipentaskan di berbagai tempat di Bali.',
      'Gambar': 'assets/TarianAdat/kecak.jpg',
    },
    {
      'Asal': 'Nusa Tenggara Barat (NTB)',
      'Nama': 'Tari Mpaa Lenggo',
      'Deskripsi': 'Merupakan tarian yang berasal dari suku Sasak di Lombok. Tarian ini menampilkan gerakan dinamis dan ritmis, dengan irama musik gendang yang khas.',
      'Gambar': 'assets/TarianAdat/mpaa.jpg',
    },
    {
      'Asal': 'Nusa Tenggara Timur (NTT)',
      'Nama': 'Tari Caci',
      'Deskripsi': 'Tari caci adalah tari tradisional NTT yang merupakan tari perang yang menggambarkan laga bersenjata cambuk dan perisai.',
      'Gambar': 'assets/TarianAdat/caci.jpg',
    },
    {
      'Asal': 'Kalimantan Barat',
      'Nama': 'Tari Monong',
      'Deskripsi': 'Tari monong adalah tarian tradisional Kalimantan Barat yang semula berfungsi sebagai tolak bala atau penyembuhan. Kini, tari monong juga dipentaskan secara umum.',
      'Gambar': 'assets/TarianAdat/monong.jpg',
    },
    {
      'Asal': 'Kalimantan Tengah',
      'Nama': 'Tari Mandau Talawang',
      'Deskripsi': 'Tarian tradisional ini menggunakan properti mandau atau talawang (perisai). Tari mandau talawang dipersembahkan saat prosesi penerimaan tamu maupun upacara adat. ',
      'Gambar': 'assets/TarianAdat/mandau.jpg',
    },
    {
      'Asal': 'Kalimantan Selatan',
      'Nama': 'Tari Baksa Kembang',
      'Deskripsi': 'Tari baksa kembang berasal dari Keraton Banjar, Kalimantan Selatan. Tari ini berfungsi dalam penyambutan tamu penting. Penarinya sendiri umumnya adalah putri-putri Keraton Banjar yang juga bertugas memberikan untaian bunga.',
      'Gambar': 'assets/TarianAdat/baksa.jpg',
    },
    {
      'Asal': 'Kalimantan Timur',
      'Nama': 'Tari Burung Enggang',
      'Deskripsi': 'Merupakan tarian yang menggambarkan keindahan burung Enggang yang dilambangkan dengan gerakan-gerakan yang anggun dan indah. Tarian ini sering dipentaskan dalam berbagai acara adat dan budaya di Kalimantan Timur.',
      'Gambar': 'assets/TarianAdat/enggang.jpg',
    },
    {
      'Asal': 'Kalimantan Utara',
      'Nama': 'Tari Magunatip',
      'Deskripsi': 'Tarian magunatip berasal dari Tarakan dan Malinau, Kalimantan Utara. Semula, tari tradisional ini berfungsi untuk melatih ketangkasan kaki dalam melompat dan menghindari rintangan. Kini, tari magunatip menjadi pertunjukan hiburan bagi muda-mudi.',
      'Gambar': 'assets/TarianAdat/magunatip.jpg',
    },
    {
      'Asal': 'Sulawesi Barat',
      'Nama': 'Tari Bamba Manurung',
      'Deskripsi': 'Tari bamba manurung berasal dari Mamuju, Sulawesi Barat. Gadis-gadis penari memegang kipas untuk menarikan tari tradisional ini di pesta-pesta adat Mamuju.',
      'Gambar': 'assets/TarianAdat/bamba.jpg',
    },
    {
      'Asal': 'Sulawesi Utara',
      'Nama': 'Tari Kabasaran',
      'Deskripsi': 'Merupakan tarian adat Minahasa yang menampilkan gerakan yang kuat dan penuh semangat, sering diiringi oleh musik tradisional Minahasa seperti kolintang dan tifa. Tari ini semula merupakan tari perang yang menggambarkan sosok prajurit berpakaian merah, garang, dan tengah berkelahi dengan iringan tambur.',
      'Gambar': 'assets/TarianAdat/kabasaran.jpg',
    },
    {
      'Asal': 'Sulawesi Tengah',
      'Nama': 'Tari Dero',
      'Deskripsi': 'Tarian tradisional ini berasal dari Poso, Sulawesi Tengah. Penari perempuan dan laki-laki membentuk lingkaran dan berpegangan tangan, lalu menari dengan iringan lagu, pantun, gendang, dan gong.',
      'Gambar': 'assets/TarianAdat/dero.jpeg',
    },
    {
      'Asal': 'Sulawesi Tenggara',
      'Nama': 'Tari Dinggu',
      'Deskripsi': 'Tarian tradisional dari Sulawesi Tenggara ini berfungsi sebagai tarian hiburan yang mewakili semangat gotong royong menumbuk padi. Gerak alu pada lesung mewarnai tarian ini.',
      'Gambar': 'assets/TarianAdat/dinggu.jpg',
    },
    {
      'Asal': 'Sulawesi Selatan',
      'Nama': 'Tari Pakarena',
      'Deskripsi': 'Merupakan tarian adat Makassar yang menampilkan gerakan yang anggun dan penuh makna, sering diiringi oleh musik tradisional Makassar seperti gambus dan kendang.',
      'Gambar': 'assets/TarianAdat/pakarena.jpg',
    },
    {
      'Asal': 'Gorontalo',
      'Nama': 'Tari Dana-Dana',
      'Deskripsi': 'Tari Dana-Dana biasanya ditampilkan oleh sekelompok penari yang memakai pakaian tradisional, seringkali diiringi oleh musik tradisional Gorontalo seperti kolintang dan tifa. Gerakan dalam tarian ini melibatkan gerakan yang lemah-lembut dan anggun, yang menggambarkan keindahan alam, kegembiraan, dan semangat gotong royong masyarakat Gorontalo.',
      'Gambar': 'assets/TarianAdat/dana.jpg',
    },
    {
      'Asal': 'Maluku',
      'Nama': 'Tari Cakalele',
      'Deskripsi': 'Merupakan tarian perang yang menampilkan gerakan yang energik dan semangat, sering kali diiringi oleh nyanyian dan musik yang menggambarkan perjuangan rakyat Maluku dalam membela kebenaran dan melawan penjajah.',
      'Gambar': 'assets/TarianAdat/cakalele.jpg',
    },
    {
      'Asal': 'Maluku Utara',
      'Nama': 'Tari Kapita',
      'Deskripsi': 'Tarian tradisional ini berfungsi sebagai wujud perlindungan saat perang dan dari musuh. Tari kapita sendiri ini berlatar belakang tentang cerita perang pada zaman penjajahan untuk merebutkan wilayah-wilayah kekuasaan Sultan Tidore.',
      'Gambar': 'assets/TarianAdat/kapita.jpeg',
    },
    {
      'Asal': 'Papua Barat',
      'Nama': 'Tari Suanggi',
      'Deskripsi': 'Tarian suanggi merupakan tari tradisional yang menceritakan suasana magis. Tari ini berawal dari kisah pasangan yang ditinggal karena mengalami fenomena supranatural.',
      'Gambar': 'assets/TarianAdat/suanggi.jpg',
    },
    {
      'Asal': 'Papua',
      'Nama': 'Tari Pangkur Sagu',
      'Deskripsi': 'Tarian pangkur sagu merupakan tari tradisional Papua yang menceritakan tentang mata pencaharian masyarakat dengan membuat mengolah sagu.',
      'Gambar': 'assets/TarianAdat/pangkur.jpg',
    },
    {
      'Asal': 'Papua Tengah',
      'Nama': 'Tari Yospan',
      'Deskripsi': 'Tari Yospan adalah jenis tarian Kontemporer yang menggambarkan pergaulan atau persahabatan pada kaum muda-mudi Biak Numfor. Tarian ini muncul pada tahun 1960 yang kemudian sempat menjadi bagian dari senam kesehatan jasmani (SKJ) di sejumlah instansi pemerintahan. Yospan adalah bentuk akronim dari kata Yosim Pancar.',
      'Gambar': 'assets/TarianAdat/yospan.jpg',
    },
    {
      'Asal': 'Papua Pegunungan',
      'Nama': 'Tari Yospan',
      'Deskripsi': 'Tari Yospan adalah jenis tarian Kontemporer yang menggambarkan pergaulan atau persahabatan pada kaum muda-mudi Biak Numfor. Tarian ini muncul pada tahun 1960 yang kemudian sempat menjadi bagian dari senam kesehatan jasmani (SKJ) di sejumlah instansi pemerintahan. Yospan adalah bentuk akronim dari kata Yosim Pancar.',
      'Gambar': 'assets/TarianAdat/yospan.jpg',
    },
    {
      'Asal': 'Papua Selatan',
      'Nama': 'Tari Yospan',
      'Deskripsi': 'Tari Yospan adalah jenis tarian Kontemporer yang menggambarkan pergaulan atau persahabatan pada kaum muda-mudi Biak Numfor. Tarian ini muncul pada tahun 1960 yang kemudian sempat menjadi bagian dari senam kesehatan jasmani (SKJ) di sejumlah instansi pemerintahan. Yospan adalah bentuk akronim dari kata Yosim Pancar.',
      'Gambar': 'assets/TarianAdat/yospan.jpg',
    },
    {
      'Asal': 'Papua Barat Daya',
      'Nama': 'Tari Yospan',
      'Deskripsi': 'Tari Yospan adalah jenis tarian Kontemporer yang menggambarkan pergaulan atau persahabatan pada kaum muda-mudi Biak Numfor. Tarian ini muncul pada tahun 1960 yang kemudian sempat menjadi bagian dari senam kesehatan jasmani (SKJ) di sejumlah instansi pemerintahan. Yospan adalah bentuk akronim dari kata Yosim Pancar.',
      'Gambar': 'assets/TarianAdat/yospan.jpg',
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
        'Tarian Daerah',
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