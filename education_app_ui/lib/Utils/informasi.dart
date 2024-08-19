import 'package:flutter/material.dart';
import 'package:education_app_ui/home_scree.dart';

class InformasiScreen extends StatefulWidget {
  const InformasiScreen({Key? key}) : super(key: key);

  @override
  _InformasiScreenState createState() => _InformasiScreenState();
}

class _InformasiScreenState extends State<InformasiScreen> {
  List<Map<String, String>> houses = [
    {
      'Nama': 'Sendratari Ramayana',
      'Tempat': 'Gedung Trimurti dan Panggung Terbuka',
      'Tanggal': 'Setiap Hari Selasa, Kamis dan Sabtu',
      'Jam': '19.30-21.30 WIB',
      'Harga Tiket': 'Rp.150.000,00 - Rp.450.000,00',
      'Deskripsi': 'Sendratari Ramayana Prambanan adalah singkatan dari kata seni drama dan tari artinya seni drama yang ditarikan. Ramayana Ballet atau Sendratari Ramayana diawali dengan kemenangan Rama dari sebuah kompetisi memanah. Kompetisi ini diadakan untuk mencari kesatria terbaik yang akan menikah dengan anak perempuan Raja Mantili yaitu Putri Shinta. Pada akhir kompetisi memanah itu Rama dari Kerajaan Ayodya keluar sebagai pemenangnya. ',
      'Gambar': 'assets/Informasi/ramayana.jpeg',
    },
    {
      'Nama': 'Pekan Batik Nusantara',
      'Tempat': 'Lapangan Mataram, Kota Pekalongan',
      'Tanggal': '1 Oktober 2024',
      'Jam': '10.00 - 21.00 WIB',
      'Harga Tiket': 'Gratis',
      'Deskripsi': 'Pekan Batik Nusantara diselenggarakan oleh Pemerintah Kota Pekalongan dalam rangka meningkatkan pemasaran produk batik nasional dan membangkitkan sektor riil. Tujuan penyelenggaraan kegiatan karnaval batik ini, kata dia, untuk meningkatkan dan mengembangkan kreativitas dan inovasi dalam pembuatan kostum, serta mengapresiasi para generasi muda dan masyarakat terhadap hasil karya seni batik.',
      'Gambar': 'assets/Informasi/batnus2.jpg',
    },
    {
      'Nama': 'Festival Ogoh-Ogoh Bali',
      'Tempat': 'Denpasar, Bali',
      'Tanggal': '10 Maret 2024',
      'Jam': '16.00-00.00 WITA',
      'Harga Tiket': 'Gratis',
      'Deskripsi': 'Ogoh-ogoh merupakan cerminan sifat negatif yang dimiliki setiap manusia. Oleh karena itu, ogoh-ogoh dibuat dengan desain yang besar dan menyeramkan sebagai simbol dari Bhuta Kala. Bhuta Kala menggambarkan kekuatan alam semesta dan waktu yang besar dan tidak terbantahkan. Pawai ogoh-ogoh memiliki filosofi bahwa diharuskan bagi manusia untuk saling menjaga alam dan sumber daya untuk tidak merusak lingkungan sekitar.',
      'Gambar': 'assets/Informasi/ogoh.jpg',
    },
  ];

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Informasi',
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Text(
                'Event Budaya Apa Saja Sih yang Ada di Nusantara??',
                style: TextStyle(
                  fontFamily: 'Rakkas',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/images/informasi.png',
                width: 500,
                height: 300,
              ),
              SizedBox(height: 10), // Menambahkan SizedBox untuk jarak
              Text(
                'Yuk kepoin eventnya!', // Menambahkan tulisan baru
                style: TextStyle(
                  fontFamily: 'Rakkas',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: houses.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(
                            event: houses[index],
                          ),
                        ),
                      );
                    },
                    child: Card(
                      color: Color.fromARGB(255, 255, 234, 243), // Ubah warna box di sini
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                houses[index]['Gambar'] ?? '',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    houses[index]['Nama'] ?? '',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Rakkas', // Gaya teks untuk nama
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final Map<String, String> event;

  const DetailScreen({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Event Budaya',
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              event['Gambar'] ?? '',
              width: MediaQuery.of(context).size.width,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'Nama: ${event['Nama'] ?? ''}',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: 'Rakkas', // Ganti dengan font yang diinginkan
                // tambahkan properti lain seperti color, letterSpacing, dll sesuai kebutuhan
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Tempat: ${event['Tempat'] ?? ''}',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Domine', // Ganti dengan font yang diinginkan
                // tambahkan properti lain seperti color, letterSpacing, dll sesuai kebutuhan
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Tanggal: ${event['Tanggal'] ?? ''}',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Domine', // Ganti dengan font yang diinginkan
                // tambahkan properti lain seperti color, letterSpacing, dll sesuai kebutuhan
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Jam: ${event['Jam'] ?? ''}',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Domine', // Ganti dengan font yang diinginkan
                // tambahkan properti lain seperti color, letterSpacing, dll sesuai kebutuhan
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Harga Tiket: ${event['Harga Tiket'] ?? ''}',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Domine', // Ganti dengan font yang diinginkan
                // tambahkan properti lain seperti color, letterSpacing, dll sesuai kebutuhan
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Deskripsi: ${event['Deskripsi'] ?? ''}',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Domine', // Ganti dengan font yang diinginkan
                // tambahkan properti lain seperti color, letterSpacing, dll sesuai kebutuhan
              ),
            ),
          ],
        ),
      ),
          )
        )
      );
  }
}