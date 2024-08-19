import 'package:education_app_ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'pertanyaan_screen.dart';

class BelajarScreen extends StatefulWidget {
  const BelajarScreen({Key? key}) : super(key: key);

  @override
  _BelajarScreenState createState() => _BelajarScreenState();
}

class _BelajarScreenState extends State<BelajarScreen> {
  bool isLevel1Completed = false;
  bool isLevel2Completed = false;
  bool isLevel3Completed = false;

  @override
  void initState() {
    super.initState();
    _loadLevelStatus();
  }

  Future<void> _loadLevelStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isLevel1Completed = prefs.getBool('isLevel1Completed') ?? false;
      isLevel2Completed = prefs.getBool('isLevel2Completed') ?? false;
      isLevel3Completed = prefs.getBool('isLevel2Completed') ?? false;
    });
  }

  Future<void> _completeLevel(int level) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (level == 1) {
      setState(() {
        isLevel1Completed = true;
      });
      await prefs.setBool('isLevel1Completed', true);
    } else if (level == 2) {
      setState(() {
        isLevel2Completed = true;
      });
      await prefs.setBool('isLevel2Completed', true);
    } 
    else if (level == 3) {
      setState(() {
        isLevel3Completed = true;
      });
      await prefs.setBool('isLevel3Completed', true);
    } 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Belajar',
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HomeScreen()),
                ); 
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  const Text(
                    'Kuis Yuk!',
                    style: TextStyle(
                      fontFamily: 'Rakkas',
                      fontSize: 50,
                    ),
                  ),
                  const SizedBox(height: 50),
                  Image.asset(
                    'assets/images/belajar.png',
                    width: 350,
                    height: 300,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Pilih Level',
                style: TextStyle(
                  fontFamily: 'Rakkas',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              levelButton(context, level: 1, isCompleted: true, color: Colors.blue, icon: Icons.star),
              levelButton(context, level: 2, isCompleted: isLevel1Completed, color: Colors.green, icon: Icons.star),
              levelButton(context, level: 3, isCompleted: isLevel2Completed, color: Colors.orange, icon: Icons.star),
            ],
          ),
        ),
      ),
    );
  }

  Widget levelButton(BuildContext context, {required int level, required bool isCompleted, required Color color, required IconData icon}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/images/klik.png',
              width: 50,
              height: 50,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (level == 1 || (level == 2 && isLevel1Completed) || (level == 3 && isLevel2Completed)) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PertanyaanScreen(
                      level: level,
                      onComplete: () => _completeLevel(level),
                    ),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Anda harus menyelesaikan Level ${level - 1} terlebih dahulu.'),
                  ),
                );
              }
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Text(
              'Level $level',
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
