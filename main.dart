import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const TravelDiaryApp());
}

class TravelDiaryApp extends StatelessWidget {
  const TravelDiaryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel Diary',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      home: const AboutPage(),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade700,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.travel_explore, color: Colors.white),
            const SizedBox(width: 8),
            const Text(
              'About',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal.shade200, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Icon(
                  Icons.flight_takeoff,
                  size: 60,
                  color: Colors.teal.shade800,
                ),
              ),
              const SizedBox(height: 15),
              Center(
                child: Text(
                  'Travel Diary',
                  style: GoogleFonts.pacifico(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal.shade900,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'Travel Diary is a mobile application that allows users to record their trips with descriptions and attach photos. It helps users document their journeys, preserve memories, and share experiences.',
                style: TextStyle(fontSize: 18, color: Colors.black87, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 25),
              Divider(thickness: 1.5, color: Colors.teal.shade600),
              const SizedBox(height: 15),
              Text(
                'Credits',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal.shade900,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Developed by Diana Kumarbekova, Kunshuak Asset, Magzhan Kydyrbek in the scope of the course "Cross-platform Development" at Astana IT University.',
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              const SizedBox(height: 5),
              const Text(
                'Mentor (Teacher): Assistant Professor Abzal Kyzyrkanov',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black87),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
