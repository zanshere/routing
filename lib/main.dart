import 'dart:ui';
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
      title: 'Dreamy Navbar',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
        textTheme: GoogleFonts.lexendTextTheme(), // 🩵 Global Lexend Font
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  final pages = const [
    FirstPage(),
    SecondPage(),
    ThirdPage(),
    FourthPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 550),
        transitionBuilder: (Widget child, Animation<double> animation) {
          // 🎬 POP animation (scale + fade)
          final fade = CurvedAnimation(parent: animation, curve: Curves.easeInOut);
          final scale = Tween<double>(begin: 0.9, end: 1.0)
              .animate(CurvedAnimation(parent: animation, curve: Curves.easeOutBack));

          return FadeTransition(
            opacity: fade,
            child: ScaleTransition(scale: scale, child: child),
          );
        },
        child: pages[currentIndex],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(25)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: BottomNavigationBar(
            backgroundColor: Colors.black.withOpacity(0.3),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white70,
            currentIndex: currentIndex,
            onTap: (i) => setState(() => currentIndex = i),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: 'First'),
              BottomNavigationBarItem(icon: Icon(Icons.search_rounded), label: 'Second'),
              BottomNavigationBarItem(icon: Icon(Icons.person_rounded), label: 'Third'),
              BottomNavigationBarItem(icon: Icon(Icons.settings_rounded), label: 'Fourth'), 
            ],
          ),
        ),
      ),
    );
  }
}

// Yora Section
class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Halaman Pertama',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF3B1E76), Color(0xFF283593), Color(0xFF4A90E2)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Hello There 👋',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 25),
              Image.asset('assets/images/nyan-pls-emote.gif', height: 200, fit: BoxFit.contain),
              const SizedBox(height: 25),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text.rich(
                  TextSpan(
                    text: 'Ini adalah halaman pertama yang dibuat oleh ',
                    style: TextStyle(fontSize: 16, color: Colors.white, height: 1.5),
                    children: [
                      TextSpan(
                        text: 'Joel Christo',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.yellowAccent),
                      )
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Zanshere Section
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Halaman Kedua',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0D47A1), Color(0xFF006064), Color(0xFF26C6DA)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Hello There 👋',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 25),
              Image.asset('assets/images/finn-dance.gif', height: 200, fit: BoxFit.contain),
              const SizedBox(height: 25),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text.rich(
                  TextSpan(
                    text: 'Ini adalah halaman kedua yang dibuat oleh ',
                    style: TextStyle(fontSize: 16, color: Colors.white, height: 1.5),
                    children: [
                      TextSpan(
                        text: 'Muhammad Fauzan',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.amberAccent),
                      )
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Reckon Section
class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Halaman Ketiga',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFA1C4FD), Color(0xFF2A5298),Color(0xFF1E3C72) ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Hello There 👋',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 25),
              Image.asset('assets/images/courage-typing.gif', height: 200, fit: BoxFit.contain),
              const SizedBox(height: 25),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text.rich(
                  TextSpan(
                    text: 'Ini adalah halaman ketiga yang dibuat oleh ',
                    style: TextStyle(fontSize: 16, color: Colors.white, height: 1.5),
                    children: [
                      TextSpan(
                        text: 'Miftah Irsyad Tamam',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.lightGreenAccent),
                      )
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// Rafif Section
class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Halaman Keempat',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 187, 27, 174), Color.fromARGB(255, 188, 193, 204), Color.fromARGB(255, 165, 219, 213)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Ya.... beginilah halaman terakhir 👋',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 0, 0)),
              ),
              const SizedBox(height: 25),
              Image.asset('assets/images/madoka-magica-anime.gif', height: 200, fit: BoxFit.contain),
              const SizedBox(height: 25),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text.rich(
                  TextSpan(
                    text: 'Ini adalah halaman keempat yang dibuat oleh ',
                    style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 0, 0, 0), height: 1.5),
                    children: [
                      TextSpan(
                        text: 'Rafif Firstyan Susanto',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 202, 233, 66)),
                      )
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
