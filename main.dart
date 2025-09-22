import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Header(),
                SizedBox(height: 40),
                About(),
                SizedBox(height: 40),
                Pendidikan(),
                SizedBox(height: 40),
                Hobby(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(999),
            child: Image(
              image: AssetImage('images/Fadhil.png'),
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Khanahaya Adriano Fadhil Adyatma",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          SizedBox(height: 20),
          Text(
            "2309106111",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          SizedBox(height: 24),
          Row(
            spacing: 12,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(Icons.location_city, size: 18, color: Colors.grey),
                  SizedBox(width: 4),
                  Text(
                    "Kota Bangun",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.calendar_month, size: 18, color: Colors.grey),
                  SizedBox(width: 4),
                  Text(
                    "2005",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Tentang Saya",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 17, 132, 226),
          ),
          textAlign: TextAlign.start,
        ),
        SizedBox(height: 16),
        Text(
          "Perkenalkan, saya Khanahaya Adriano Fadhil Adyatma, mahasiswa Program Studi Informatika di Universitas Mulawarman. Saya memiliki ketertarikan yang mendalam dalam bidang teknologi, terutama dalam eksplorasi berbagai inovasi dan perkembangan terbaru. Di luar aktivitas akademik, saya juga menyempatkan diri untuk mengasah keterampilan dan hobi pribadi. Aplikasi ini saya buat sebagai wadah untuk berbagi cerita, pengalaman, serta pengetahuan seputar dunia teknologi, pendidikan, dan hobi yang saya tekuni.",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.normal,
            color: const Color.fromARGB(255, 0, 0, 0),
          ),
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}

class Pendidikan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Pendidikan",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 17, 132, 226),
          ),
        ),
        SizedBox(height: 16),
        Containerpendidikan(
          icon: Icons.school,
          pendidikan: "Sekolah Dasar",
          deskripsi: "SDN 005 Kota Bangun",
        ),
        SizedBox(height: 16),
        Containerpendidikan(
          icon: Icons.school,
          pendidikan: "Sekolah Menengah Pertama",
          deskripsi: "SMP Negeri 2 Kota Bangun",
        ),
        SizedBox(height: 16),
        Containerpendidikan(
          icon: Icons.school,
          pendidikan: "Sekolah Menengah Atas",
          deskripsi: "SMA Negeri 1 Kota Bangun",
        ),
      ],
    );
  }
}

class Hobby extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hobby",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 17, 132, 226),
          ),
        ),
        SizedBox(height: 16),
        Containerhobby(
          icon: Icons.sports,
          hobby: "Olahraga",
          deskripsi: "Sepak Bola, Futsal, dan Badminton",
        ),
        SizedBox(height: 16),
        Containerhobby(
          icon: Icons.games,
          hobby: "Game",
          deskripsi: "Point Blank, Roblox",
        ),
        SizedBox(height: 16),
        Containerhobby(
          icon: Icons.music_note,
          hobby: "Music",
          deskripsi: "The Weekend, Lil Wayne, Pop Smoke",
        ),
      ],
    );
  }
}

class Containerpendidikan extends StatelessWidget {
  final IconData icon;
  final String pendidikan;
  final String deskripsi;

  const Containerpendidikan({
    super.key,
    required this.icon,
    required this.pendidikan,
    required this.deskripsi,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 0, 0, 0),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, size: 16, color: Colors.white),
        ),
        SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              pendidikan,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 66, 27, 27),
              ),
            ),
            SizedBox(height: 8),
            Text(
              deskripsi,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Containerhobby extends StatelessWidget {
  final IconData icon;
  final String hobby;
  final String deskripsi;

  const Containerhobby({
    super.key,

    required this.icon,
    required this.hobby,
    required this.deskripsi,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 0, 0, 0),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, size: 16, color: Colors.white),
        ),
        SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              hobby,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 66, 27, 27),
              ),
            ),
            SizedBox(height: 8),
            Text(
              deskripsi,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
