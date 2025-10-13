import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh Navigasi (Pindah Halaman)',
      initialRoute: '/',
      routes: {
        '/':(context) => const FirstPage(),
        '/second':(context) => const SecondPage(),
      },
    );
  }
}

class FirstPage extends StatelessWidget{
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Halaman Pertama',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
          begin: Alignment.topLeft,
          end:Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: ElevatedButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
              ),
              backgroundColor: Colors.white.withOpacity(0.9),
              foregroundColor: const Color(0xFF2575FC),
              elevation: 5,
            ),
            icon: const Icon(Icons.arrow_forward_ios_rounded),
            label: Text(
              'Pergi ke Halaman Kedua',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ), 
        ), 
      ),
    );
  }
}

class SecondPage extends StatelessWidget{
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Kedua'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
           child: const Text('Kembali')
        ),
      ),
    );
  }
}