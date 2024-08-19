import 'package:education_app_ui/Utils/pembahasan.dart';
import 'package:flutter/material.dart';

class PertanyaanScreen extends StatefulWidget {
  final int level;
  final VoidCallback onComplete;

  const PertanyaanScreen(
      {Key? key, required this.level, required this.onComplete})
      : super(key: key);

  @override
  _PertanyaanScreenState createState() => _PertanyaanScreenState();
}

class _PertanyaanScreenState extends State<PertanyaanScreen> {
  late PageController _pageController;
  late int _currentIndex;

  final List<String> _pertanyaanList = [
    'Apa nama tarian daerah dari Bali?',
    'Apa nama alat musik daerah dari Sumatera Utara?',
    'Apa nama rumah adat di atas?',
    'Berasal darimana Tari Saman?',
    'Apa nama rumah adat dari DKI Jakarta?',
    'Japen adalah alat musik dari daerah?',
    'Apa nama rumah ada dari Kalimantan Timur?',
    'Gambar di bawah ini adalah gambar pakaian adat dari daerah mana?',
    'Tarian ini berasal dari bangka belitung yang berisi saling balas pantun. Tarian ini dinamakan tarian apa?',
    'Alat musik bende berasal dari mana?',
    'Pakaian adat dari daerah Maluku adalah?',
    'Gambar berikut adalah adalah tarian adat dari daerah mana?',
    'Baileo adalah rumah adat dari daerah mana?',
    'Apa nama alat musik dari daerah Sulawesi Tenggara?',
    'Tari gambyong biasanya ditampilkan dalam acara apa saja?',
  ];

  final List<List<String>> _jawabanList = [
    ['Tari Tor-Tor', 'Tari Kecak', 'Tari Caci', 'Tari Jaipong'],
    [
      'Alat Musik Gambus',
      'Alat Musik Cangor',
      'Alat Musik Oloan',
      'Alat Musik Gendang Panjang'
    ],
    ['Rumah Panjang', 'Rumah Souraja', 'Rumah Honai', 'Rumah Joglo'],
    [
      'Jawa Timur',
      'Sulawesi Selatan',
      'Nangroe Aceh Darussalam',
      'Kalimantan Timur'
    ],
    ['Rumah Kasepuhan', 'Rumah Kebaya', 'Rumah Baduy', 'Rumah Krong Bade'],
    ['Jawa Timur', 'Kalimantan Timur', 'Kalimantan Tengah', 'Maluku'],
    ['Rumah Adat Lamin',
        'Rumah Adat Kasepuhan',
        'Rumah Adat Buton',
        'Rumah Adat Rakit'],
    ['Nusa Tenggara Timur', 'Lampung', 'Banten', 'Kalimantan Tengah'],
    ['Tari Caci', 'Tari Campak', 'Tari Sembah', 'Tari Kecak'],
    ['Bengkulu', 'Lampung', 'Jambi', 'Riau'],
    ['Pakaian Adat Cele', 'Pakaian Adat Ewer', 'Pakaian Adat Lambung', 'Pakaian Adat Paksian'],
    ['Nusa Tenggara Barat', 'Nusa Tenggara Barat', 'Sumatera Utara', 'Bengkulu'],
    ['Sumatera Selatan', 'Sulawesi Tengah', 'Maluku', 'Gorontalo'],
    ['Alat Musik Ganda', 'Alat Musik Keso-Keso', 'Alat Musik Lado-Lado', 'Alat Musik Fu'],
    ['Pertunjukan', 'Upacara pernikahan', 'Penyambutan tamu agung', 'Upacara ritual pertanian'],
  ];

  final List<String> _gambarList = [
    'assets/TarianAdat/kecak.jpg',
    'assets/AlatMusik/oloan.jpg',
    'assets/RumahAdat/panjang.png', 
    'assets/TarianAdat/saman.jpg',
    'assets/RumahAdat/kebaya.png',
    'assets/AlatMusik/japen.jpeg',
    'assets/RumahAdat/lamin.png',
    'assets/PakaianAdat/sangkarut.png',
    'assets/TarianAdat/campak.jpg',
    'assets/AlatMusik/bende.jpg',
    'assets/PakaianAdat/cele.png',
    'assets/TarianAdat/caci.jpg',
    'assets/RumahAdat/baileo.png',
    'assets/AlatMusik/ladolado.jpg',
    'assets/TarianAdat/gambyong.jpg',
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pertanyaan - Level ${widget.level}',
          style: TextStyle(
            fontFamily: 'Rakkas',
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: 5,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        itemBuilder: (context, index) {
          int questionIndex = index + (widget.level - 1) * 5;
          return PertanyaanTile(
            pertanyaan: _pertanyaanList[questionIndex],
            pilihan: _jawabanList[questionIndex],
            gambar: _gambarList[questionIndex],
            onNext: () {
              if (_currentIndex < 4) {
                _pageController.nextPage(
                    duration: Duration(milliseconds: 500), curve: Curves.ease);
              } else {
                _showSubmitDialog();
              }
            },
            onBack: () {
              if (_currentIndex > 0) {
                _pageController.previousPage(
                    duration: Duration(milliseconds: 500), curve: Curves.ease);
              }
            },
          );
        },
      ),
    );
  }

  void _showSubmitDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Submit Jawaban"),
          content: const Text("Apakah Anda yakin ingin submit jawaban Anda?"),
          actions: <Widget>[
            TextButton(
              child: const Text("No"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text("Yes"),
              onPressed: () {
                Navigator.of(context).pop(); // Tutup dialog konfirmasi
                widget.onComplete();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PembahasanScreen()),
                );
              },
            ),
          ],
        );
      },
    );
  }
}

class PertanyaanTile extends StatefulWidget {
  final String pertanyaan;
  final List<String> pilihan;
  final String gambar;
  final VoidCallback onNext;
  final VoidCallback onBack;

  const PertanyaanTile({
    Key? key,
    required this.pertanyaan,
    required this.pilihan,
    required this.gambar,
    required this.onNext,
    required this.onBack,
  }) : super(key: key);

  @override
  _PertanyaanTileState createState() => _PertanyaanTileState();
}

class _PertanyaanTileState extends State<PertanyaanTile> {
  String? _selectedPilihan;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (widget.gambar.isNotEmpty)
              Image.asset(
                widget.gambar,
                width: 300,
                height: 300,
              ),
            const SizedBox(height: 10),
            Text(
              widget.pertanyaan,
              style: const TextStyle(fontSize: 18, fontFamily: 'Rakkas'),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Column(
              children: widget.pilihan.map((pilihan) {
                return RadioListTile<String>(
                  title: Text(pilihan,
                      style: const TextStyle(fontFamily: 'Rakkas')),
                  value: pilihan,
                  groupValue: _selectedPilihan,
                  onChanged: (value) {
                    setState(() {
                      _selectedPilihan = value;
                    });
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: widget.onBack,
                      child: const Text('Back'),
                    ),
                    ElevatedButton(
                      onPressed: widget.onNext,
                      child: Text(_isLastQuestion() ? 'Finish' : 'Next'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool _isLastQuestion() {
    return widget.pertanyaan == 'Pertanyaan 5 untuk Level 3' ||
        widget.pertanyaan == 'Pertanyaan 5 untuk Level 2' ||
        widget.pertanyaan == 'Apa nama rumah adat dari DKI Jakarta?';
  }
}
