import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login_page.dart';
import 'profile.dart';
import 'unduhan.dart';
import 'password.dart';
import 'logout.dart';
import 'belajar_screen.dart';
import 'Utils/informasi.dart';
import 'game.dart';
import 'Utils/colors.dart';
import 'Utils/pakaianadat.dart';
import 'Utils/alatmusik.dart';
import 'Utils/rumahadat.dart';
import 'Utils/tariandaerah.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(
            fontFamily: 'Pacifico', // Ganti dengan jenis font yang diinginkan untuk judul
            fontSize: 24, // Ubah ukuran font jika diperlukan
            fontWeight: FontWeight.bold, // Ubah gaya tebal jika diperlukan
            color: Color.fromARGB(255, 39, 39, 39), // Ubah warna teks jika diperlukan
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Padding(
                padding: const EdgeInsets.only(top: 2.5), // Sesuaikan jarak ke atas di sini
                child: const Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              accountEmail: null,
              currentAccountPicture: Padding(
                padding: const EdgeInsets.only(top: 15.0), // Sesuaikan jarak ke bawah di sini
                child: CircleAvatar(
                  backgroundImage: const AssetImage("assets/Images/profile.jpg"),
                  child: const Icon(
                    Icons.person,
                    size: 50, // Sesuaikan ukuran ikon orang di sini
                  ),
                  radius: 40, // Sesuaikan ukuran lingkaran profil di sini
                ),
              ),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 206, 148, 167),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: const Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Your Account'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProfileScreen(),
                ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.download),
              title: const Text('Unduhan'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => UnduhanScreen(),
                ));
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Reset Password'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ChangePasswordPage(),
                ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Log Out'),
              onTap: () {
                _showConfirmationDialog(context);
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/Images/menu1.png",
                      height: 40,
                      width: 40,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Hallo Anak Indonesia ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                fontFamily: 'Rakkas',
                              ),
                            ),
                            const SizedBox(height: 15),
                            Image.asset(
                              "assets/Images/hand.png",
                              height: 50,
                              width: 50,
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "Ayo, belajar budaya di Indonesia!",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            fontFamily: 'Imbue',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      color: primaryColor,
                      child: const SizedBox(
                        height: 50,
                        width: 90,
                        child: Center(
                          child: Text(
                            "Budaya",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const BelajarScreen(),
                        ));
                      },
                      child: const Text(
                        "Belajar",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const InformasiScreen(),
                        ));
                      },
                      child: const Text(
                        "Informasi",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => GameScreen(),
                        ));
                      },
                      child: const Text(
                        "Game",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white,
                      Color.fromARGB(255, 233, 236, 246),
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height - 415,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            buildCategoryItem(context, "Pakaian Adat", "assets/Images/PakaianAdat.png", const PakaianadatScreen()),
                            buildCategoryItem(context, "Tarian Daerah", "assets/Images/TarianDaerah.png", const TarianadatScreen()),
                            buildCategoryItem(context, "Rumah Adat", "assets/Images/RumahAdat.png", const RumahadatScreen()),
                            buildCategoryItem(context, "Alat Musik", "assets/Images/AlatMusik.png", const AlatmusikScreen()),
                          ],
                        ),
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
  }

  InkWell buildCategoryItem(BuildContext context, String title, String imagePath, Widget destination) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => destination,
        ));
      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 190, 83, 128),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(10),
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SizedBox(
              height: 250,
              width: MediaQuery.of(context).size.width - 20,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20), // Set border radius for the image
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Konfirmasi'),
          content: const Text('Apakah Anda yakin ingin keluar dari akun ini?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('Tidak'),
            ),
            ElevatedButton(
              onPressed: () {
                FirebaseAuth.instance.signOut().then((value) {
                  Navigator.of(context).popUntil((route) => route.isFirst); // Close the dialog
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                });
              },
              child: const Text('Ya'),
            ),
          ],
        );
      },
    );
  }
}
