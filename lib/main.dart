import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
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
        '/': (context) => const FirstPage(),
        '/second': (context) => const SecondPage(),
      },
    );
  }
}

class FirstPage extends StatelessWidget {
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
  constraints: const BoxConstraints.expand(), // 🧩 tambahkan ini
  decoration: const BoxDecoration(
    gradient: LinearGradient(
      colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
  child: SingleChildScrollView(
    child: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 80),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Hello There 👋',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/images/nyan-pls-emote.gif',
              height: 200,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 20),
            Text.rich(
              TextSpan(
                text: 'Ini adalah halaman pertama yang dibuat oleh ',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.white,
                  height: 1.5,
                ),
                children: [
                  TextSpan(
                    text: 'Joel Christo. ',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      color: Colors.yellowAccent,
                    ),
                  ),
                  const TextSpan(
                    text:
                        'Silakan klik tombol di bawah untuk pergi ke halaman kedua.',
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 60),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 24, vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
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
          ],
        ),
      ),
    ),
  ),
),

    );
  }
}


class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Kedua')),
      body: SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Hello There 👋',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            Image.asset('assets/images/finn-dance.gif'),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Text.rich(
                TextSpan(
                  text: 'Ini adalah halaman kedua yang dibuat oleh ',
                  style: TextStyle(fontSize: 16, height: 1.5),
                  children: [
                    TextSpan(
                      text: 'Muhammad Fauzan. ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: 'Silahkan klik button dibawah untuk kembali ke halaman pertama'
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
