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
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Travel Diary', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.teal.shade50, Colors.teal.shade100],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Text(
                  'My Trips',
                  style: GoogleFonts.pacifico(
                    fontSize: 28,
                    color: Colors.teal.shade900,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                ..._buildTripCards(isLandscape),
              ],
            ),
          );
        },
      ),
    );
  }

  List<Widget> _buildTripCards(bool isLandscape) {
    final trips = [
      {
        'title': 'Kazakhstan Journey',
        'desc': 'Hiked in the Almaty mountains and admired breathtaking landscapes.',
        'image': 'https://pfst.cf2.poecdn.net/base/image/e0e454692ee226117f0da0281c339e746c1b578cba597430b3a2dc68f7a74c58?w=1024&h=768&pmaid=343430738'
      },
      {
        'title': 'Paris Getaway',
        'desc': 'Visited Eiffel Tower and tasted amazing pastries!',
        'image': 'https://images.unsplash.com/photo-1502602898657-3e91760cbb34'
      },
      {
        'title': 'Japan Adventure',
        'desc': 'Explored Tokyo and Kyoto’s cultural treasures.',
        'image': 'https://images.unsplash.com/photo-1521747116042-5a810fda9664?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDF8fGphcGFufGVufDB8fHx8MTYyMzQxNTE3Nw&ixlib=rb-1.2.1&q=80&w=800'
      },
      {
        'title': 'Maldives Escape',
        'desc': 'Relaxed by the turquoise sea and coral reefs.',
        'image': 'https://images.unsplash.com/photo-1507525428034-b723cf961d3e'
      },
      {
        'title': 'USA Roadtrip',
        'desc': 'From NYC’s skyscrapers to the Grand Canyon – unforgettable!',
        'image': 'https://pfst.cf2.poecdn.net/base/image/afabcf8b8fa658800627ce6869b9fb8cfb40560d4db3f471e0dad39a9196171d?w=1024&h=768&pmaid=343432397'
      },
      {
        'title': 'UAE Experience',
        'desc': 'Enjoyed futuristic architecture and desert safaris in Dubai.',
        'image': 'https://pfst.cf2.poecdn.net/base/image/e70fce4ae75198440f6c224d93946e19dda706e5be1a20ea599111ab5acc0299?w=1024&h=768&pmaid=343433128'
      }
    ];

    return trips.map((trip) {
      return Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        margin: const EdgeInsets.symmetric(vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
              child: Image.network(
                trip['image']!,
                height: isLandscape ? 180 : 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(trip['title']!, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 6),
                  Text(trip['desc']!, style: const TextStyle(fontSize: 16, color: Colors.black87)),
                ],
              ),
            ),
          ],
        ),
      );
    }).toList();
  }
}
