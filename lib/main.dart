import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FISIP",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 241, 113),
          toolbarHeight: 120, // Menambahkan tinggi App Bar menjadi 100
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(4),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/fisip-nobg.png'),
                ),
              ),
              SizedBox(width: 8),
              Text(
                "PROFIL FAKULTAS ILMU SOSIAL DAN ILMU POLITIK",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8),
                    Text(
                      "Keberadaan Fakultas Ilmu Sosial dan Ilmu Politik diawali dengan berdirinya Fakultas Ilmu Administrasi Negara dan Administrasi Niaga. Satu tahun kemudian Fakultas Ilmu Administrasi membuka satu jurusan baru yaitu jurusan Ilmu Komunikasi pada tahun ajaran 1994/1995. Dalam perkembangan selanjutnya terbit Surat Keputusan Rektor UPN “Veteran” Jawa Timur Nomor : Skep/101/IX/2005 tanggal 6 Mei 2005 tentang Pergantian nama Fakultas Ilmu Administrasi UPN”Veteran” Jawa Timur menjadi Fakultas Ilmu Sosial dan Ilmu Politik. Fakultas Ilmu Sosial dan Ilmu Politik memiliki beberapa program studi diantaranya yaitu :",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 8),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ProgramStudiList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProgramStudiList extends StatelessWidget {
  final List<Map<String, String>> programStudiList = [
    {'title': 'Administrasi Negara', 'image': 'assets/adneg.jpg'},
    {'title': 'Administrasi Bisnis', 'image': 'assets/adbis.jpg'},
    {'title': 'Ilmu Komunikasi', 'image': 'assets/ikom.jpg'},
    {'title': 'Hubungan Internasional', 'image': 'assets/hi.jpg'},
    {'title': 'Pariwisata', 'image': 'assets/pariwisata.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: programStudiList.map((program) {
        return ProgramStudiTile(
          title: program['title']!,
          image: program['image']!,
        );
      }).toList(),
    );
  }
}

class ProgramStudiTile extends StatelessWidget {
  final String title;
  final String image;

  const ProgramStudiTile({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          // Tambahkan aksi ketika program studi dipilih
        },
        leading: CircleAvatar(
          backgroundImage: AssetImage(image),
          radius: 30,
        ),
        title: Text(title),
        subtitle: const Text("Klik untuk detail"),
        tileColor: Colors.white70,
      ),
    );
  }
}
