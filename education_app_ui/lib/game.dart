import 'dart:async';
import 'dart:math';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image/image.dart' as img;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GameScreen(
        titleStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        gameTitleStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}

class GameScreen extends StatefulWidget {
  final TextStyle titleStyle;
  final TextStyle gameTitleStyle;

  GameScreen({
    this.titleStyle = const TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    this.gameTitleStyle = const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  });

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  List<String> _identifiers = [];
  List<bool> _flipped = [];
  List<bool> _matched = [];
  int? _firstFlippedIndex;
  bool _isChecking = false;
  int _score = 0;

  @override
  void initState() {
    super.initState();
    _initializeGame();
  }

  void _initializeGame() {
    _identifiers = ['A', 'A', 'B', 'B', 'C', 'C', 'D', 'D', 'E', 'E', 'F', 'F'];
    _identifiers.shuffle();
    _flipped = List<bool>.filled(_identifiers.length, false);
    _matched = List<bool>.filled(_identifiers.length, false);
    _firstFlippedIndex = null;
    _isChecking = false;
    _score = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Game',
          style: widget.titleStyle,
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255), // Warna background AppBar
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 245, 235, 241), // Warna ungu
              Color.fromARGB(255, 216, 84, 187), // Warna merah muda
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Memory Card Game',
                style: widget.gameTitleStyle,
              ),
              SizedBox(height: 20),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                alignment: WrapAlignment.center,
                children: List.generate(_identifiers.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      _flipCard(index);
                    },
                    child: CardWidget(
                      identifier: _identifiers[index],
                      isFlipped: _flipped[index],
                      isMatched: _matched[index],
                    ),
                  );
                }),
              ),
              SizedBox(height: 20),
              Text(
                'Score: $_score',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: _resetGame,
                    child: Text('Reset'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // Kembali ke layar sebelumnya (home screen)
                    },
                    child: Text('Back'),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  void _flipCard(int index) {
    if (_isChecking || _flipped[index] || _matched[index]) return;

    setState(() {
      _flipped[index] = true;

      if (_firstFlippedIndex == null) {
        _firstFlippedIndex = index;
      } else {
        _isChecking = true;
        Future.delayed(Duration(seconds: 1), () {
          setState(() {
            if (_identifiers[_firstFlippedIndex!] == _identifiers[index]) {
              _matched[index] = true;
              _matched[_firstFlippedIndex!] = true;
              _score++;
            } else {
              _flipped[index] = false;
              _flipped[_firstFlippedIndex!] = false;
            }
            _firstFlippedIndex = null;
            _isChecking = false;
          });
        });
      }
    });
  }

  void _resetGame() {
    setState(() {
      _initializeGame();
    });
  }
}

class CardWidget extends StatelessWidget {
  final String identifier;
  final bool isFlipped;
  final bool isMatched;

  CardWidget({
    required this.identifier,
    required this.isFlipped,
    required this.isMatched,
  });

  @override
  Widget build(BuildContext context) {
    String imagePath = 'assets/images/image_${identifier.toLowerCase()}.png'; // Path to your image assets
    return AnimatedContainer(
      width: 80, // Lebar kartu
      height: 120, // Tinggi kartu
      duration: Duration(milliseconds: 500),
      curve: Curves.easeOut,
      decoration: BoxDecoration(
        color: isFlipped || isMatched ? Color.fromARGB(255, 212, 193, 216) : Colors.grey[300],
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5.0,
            spreadRadius: 1.0,
            offset: Offset(0.0, 2.0),
          ),
        ],
      ),
      child: Center(
        child: isFlipped || isMatched
            ? Image.asset(
                imagePath,
                fit: BoxFit.cover,
              )
            : SizedBox(), // Tampilkan gambar jika kartu terbalik atau cocok, jika tidak tampilkan kosong
      ),
    );
  }
}
