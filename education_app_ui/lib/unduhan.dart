import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:typed_data';
import 'dart:convert';
import 'dart:html' as html;

class UnduhanScreen extends StatefulWidget {
  @override
  _UnduhanScreenState createState() => _UnduhanScreenState();
}

class _UnduhanScreenState extends State<UnduhanScreen> {
  bool isAllLevelsCompleted = false;

  @override
  void initState() {
    super.initState();
    _checkLevelsCompletion();
  }

  Future<void> _checkLevelsCompletion() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLevel1Completed = prefs.getBool('isLevel1Completed') ?? false;
    bool isLevel2Completed = prefs.getBool('isLevel2Completed') ?? false;
    bool isLevel3Completed = prefs.getBool('isLevel3Completed') ?? false;

    setState(() {
      isAllLevelsCompleted = isLevel1Completed && isLevel2Completed && isLevel3Completed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Unduhan',
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/trophy.png', // Ganti dengan path gambar thropy Anda
              width: 300,
              height: 300,
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: isAllLevelsCompleted
                  ? () {
                      // Aksi ketika box kreatif di klik
                      _showCertificateDialog(context);
                    }
                  : () {
                      // Tampilkan pesan bahwa semua level harus diselesaikan
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Anda harus menyelesaikan semua level terlebih dahulu.'),
                        ),
                      );
                    },
              child: Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: isAllLevelsCompleted
                      ? const Color.fromARGB(255, 219, 146, 189)
                      : Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    'Sertifikat',
                    style: TextStyle(
                      fontFamily: 'Rakkas',
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showCertificateDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Sertifikat'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/sertifikat.png', // Ganti dengan path gambar sertifikat Anda
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 10),
              const Text('Selamat, Anda telah menyelesaikan semua level!'),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () async {
                  await _downloadCertificate();
                },
                icon: const Icon(Icons.download),
                label: const Text('Unduh'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Tutup'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _downloadCertificate() async {
    try {
      // Membaca file dari aset
      final byteData = await rootBundle.load('assets/images/sertifikat.png');

      if (kIsWeb) {
        // Menggunakan API JavaScript untuk mengunduh file di web
        final content = base64Encode(byteData.buffer.asUint8List());
        final anchor = html.AnchorElement(
            href: 'data:application/octet-stream;base64,$content')
          ..setAttribute('download', 'sertifikat.png')
          ..click();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Sertifikat berhasil diunduh')),
        );
      } else {
        // Mendapatkan direktori penyimpanan lokal
        final directory = await getExternalStorageDirectory();
        final path = directory?.path;

        if (path != null) {
          // Menulis file ke direktori penyimpanan lokal
          final file = File('$path/sertifikat.png');
          await file.writeAsBytes(byteData.buffer.asUint8List());

          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Sertifikat berhasil diunduh')),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Gagal mendapatkan direktori penyimpanan')),
          );
        }
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Gagal mengunduh sertifikat: $e')),
      );
    }
  }
}
