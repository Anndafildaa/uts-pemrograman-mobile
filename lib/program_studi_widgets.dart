import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uts_pemmob/profile_kelompok.dart';
import 'prodi_data.dart';

class ProgramStudi {
  final String title;
  final String image;

  ProgramStudi({required this.title, required this.image});
}

class EmailLink {}

class ProgramStudiList extends StatelessWidget {
  final List<ProgramStudi> programStudiList = [
    ProgramStudi(title: 'Administrasi Negara', image: 'assets/adneg.jpg'),
    ProgramStudi(title: 'Administrasi Bisnis', image: 'assets/adbis.jpg'),
    ProgramStudi(title: 'Linguistik', image: 'assets/linguistik.jpg'),
    ProgramStudi(title: 'Hubungan Internasional', image: 'assets/hi.jpg'),
    ProgramStudi(title: 'Pariwisata', image: 'assets/pariwisata.jpg'),
    ProgramStudi(title: 'Profil Kelompok', image: 'assets/kelompok.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: programStudiList.map((program) {
        return ProgramStudiTile(
          title: program.title,
          image: program.image,
          onTap: () {
            if (program.title == 'Profil Kelompok') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilKelompokDetail()),
              );
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProgramStudiDetail(title: program.title),
                ),
              );
            }
          },
        );
      }).toList(),
    );
  }
}

class ProgramStudiTile extends StatelessWidget {
  final String title;
  final String image;
  final VoidCallback onTap;

  const ProgramStudiTile({
    Key? key,
    required this.title,
    required this.image,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8),
        child: Card(
          elevation: 3,
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(image),
              radius: 30,
            ),
            title: Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text(title),
            ),
            tileColor: Colors.white70,
          ),
        ),
      ),
    );
  }
}

class ProgramStudiDetail extends StatelessWidget {
  final String title;

  const ProgramStudiDetail({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProdiData prodiData = dummyProdiData.firstWhere(
      (element) => element.title == title,
      orElse: () => ProdiData(
        title: '',
        visi: '',
        misi: [],
        akreditasi: '',
        profil: '',
        ketuaProdi: '',
        dosen: [],
        website: '',
        prestasi: [],
        email: '',
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Color.fromARGB(255, 255, 241, 113),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildInfoBox('Profil :', prodiData.profil),
            SizedBox(height: 16),
            _buildInfoBox('Visi :', prodiData.visi),
            SizedBox(height: 16),
            _buildInfoBox('Misi :', prodiData.misi.join('\n')),
            SizedBox(height: 16),
            _buildInfoBox('Akreditasi :', prodiData.akreditasi),
            SizedBox(height: 16),
            _buildInfoBox('Ketua Program Studi :', prodiData.ketuaProdi),
            SizedBox(height: 16),
            _buildInfoBox('Dosen :', prodiData.dosen.join('\n')),
            SizedBox(height: 16),
            _buildInfoBox('Website:', prodiData.website),
            SizedBox(height: 16),
            _buildInfoBox('Email:', prodiData.email),
            SizedBox(height: 16),
            _buildInfoBox(
                'Prestasi Mahasiswa :', prodiData.prestasi.join('\n')),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoBox(String title, String content) {
    return Card(
      elevation: 3,
      color: Colors.white,
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 8),
            Linkify(
              onOpen: (link) {
                if (link is EmailLink) {
                  launch('mailto:${link.url}');
                } else {
                  launch(link.url);
                }
              },
              text: content,
              style: TextStyle(
                fontSize: 16,
              ),
              linkStyle: TextStyle(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
