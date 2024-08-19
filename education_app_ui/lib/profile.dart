import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile Page',
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const ProfileBody(),
    );
  }
}

class ProfileBody extends StatefulWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  _ProfileBodyState createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController educationController = TextEditingController();
  DateTime? selectedDate;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? _user;

  @override
  void initState() {
    super.initState();
    _user = _auth.currentUser;
    _loadProfileData();
  }

  Future<void> _loadProfileData() async {
    if (_user != null) {
      DocumentSnapshot userDoc =
          await _firestore.collection('users').doc(_user!.uid).get();
      if (userDoc.exists) {
        Map<String, dynamic> data = userDoc.data() as Map<String, dynamic>;
        setState(() {
          nameController.text = data['name'] ?? '';
          emailController.text = data['email'] ?? '';
          phoneController.text = data['phone'] ?? '';
          dobController.text = data['dob'] ?? '';
          educationController.text = data['education'] ?? '';
          selectedDate = DateTime.tryParse(data['dob'] ?? '');
        });
      }
    }
  }

  Future<void> _saveProfileData() async {
    if (_user != null) {
      await _firestore.collection('users').doc(_user!.uid).set({
        'name': nameController.text,
        'email': emailController.text,
        'phone': phoneController.text,
        'dob': dobController.text,
        'education': educationController.text,
      });
      _showSaveConfirmationDialog(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Your Account',
              style: TextStyle(
                fontFamily: 'Rakkas',
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Stack(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: const AssetImage('assets/profile.jpg'),
                  child: IconButton(
                    icon: const Icon(Icons.camera_alt),
                    onPressed: () {
                      _showOptions(context);
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            _buildTextFieldWithBoxDecoration(
              controller: nameController,
              labelText: 'Nama',
              prefixIcon: Icons.person,
            ),
            const SizedBox(height: 20),
            _buildTextFieldWithBoxDecoration(
              controller: emailController,
              labelText: 'Email',
              prefixIcon: Icons.email,
            ),
            const SizedBox(height: 20),
            _buildTextFieldWithBoxDecoration(
              controller: phoneController,
              labelText: 'No. Telpon',
              prefixIcon: Icons.phone,
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                _selectDate(context);
              },
              child: AbsorbPointer(
                child: _buildTextFieldWithBoxDecoration(
                  controller: dobController,
                  labelText: 'Tanggal Lahir',
                  prefixIcon: Icons.calendar_today,
                ),
              ),
            ),
            const SizedBox(height: 20),
            _buildTextFieldWithBoxDecoration(
              controller: _calculateAge(selectedDate),
              labelText: 'Umur',
              prefixIcon: Icons.person_outline,
            ),
            const SizedBox(height: 20),
            _buildTextFieldWithBoxDecoration(
              controller: educationController,
              labelText: 'Pendidikan',
              prefixIcon: Icons.school,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveProfileData,
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
        dobController.text = pickedDate.toString().substring(0, 10);
      });
    }
  }

  TextEditingController _calculateAge(DateTime? birthDate) {
    if (birthDate != null) {
      final today = DateTime.now();
      final age = today.year - birthDate.year;
      return TextEditingController(text: age.toString());
    } else {
      return TextEditingController();
    }
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    dobController.dispose();
    educationController.dispose();
    super.dispose();
  }

  Widget _buildTextFieldWithBoxDecoration({
    required TextEditingController controller,
    required String labelText,
    required IconData prefixIcon,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 94, 18, 68)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          prefixIcon: Icon(prefixIcon),
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          border: InputBorder.none,
        ),
      ),
    );
  }

  void _showOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text('Ambil Foto'),
                onTap: () {
                  _takePhoto(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.image),
                title: const Text('Pilih Foto dari Galeri'),
                onTap: () {
                  _pickImage(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.delete),
                title: const Text('Hapus Foto'),
                onTap: () {
                  _confirmDelete(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _takePhoto(BuildContext context) {
    // Implementasi pengambilan foto dari kamera
    // Anda dapat menggunakan plugin camera atau metode lainnya
    // Setelah pengambilan foto, Anda dapat melakukan sesuatu dengan fotonya
  }

  void _pickImage(BuildContext context) {
    // Implementasi pemilihan foto dari galeri
    // Anda dapat menggunakan plugin image_picker atau metode lainnya
    // Setelah pemilihan foto, Anda dapat melakukan sesuatu dengan fotonya
  }

  void _showSaveConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Simpan Data'),
          content: const Text('Apakah Anda ingin menyimpan data ini?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Tindakan jika pengguna memilih 'Yes'
                Navigator.pop(context); // Tutup dialog konfirmasi
                Navigator.pop(context); // Kembali ke halaman sebelumnya (ProfileScreen)
              },
              child: const Text('Yes'),
            ),
            TextButton(
              onPressed: () {
                // Tindakan jika pengguna memilih 'No'
                Navigator.pop(context); // Tutup dialog konfirmasi
              },
              child: const Text('No'),
            ),
          ],
        );
      },
    );
  }

  void _confirmDelete(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Konfirmasi'),
          content: const Text('Apakah ingin menghapus foto profil Anda?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Tindakan jika pengguna memilih 'Yes'
                Navigator.pop(context);
              },
              child: const Text('Yes'),
            ),
            TextButton(
              onPressed: () {
                // Tindakan jika pengguna memilih 'No'
                Navigator.pop(context);
              },
              child: const Text('No'),
            ),
          ],
        );
      },
    );
  }
}
