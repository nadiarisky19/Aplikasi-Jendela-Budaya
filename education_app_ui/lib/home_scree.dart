import 'package:education_app_ui/logout.dart';
import 'package:education_app_ui/password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:education_app_ui/Utils/colors.dart';
import 'package:education_app_ui/Utils/informasi.dart';
import 'package:education_app_ui/belajar_screen.dart';
import 'package:education_app_ui/game.dart';
import 'package:education_app_ui/Utils/pakaianadat.dart';
import 'package:education_app_ui/Utils/alatmusik.dart';
import 'package:education_app_ui/Utils/rumahadat.dart';
import 'package:education_app_ui/Utils/tariandaerah.dart';
import 'package:education_app_ui/profile.dart';
import 'package:education_app_ui/unduhan.dart';
import 'package:education_app_ui/password.dart';
import 'package:education_app_ui/logout.dart';

class HomeScree extends StatelessWidget {
  const HomeScree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text(
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
                child: Text(
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
      backgroundImage: AssetImage("assets/Images/profile.jpg"),
      child: Icon(
        Icons.person,
        size: 50, // Sesuaikan ukuran ikon orang di sini
      ),   
      radius: 40, // Sesuaikan ukuran lingkaran profil di sini
    ),
  ),

              decoration: BoxDecoration(
                color: Color.fromARGB(255, 206, 148, 167),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Your Account'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProfileScreen(),
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Add navigation logic here
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.download),
              title: Text('Unduhan'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => UnduhanScreen(),
                ));
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Reset Password'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ChangePasswordPage(),
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Log Out'),
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
              const SizedBox(
                height: 15,
              ),
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
                            const SizedBox(
                              height: 15,
                            ),
                            Image.asset(
                              "assets/Images/hand.png",
                              height: 50,
                              width: 50,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Ayo, belajar budaya di Indonesia!",
                          style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        fontFamily: 'Imbue',
                          )
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      color: primaryColor,
                      child: SizedBox(
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
                          builder: (context) =>
                              BelajarScreen(),
                        ));
                      },
                      child: Text(
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
                          builder: (context) => InformasiScreen(),
                        ));
                      },
                      child: Text(
                        "Informasi",
                        style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => GameScreen(),
                        ));
                      },
                      child: Text(
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
              const SizedBox(
                height: 10,
              ),
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
              const SizedBox(
                height: 10,
              ),
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
                            buildCategoryItem(context, "Pakaian Adat", "assets/Images/PakaianAdat.png", PakaianadatScreen()),
                            buildCategoryItem(context, "Tarian Daerah", "assets/Images/TarianDaerah.png", TarianadatScreen()),
                            buildCategoryItem(context, "Rumah Adat", "assets/Images/RumahAdat.png", RumahadatScreen()),
                            buildCategoryItem(context, "Alat Musik", "assets/Images/AlatMusik.png", AlatmusikScreen()),
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
              color: Color.fromARGB(255, 190, 83, 128),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.all(10),
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 0),
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
          )
        ],
      ),
    );
  }
}

void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Konfirmasi'),
          content: Text('Apakah Anda yakin ingin keluar dari akun ini?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Tidak'),
            ),
            ElevatedButton(
              onPressed: () {
                // Perform logout action here
                print('Logout berhasil');
                // Add logout logic here
                Navigator.of(context).popUntil((route) => route.isFirst); // Close the dialog

              },
              child: Text('Ya'),
            ),
          ],
        );
      },
    );
  }


                         
