import 'package:education_app_ui/belajar_screen.dart';
import 'package:flutter/material.dart';

class PembahasanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Pembahasan',
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Level 1'),
              Tab(text: 'Level 2'),
              Tab(text: 'Level 3'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildPembahasanLevel1(context),
            _buildPembahasanLevel2(context),
            _buildPembahasanLevel3(context),
          ],
        ),
      ),
    );
  }

  Widget _buildPembahasanLevel1(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Pembahasan Kuis Level 1',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SoalPembahasan(
            soal: 'Apa nama tarian daerah dari Bali?',
            jawaban: 'B. Tari Kecak',
            pembahasan:
                'Merupakan tarian yang unik karena tidak menggunakan musik instrumen, melainkan hanya menggunakan suara "cak" yang dihasilkan oleh para penari. Tarian ini sering menggambarkan cerita dari epik Ramayana dan dipentaskan di berbagai tempat di Bali.',
            gambar: 'assets/TarianAdat/kecak.jpg',
          ),
          SoalPembahasan(
            soal: 'Apa nama alat musik daerah dari Sumatera Utara?',
            jawaban: 'C. Alat Musik Oloan',
            pembahasan:
                'Oloan adalah salah satu gung berpencu yang terdapat pada Batak Toba. Oloan dimainkan dengan cara dipukul pencunya dengan stick yang terbuat dari kayu dan pangkal ujungnya dilapisi dengan kain atau karet. Oloan ini terbuat dari bahan metal/perunggu dengan sistem cetak. Untuk membedakannya dengan suara ogung lainnya maka tuning yang dilakukan adalah dengan menempelkan getah puli (sejenis pohon enau) dibagian dalam gung tersebut. Semakin banyak getah puli tersebut, maka semakin rendahlah suara gung tersebut. Gung oloan berukuran garis menengah lebih kurang 32,5 cm, tinggi 7 cm, dan bendulan (pencu) di tengah dengan diameter lebih kurang 10 cm.',
            gambar: 'assets/AlatMusik/oloan.jpg',
          ),
          SoalPembahasan(
            soal: 'Apa nama rumah adat di atas?',
            jawaban: 'A. Rumah Panjang',
            pembahasan:
                'Rumah adat Provinsi Kalimantan Barat ini mempunyai ukuran yang besar dan terdiri dari dua bagian, yaitu bangunan atas dan bawah. Rumah ini sangat unik karena memadukan kesan modern dan tradisional sekaligus. Arsitektur Rumah Panjang bertema budaya Suku Dayak pada beberapa sisi bangunannya.',
            gambar: 'assets/RumahAdat/panjang.png',
          ),
          SoalPembahasan(
            soal: 'Berasal darimana Tari Saman?',
            jawaban: 'C. Nangroe Aceh Darussalam',
            pembahasan:
                'Tarian ini merupakan salah satu kebanggaan budaya Aceh yang populer di seluruh Indonesia. Tari Saman biasanya ditarikan oleh sekelompok penari yang duduk bersila di atas alas tikar. Gerakan tangan, kepala, dan badan dilakukan secara cepat dan sinkron, disertai dengan nyanyian dan tepukan tangan. Tarian ini memiliki nilai-nilai kebersamaan, ketekunan, dan kebersihan.',
            gambar: 'assets/TarianAdat/saman.jpg',
          ),
          SoalPembahasan(
            soal: 'Apa nama rumah adat dari DKI Jakarta?',
            jawaban: 'B. Rumah Kebaya',
            pembahasan:
                'Rumah Kebaya dari DKI Jakarta mengusung corak khas suku Betawi. Atap dari rumah ini menyerupai pelana terlipat dan memiliki corak-corak yang khas seperti kebaya. Rumah Kebaya memiliki teras yang luas bertujuan untuk menjadi tempat santai keluarga dan menyambut tamu.',
            gambar: 'assets/RumahAdat/kebaya.png',
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Back'),
          ),
        ],
      ),
    );
  }
  Widget _buildPembahasanLevel2(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Pembahasan Kuis Level 2',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SoalPembahasan(
            soal: 'Japen adalah alat musik dari daerah?',
            jawaban: 'C. Kalimantan Tengah',
            pembahasan:
                'Japen adalah alat musik tradisional Kalimantan Tengah yang bentuknya menyerupai kecapi, gitar, atau mandolin. Japen terbuat dari kayu dan dilengkapi dengan empat buah senar. Bagian badan Japen juga dihiasi dengan ornamen khas Suku dayak yang memiliki banyak makna filosofis. Ketika dawai Japen dipetik, akan menghasilkan nada yang unik namun akan terdengar sedikit mirip dengan musik kebudayaan Tionghoa',
            gambar: 'assets/AlatMusik/japen.jpeg',
          ),
          SoalPembahasan(
            soal: 'Apa nama rumah adat dari Kalimantan Timur?',
            jawaban: 'A. Rumah Adat Lamin',
            pembahasan:
                'Rumah Lamin dari Kalimantan Timur juga tidak kalah uniknya. Gaya arsitektur yang khas dan juga luas bangunannya menjadi ciri khas dari Rumah Lamin. Pada bagian atap rumah terdapat ornamen kepala naga dari kayu. Di sisi-sisi bangunannya juga terdapat ukiran atau lukisan budaya yang unik.',
            gambar: 'assets/RumahAdat/lamin.png',
          ),
          SoalPembahasan(
            soal: 'Gambar di atas ini adalah gambar pakaian adat dari daerah mana?',
            jawaban: 'D. Kalimantan Tengah',
            pembahasan:
                'Baju sangkarut ini dikenal juga dengan nama baju basulau karena berupa rompi yang dilapisi oleh sulau (kerang). Nama sangkarut berasal dari kata sangka yang dalam bahasa setempat artinya pembatas.',
            gambar: 'assets/PakaianAdat/sangkarut.png',
          ),
          SoalPembahasan(
            soal: 'Tarian ini berasal dari Bangka Belitung yang berisi saling balas pantun. Tarian ini dinamakan tarian apa?',
            jawaban: 'B. Tari Campak',
            pembahasan:
                'Tari campak adalah tarian tradisional asal Bangka Belitung yang berisi berbalas pantun. Tari ini berfungsi sebagai hiburan penyambutan tamu, pernikahan, rupa suka cita anak muda, dan rasa syukur atas hasil panen.',
            gambar: 'assets/TarianAdat/campak.jpg',
          ),
          SoalPembahasan(
            soal: 'Alat musik bende berasal dari mana?',
            jawaban: 'B. Lampung',
            pembahasan:
                'Lampung memiliki beberapa jenis alat musik daerah yang unik dan khas. Salah satu contohnya bende yang termasuk dalam jenis alat musik idiofon. Bende memiliki suara khas yang ditimbulkan ketika alat musik ini dipukul. Bende terbuat dari tembaga atau perunggu. Bentuknya bulat dan pada bagian tengahnya sedikit menonjol ke luar.',
            gambar: 'assets/AlatMusik/bende.jpg',
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Back'),
          ),
        ],
      ),
    );
  }

  Widget _buildPembahasanLevel3(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Pembahasan Kuis Level 3',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SoalPembahasan(
            soal: 'Pakaian adat dari daerah Maluku adalah?',
            jawaban: 'A. Pakaian Adat Cele',
            pembahasan:
                'Baju cele adalah kain kebaya yang dikombinasikan dengan kain salele di pinggang. Motif baju cele bisa berupa garis-garis geometris atau berkotak-kotak kecil. Umumnya busana ini memiliki corak warna merah yang memiliki nilai kecerian, berani, dan cekatan.',
            gambar: 'assets/PakaianAdat/cele.png',
          ),
          SoalPembahasan(
            soal: 'Gambar berikut adalah adalah tarian adat dari daerah mana?',
            jawaban: 'A. Nusa Tenggara Timur',
            pembahasan:
                'Tari caci adalah tari tradisional NTT yang merupakan tari perang yang menggambarkan laga bersenjata cambuk dan perisai.',
            gambar: 'assets/TarianAdat/caci.jpg',
          ),
          SoalPembahasan(
            soal: 'Baileo adalah rumah adat dari daerah mana?',
            jawaban: 'C. Maluku',
            pembahasan:
                'Rumah adat lain yang tidak kalah unik adalah Rumah Baileo dari Maluku. Tidak ada dinding di rumah ini dan berbentuk panggung. Untuk menyangganya, ada 9 tiang di rumah ini dengan batu pamali yang melengkapinya. Biasanya, warga setempat juga menggunakan batu pamali ini sebagai tempat sesaji bagi roh leluhurnya.',
            gambar: 'assets/RumahAdat/baileo.png',
          ),
          SoalPembahasan(
            soal: 'Apa nama alat musik dari daerah Sulawesi Tenggara?',
            jawaban: 'C. Alat Musik Lado-Lado',
            pembahasan:
                'Ladolado tergolong sebagai alat musik yang dimainkan oleh masyarakat di Sulawesi Tenggara. Bentuk ladolado hampir mirip seperti gambus atau gitar. Ladolado mempunyai empat buah senar yang dikaitkan ke bagian bagian bawahnya. Alat musik ini juga mempunyai pemutar kayu yang berada di bagian atas untuk menetapkan tingkat ketegangan senar supaya bisa mengeluarkan nada yang merdu didengar. Cara memainkan ladolado dengan digesek seperti biola.',
            gambar: 'assets/AlatMusik/ladolado.jpg',
          ),
          SoalPembahasan(
            soal: 'Tari gambyong biasanya ditampilkan dalam acara apa saja?',
            jawaban: 'D. Upacara Ritual Pertanian',
            pembahasan:
                'Tari gambyong semula dibawakan pada upacara ritual pertanian yang bertujuan untuk kesuburan padi dan perolehan panen melimpah. Para penari gambyong menjadi representasi dewi padi atau Dewi Sri.',
            gambar: 'assets/TarianAdat/gambyong.jpg',
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Back'),
          ),
        ],
      ),
    );
  }
}

class SoalPembahasan extends StatelessWidget {
  final String soal;
  final String jawaban;
  final String pembahasan;
  final String gambar;

  const SoalPembahasan({
    Key? key,
    required this.soal,
    required this.jawaban,
    required this.pembahasan,
    required this.gambar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              soal,
              style: TextStyle(
                fontFamily: 'Rakkas',
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Image.asset(
              gambar,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 8.0),
            Text(
              'Jawaban yang benar: $jawaban',
              style: TextStyle(fontFamily: 'Rakkas'),
            ),
            const SizedBox(height: 8.0),
            Text(
              pembahasan,
              style:
              TextStyle(
                fontFamily: 'Rakkas',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
