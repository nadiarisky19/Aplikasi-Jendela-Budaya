import 'package:flutter/material.dart';
import 'package:education_app_ui/home_scree.dart';

class PakaianadatScreen extends StatefulWidget {
  const PakaianadatScreen({Key? key}) : super(key: key);

  @override
  _PakaianadatScreenState createState() => _PakaianadatScreenState();
}

class _PakaianadatScreenState extends State<PakaianadatScreen> {
  List<Map<String, String>> houses = [
    {
      'Asal': 'Nangroe Aceh Darussalam',
      'Nama': 'Pakaian Adat Ulee Balang',
      'Deskripsi': 'Pakaian Adat Aceh yaitu Ulee Balang. Ada 2 jenis Ulee Balang, untuk pria disebut Linto Baro, untuk wanita disebut Daro Baro. Busana ini terdiri dari 3 bagian, yaitu atas, tengah dan bawah. Untuk Linto Baro bagian atas adalah penutup kepala atau mahkota yang disebut meukeutop. Untuk bagian tengah berupa meukasah atau baju yang tertutup pada bagian kerah dan disulam atau dijahit menggunakan benang emas. Sementara bagian bawahnya adalah celana cekak musang yang dikenal dengan istilah sileuweu. Untuk Daro Baro bentuk busana berupa baju kurung, yang desainnya dipengaruhi oleh budaya Melayu, Cina, dan Arab.',
      'Gambar': 'assets/PakaianAdat/uleebalang.png',
    },
    {
      'Asal': 'Sumatera Utara',
      'Nama': 'Pakaian Adat Ulos',
      'Deskripsi': 'Pakaian adat di Indonesia asal Sumatera Utara yang bernama ulos memiliki perpaduan warna yang indah dan penuh dengan makna filosofis. Warna yang paling dominan yaitu merah, hitam, dan juga putih. Dimana ketiganya memiliki pemaknaan akan sebuah simbol nilai yang ingin disampaikan dalam pesan yang tidak langsung.',
      'Gambar': 'assets/PakaianAdat/ulos.png',
    },
    {
      'Asal': 'Sumatera Barat',
      'Nama': 'Pakaian Adat Bundo Kanduang',
      'Deskripsi': 'Bundo Kanduang merupakan pakaian adat di Indonesia asal Sumatera Barat yang identik dengan warna merah dengan aksesori lengkap serta penutup kepala. Aksesorisnya cukup banyak, khususnya calon pengantin wanita, seperti selendang, mahkota atau penutup kepala, gelang, kalung dan banyak lagi. Pakaian adat ini hanya digunakan saat upacara pernikahan saja.',
      'Gambar': 'assets/PakaianAdat/bundokanduang.png',
    },
    {
      'Asal': 'Sumatera Selatan',
      'Nama': 'Pakaian Adat Aesan Gede',
      'Deskripsi': 'Aesan gede adalah pakaian adat Sumatera Selatan yang biasa dipergunakan dalam upacara pernikahan. Penamaan aesan gede berkaitan dengan julukan Sumatera sebagai swarnadwipa atau pulau emas. Indikasinya terlihat dari beberapa kelengkapan yang dikenakan, yaitu berupa perhiasan bercitrakan keemasan. Pakaian ini termasuk salah satu jenis kain songket yang dahulu sering dipergunakan para kaum bangsawan.',
      'Gambar': 'assets/PakaianAdat/aesangede.png',
    },
    {
      'Asal': 'Riau',
      'Nama': 'Pakaian Adat Teluk Belanga',
      'Deskripsi': 'Teluk Belanga adalah pakaian adat Riau yang untuk pria yang berwarna polos. Teluk Belanga dipadukan dengan celana panjang yang sewarna dan sarung yang dipakai sebatas lutut yang berfungsi sebagai selendang.',
      'Gambar': 'assets/PakaianAdat/telukbelanga.png',
    },
    {
      'Asal': 'Kepulauan Riau',
      'Nama': 'Pakaian Adat Teluk Belanga',
      'Deskripsi': 'Teluk Belanga adalah pakaian adat Kepulauan Riau yang berasal dari Johor untuk pria yang berwarna polos. Teluk Belanga dipadukan dengan celana panjang yang sewarna dan sarung yang dipakai sebatas lutut yang berfungsi sebagai selendang.',
      'Gambar': 'assets/PakaianAdat/telukbelanga.png',
    },
    {
      'Asal': 'Jambi',
      'Nama': 'Pakaian Adat Kurung Tanggung',
      'Deskripsi': 'Baju kurung terbuat dari bahan beludru, saten atau santung dengan warna merah, emas, biru dan warna lainnya, yang memakai sulaman benang emas. Untuk paduannya berupa kain songket Jambi dengan motif serupa dengan baju kurung, di mana kain songket menggambarkan keagungan seorang wanita.',
      'Gambar': 'assets/PakaianAdat/kurungtanggung.png',
    },
    {
      'Asal': 'Bengkulu',
      'Nama': 'Pakaian Adat Rejang Lebong',
      'Deskripsi': 'Pakaian adat di Indonesia dari Bengkulu untuk pengantin perempuan adalah baju betabur dan rok songket. Sedangkan pengantin laki-lakinya memakai baju betabur, celana dan kain songket yang berbahan beludru dan songket.',
      'Gambar': 'assets/PakaianAdat/rejanglebong.png',
    },
    {
      'Asal': 'Lampung',
      'Nama': 'Pakaian Adat Tulang Bawang',
      'Deskripsi': 'Pakaian Tulang Bawang kental dengan tradisi ketimuran dengan model baju tertutup dan menjunjung tinggi nilai kesopanan. Para pria mengenakan atasan putih berlengan panjang dengan bawahan celana berwarna sama. Selain itu, di bagian pinggang dililitkan sarung hingga sepanjang lutut. Biasanya sarung ini didominasi warna merah dan emas.',
      'Gambar': 'assets/PakaianAdat/tulangbawang.png',
    },
    {
      'Asal': 'Bangka Belitung',
      'Nama': 'Pakaian Adat Paksian',
      'Deskripsi': 'Pakaian Paksian adalah busana pengantin yang khas dari kota Pangkal Pinang. Pakaian untuk mempelai wanita adalah baju kurung merah yang biasanya terbuat dari bahan sutra atau beludru yang pada masa awal disebut baju Seting. Kain yang dipakai adalah kain besusur, kain lasem, atau disebut juga dengan nama kain cual. Bagian kepala memakai mahkota yang dinamakan Paksian. Mempelai laki-laki memakai sorban yang disebut sungkon. Pakaian ini disebut memiliki pengaruh dari Cina dan Arab.',
      'Gambar': 'assets/PakaianAdat/paksian.png',
    },
    {
      'Asal': 'DKI Jakarta',
      'Nama': 'Pakaian Adat Kebaya Encim dan Sadariah',
      'Deskripsi': 'Kebaya Encim merupakan pakaian tradisional daerah yang berasal dari suku Betawi yang ada di provinsi DKI Jakarta. Kebaya ini merupakan busana tradisional yang berasal dari perpaduan dua kebudayaan, yaitu Tionghoa dan Betawi.',
      'Gambar': 'assets/PakaianAdat/encim.png',
    },
    {
      'Asal': 'Jawa Barat',
      'Nama': 'Pakaian Adat Bedahan dan Kebaya Sunda',
      'Deskripsi': 'Sama seperti kebaya dari Jawa Tengah atau Jawa Timur, kebaya Sunda memiliki bentuk seperti kebaya pada umumnya. Yang menjadi pembeda adalah motif yang ada di leher. Warna kebaya Sunda biasanya lebih cerah sedangkan bawahnya biasanya dipadukan dengan kain jarik.',
      'Gambar': 'assets/PakaianAdat/kebayasunda.png',
    },
    {
      'Asal': 'Banten',
      'Nama': 'Pakaian Adat Pangsi',
      'Deskripsi': 'Pangsi merupakan setelan pakaian berupa baju kemeja polos yang agak longgar serta celana yang juga longgar dan panjangnya tidak melebihi mata kaki. Pakaian adat di Indonesia ini umumnya dipakai oleh laki-laki dan merupakan pakaian khas dari beberapa suku di Indonesia, terutama Betawi dan Sunda.',
      'Gambar': 'assets/PakaianAdat/pangsi.png',
    },
    {
      'Asal': 'Jawa Tengah ',
      'Nama': 'Pakaian Adat Kebaya Jawa',
      'Deskripsi': 'Pakaian adat Jawa Tengah yang resmi adalah pakaian Jawi Jangkep. Pakaian ini didominasi oleh warna hitam pada atasannya dan digunakan oleh pria. Pasangan dari pakaian ini adalah Kebaya Jawa Tengah sehingga para wanita yang menyertai pasangannya saat acara resmi mengenakan pakaian Jawi Jangkep.',
      'Gambar': 'assets/PakaianAdat/kebayajawa.png',
    },
    {
      'Asal': 'DI Yogyakarta',
      'Nama': 'Pakaian Adat Kebaya Ksatrian',
      'Deskripsi': 'Pakaian ini sering dipakai dalam acara-acara resmi, upacara adat, dan perayaan kebudayaan di DIY. Pakaian Kesatrian Ageng untuk pria biasanya terdiri dari kemeja berwarna terang atau baju kurung panjang dengan motif batik yang indah, dipadukan dengan kain sarung yang dililitkan dengan cara khas Jawa. Sementara itu, pakaian adat Kesatrian Ageng untuk wanita terdiri dari kebaya panjang dengan motif batik atau songket yang dipadukan dengan kain jarik yang dipasang secara indah.',
      'Gambar': 'assets/PakaianAdat/kebayaksatrian.png',
    },
    {
      'Asal': 'Jawa Timur',
      'Nama': 'Pakaian Adat Pesaan',
      'Deskripsi': 'Sesuai dengan namanya, pakaian adat Jawa Timur ini berasal dari Madura. Pesaan Madura merupakan pakaian khas yang digunakan untuk pria. Pakaian ini terdiri dari kaos bergaris merah dan putih, baju luar berlengan panjang berwarna hitam, serta celana longgar hitam.',
      'Gambar': 'assets/PakaianAdat/pesaan.png',
    },
    {
      'Asal': 'Bali',
      'Nama': 'Pakaian Adat Payas Agung',
      'Deskripsi': 'Payas agung adalah pakaian adat Bali. Payas agung ini biasanya dipakai ketika upacara pernikahan atau potong gigi. Pakaian ini memiliki kesan mewah dan spesial, maka dari itu payas agung tidak ditujukan untuk berbagai aktivitas. ',
      'Gambar': 'assets/PakaianAdat/payasagung.png',
    },
    {
      'Asal': 'Nusa Tenggara Barat (NTB)',
      'Nama': 'Pakaian Adat Lambung',
      'Deskripsi': 'Di wilayah Lombok bagian selatan, wanita mengenakan baju harian tradisional dengan dominasi warna hitam (Sasak: lambung). Pada bagian pinggir kain, diberi siluet sebagai pemanis. Kain pelung merupakan bahan dasar baju lambung dari katun berwarna hitam. Kain katun merupakan kain dengan bahan dasar serat alami yang berasal dari biji kapas. Komponen terbesar dari serat kapas adalah selulosa yang termasuk dalam polimer alami',
      'Gambar': 'assets/PakaianAdat/lambung.png',
    },
    {
      'Asal': 'Nusa Tenggara Timur (NTT)',
      'Nama': 'Pakaian Adat Suku Sabu',
      'Deskripsi': 'Untuk pria-nya, menggunakan kemeja lengan panjang, dengan bawahan selendang yang diselampingkan ke baju. Ditambah dengan mahkota tiga tiang yang terbuat dari emas kalung muti salak, perhiasan leher (habas), sepasang gelang emas, dan sabuk berkantong. Sementara untuk baju adat wanitanya, menggunakan kain tenun dengan 2 kali lilitan. Di mana, kain tenun tersebut berupa sarung dengan ikat pinggang yang disebut pending.',
      'Gambar': 'assets/PakaianAdat/sukusabu.png',
    },
    {
      'Asal': 'Kalimantan Barat',
      'Nama': 'Pakaian Adat King Baba dan King Tompang',
      'Deskripsi': 'King Baba merupakan pakaian adat untuk laki-laki Suku Dayak yang menempati Kalimantan Barat. Sementara itu pakaian adat Kalimantan Barat untuk perempuan adalah King Bibinge. Pakaian adat King Baba berbentuk seperti rompi yang menggunakan kain khas terbuat dari kulit kayu kapuo serta dihiasi manik-manik berwarna jingga dan merah. Sedangkan untuk pakaian adat perempuan King Bibinge terbuat dari bahan yang sama tapi menutupi hingga bagian dada dan pundak.',
      'Gambar': 'assets/PakaianAdat/kingbaba.png',
    },
    {
      'Asal': 'Kalimantan Tengah',
      'Nama': 'Pakaian Adat Sangkarut',
      'Deskripsi': 'Baju sangkarut ini dikenal juga dengan nama baju basulau karena berupa rompi yang dilapisi oleh sulau (kerang). Nama sangkarut berasal dari kata sangka yang dalam bahasa setempat artinya pembatas.',
      'Gambar': 'assets/PakaianAdat/sangkarut.png',
    },
    {
      'Asal': 'Kalimantan Selatan',
      'Nama': 'Pakaian Adat Babaju Kun Galung Pacinan',
      'Deskripsi': 'Babaju Kun (Hwa Kun) Galung Pacinan, yaitu suatu jenis busana pengantin yang mencerminkan masuknya pengaruh pedagang Gujarat dan China di Kalimantan Selatan. Model ini mirip dengan busana pengantin Betawi dan pengantin Semarang.',
      'Gambar': 'assets/PakaianAdat/babajukun.png',
    },
    {
      'Asal': 'Kalimantan Timur',
      'Nama': 'Pakaian Adat Kustin',
      'Deskripsi': 'Kustin merupakan pakaian adat Kalimantan Timur dari Suku Kutai yang berasal dari bahasa kutai dengan arti busana. Kustin dimaknai sebagai pakaian kebesaran. Pakaian ini terbuat yang bahan dasar beludru hitam dipakai saat upacara pernikahan masyarakat golongan menengah ke atas.',
      'Gambar': 'assets/PakaianAdat/kustin.png',
    },
    {
      'Asal': 'Kalimantan Utara',
      'Nama': 'Pakaian Adat Taa dan Sapei Sapaq',
      'Deskripsi': 'Pakaian Taa merupakan pakaian yang dipakai untuk perempuan, sedangkan Sapei Sapaq adalah pakaian untuk laki-laki. Pakaian Taa adalah kain sarung yang diberi anyaman manik kecil berwarna-warni dengan motif khusus. Sedangkan Sapei Sapaq adalah baju berbentuk khusus yang dihiasi dengan manik bermotif tertentu serta gigi dan taring macan.',
      'Gambar': 'assets/PakaianAdat/taa.png',
    },
    {
      'Asal': 'Sulawesi Barat',
      'Nama': 'Pakaian Adat Pattuqduq Towaine',
      'Deskripsi': 'Nama pakaian adat Sulawesi Barat khususnya dari suku Mandar untuk wanita disebut dengan pattuqduq towaine. Pattuqduq towaine terdiri dari beberapa komponen yaitu atasan berupa rawang boko, sarung khas Mandar bernama lipaq saqbe untuk bawahan, dilengkapi dengan sarung lainnya, yaitu lipaq aqdi diratter duattdong. Kemudian, dalam hal aksesorisnya, terdapat beberapa aksesoris yang dikenakan yaitu hiasan kepala, kalung, ikat pinggang disebut dengan kliki dan gelang.',
      'Gambar': 'assets/PakaianAdat/pattuqduq.png',
    },
    {
      'Asal': 'Sulawesi Utara',
      'Nama': 'Pakaian Adat Laku Tepu',
      'Deskripsi': 'Laku tepu adalah pakaian adat Sulawesi Utara khas suku Sangihe. Pakaian ini dikenakan oleh laki-laki dan perempuan. Ciri khas busana ini adalah bentuknya terusan panjang. Baju pria mencapai lutut dan telapak kaki, dan dilengkapi dengan ikat kepala disebut paporong.',
      'Gambar': 'assets/PakaianAdat/lakutepu.png',
    },
    {
      'Asal': 'Sulawesi Tengah',
      'Nama': 'Pakaian Adat Nggembe',
      'Deskripsi': 'Nggembe adalah salah satu pakaian adat tradisional yang berasal dari Provinsi Sulawesi Tengah. Pakaian ini sering dikenakan dalam acara-acara adat, upacara keagamaan, dan perayaan budaya di wilayah tersebut. Bagian utama dari pakaian Nggembe adalah baju, yang biasanya berbentuk kemeja atau baju kurung panjang dengan motif dan hiasan yang khas. Baju ini sering kali dirancang dengan warna-warna cerah dan pola tradisional yang indah. Selain itu, terdapat pula sarung atau kain jarik yang dipakai sebagai celana atau kain penutup pinggang, yang melengkapi pakaian bagian bawah. Selain itu, pakaian Nggembe juga dilengkapi dengan hiasan kepala yang disebut dengan "nggerang".',
      'Gambar': 'assets/PakaianAdat/nggembe.png',
    },
    {
      'Asal': 'Sulawesi Tenggara',
      'Nama': 'Pakaian Adat Babu Nggawi',
      'Deskripsi': 'Pakaian Adat Babu Nggawi Langgai. Pakaian adat ini digunakan oleh pengantin pria. Babu Nggawi Langgai terdiri dari atasan berlengan panjang, dengan bagian depan terbuka sedikit. Terdapat hiasan emas pada bagian belahan baju, leher, dan lengan.',
      'Gambar': 'assets/PakaianAdat/babu.png',
    },
    {
      'Asal': 'Sulawesi Selatan',
      'Nama': 'Pakaian Adat Baju Bodo',
      'Deskripsi': 'Baju Bodo adalah pakaian tradisional perempuan Suku Makassar, Sulawesi Indonesia. Baju bodo juga dikenali sebagai salah satu busana tertua di dunia. Pakaian adat Sulawesi Selatan ini berbentuk segi empat, biasanya berlengan pendek, sesuai dengan namanya bodo yang berarti pendek, setengah atas bagian siku lengan. Pakaian ini kerap dipakai untuk acara adat seperti upacara pernikahan.',
      'Gambar': 'assets/PakaianAdat/bodo.png',
    },
    {
      'Asal': 'Gorontalo',
      'Nama': 'Pakaian Adat Biliu dan Makuta',
      'Deskripsi': 'Mukuta dan Biliu merupakan sepasang pakaian adat Gorontalo yang pada dasarnya hanya dikenakan ketika ada upacara pernikahan. Mukuta dan biliu sendiri memiliki nuansa sentuhan keagamaan atau lebih tepatnya sentuhan keislaman. Pakaian biliu atau pakaian adat untuk perempuan Gorontalo memiliki banyak aksesoris hiasan pernak-pernik. Berbeda dengan pakaian adat perempuan yang memiliki banyak aksesoris, pakaian adat pria atau mukuta lebih simpel. Hanya memiliki 3 aksesoris yang dikenakan oleh laki-laki atau pengantin pria.',
      'Gambar': 'assets/PakaianAdat/biliu.png',
    },
    {
      'Asal': 'Maluku',
      'Nama': 'Pakaian Adat Cele',
      'Deskripsi': 'Baju cele adalah kain kebaya yang dikombinasikan dengan kain salele di pinggang. Motif baju cele bisa berupa garis-garis geometris atau berkotak-kotak kecil. Umumnya busana ini memiliki corak warna merah yang memiliki nilai kecerian, berani, dan cekatan.',
      'Gambar': 'assets/PakaianAdat/cele.png',
    },
    {
      'Asal': 'Maluku Utara',
      'Nama': 'Pakaian Adat Manteran Lamo',
      'Deskripsi': 'Menurut sejarah, pakaian adat ini konon dipakai oleh para sultan kerajaan di Maluku Utara. Secara visual bentuk dan bagian dari Manteren Lamo terdiri dari jas berwarna merah dengan bordir emas di tepian. Selain itu, perpaduan celana warna hitam sebagai bawahan serta aksesori kepala. ',
      'Gambar': 'assets/PakaianAdat/manteran.png',
    },
    {
      'Asal': 'Papua Barat',
      'Nama': 'Pakaian Adat Ewer',
      'Deskripsi': 'Nama pakaian adat di Indonesia bagian Papua Barat adalah pakaian adat Ewer. Pakaian ini murni terbuat dari bahan alami yaitu jerami yang dikeringkan. Dengan kemajuan dan pengaruh modernisasi, pakaian adat ini kemudian dilengkapi dengan kain untuk atasannya',
      'Gambar': 'assets/PakaianAdat/ewer.png',
    },
    {
      'Asal': 'Papua',
      'Nama': 'Pakaian Adat Koteka / Holim',
      'Deskripsi': 'Koteka merupakan bagian dari pakaian adat Papua yang berfungsi untuk menutupi kemaluan penduduk pria asli Papua. Sementara bagian tubuh lainnya dibiarkan terbuka sehingga nyaris telanjang. Koteka, secara harfiah memiliki makna sebagai pakaian. Koteka juga disebut dengan horim atau bobbe.',
      'Gambar': 'assets/PakaianAdat/koteka.png',
    },
    {
      'Asal': 'Papua Tengah',
      'Nama': 'Pakaian Adat Koteka / Holim',
      'Deskripsi': 'Koteka merupakan bagian dari pakaian adat Papua yang berfungsi untuk menutupi kemaluan penduduk pria asli Papua. Sementara bagian tubuh lainnya dibiarkan terbuka sehingga nyaris telanjang. Koteka, secara harfiah memiliki makna sebagai pakaian. Koteka juga disebut dengan horim atau bobbe.',
      'Gambar': 'assets/PakaianAdat/koteka.png',
    },
    {
      'Asal': 'Papua Pegunungan',
      'Nama': 'Pakaian Adat Koteka / Holim',
      'Deskripsi': '"Holim" atau "hulim" adalah pakaian adat tradisional yang digunakan oleh suku-suku di wilayah pegunungan Papua. Pakaian ini biasanya terbuat dari bahan-bahan alami seperti serat tumbuhan atau daun, dan seringkali dihiasi dengan motif-motif tradisional yang khas. Pakaian ini memiliki nilai simbolis dan budaya yang tinggi bagi masyarakat suku-suku di Papua Pegunungan, dan sering dipakai dalam berbagai acara adat, upacara keagamaan, atau festival budaya sebagai bentuk identitas dan kebanggaan akan warisan budaya mereka.',
      'Gambar': 'assets/PakaianAdat/koteka.png',
    },
    {
      'Asal': 'Papua Selatan',
      'Nama': 'Pakaian Adat Koteka / Holim',
      'Deskripsi': '"Holim" atau "hulim" adalah pakaian adat tradisional yang digunakan oleh suku-suku di wilayah pegunungan Papua. Pakaian ini biasanya terbuat dari bahan-bahan alami seperti serat tumbuhan atau daun, dan seringkali dihiasi dengan motif-motif tradisional yang khas. Pakaian ini memiliki nilai simbolis dan budaya yang tinggi bagi masyarakat suku-suku di Papua Pegunungan, dan sering dipakai dalam berbagai acara adat, upacara keagamaan, atau festival budaya sebagai bentuk identitas dan kebanggaan akan warisan budaya mereka.',
      'Gambar': 'assets/PakaianAdat/koteka.png',
    },
    {
      'Asal': 'Papua Barat Daya',
      'Nama': 'Pakaian Adat Koteka / Holim',
      'Deskripsi': 'Koteka merupakan bagian dari pakaian adat Papua yang berfungsi untuk menutupi kemaluan penduduk pria asli Papua. Sementara bagian tubuh lainnya dibiarkan terbuka sehingga nyaris telanjang. Koteka, secara harfiah memiliki makna sebagai pakaian. Koteka juga disebut dengan horim atau bobbe.',
      'Gambar': 'assets/PakaianAdat/koteka.png',
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
        'Pakaian Adat',
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