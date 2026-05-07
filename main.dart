import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WorkshopPage(),
    );
  }
}

class WorkshopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF9370DB),

        title: Text(
          "Event Workshop",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),

        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Farah Fadhila Az Zahra",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "231011400418 | Mahasiswa",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          workshopCard(
            context,
            "Big Data Analytics",
            "10 Mei 2026",
            "09.00 - 11.00 WIB",
            "Lab Komputer",
            "30 orang",
          ),

          workshopCard(
            context,
            "Data Science",
            "12 Mei 2026",
            "08.00 - 12.00 WIB",
            "Aula Kampus",
            "50 orang",
          ),

          workshopCard(
            context,
            "Teknik Data Mining",
            "15 Mei 2026",
            "10.00 - 14.00 WIB",
            "Ruang 301",
            "25 orang",
          ),
        ],
      ),
    );
  }

  Widget workshopCard(
    BuildContext context,
    String judul,
    String tanggal,
    String waktu,
    String lokasi,
    String kuota,
  ) {
    return Center(
      child: Container(
        width: 400,
        margin: EdgeInsets.only(bottom: 16),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),

          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),

        child: Padding(
          padding: EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                judul,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),

              Row(
                children: [
                  Icon(Icons.calendar_today, size: 16),
                  SizedBox(width: 6),
                  Text(tanggal),
                ],
              ),

              SizedBox(height: 6),

              Row(
                children: [
                  Icon(Icons.access_time, size: 16),
                  SizedBox(width: 6),
                  Text(waktu),
                ],
              ),

              SizedBox(height: 6),

              Row(
                children: [
                  Icon(Icons.location_on, size: 16),
                  SizedBox(width: 6),
                  Text(lokasi),
                ],
              ),

              SizedBox(height: 6),

              Row(
                children: [
                  Icon(Icons.people, size: 16),
                  SizedBox(width: 6),
                  Text(kuota),
                ],
              ),

              SizedBox(height: 12),

              Align(
                alignment: Alignment.centerRight,

                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Berhasil daftar $judul"),
                      ),
                    );
                  },

                  child: Text("Daftar"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}