import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileKelompokDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Kelompok'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildProfileDetail(
              image: 'assets/arsa.png',
              name: 'Arsa Cahaya Pradipta',
              ttl: 'Surabaya, 6 Maret 2004',
              address: 'Kebonsari Elveka II/No.4',
              phoneNumber: '0822-5704-8548',
              email: '22082010015@student.upnjatim.ac.id',
              githubUrl: 'https://github.com/arsa-cahaya',
              educationHistory: '(2019 - 2022) SMKN 1 Surabaya',
              awards:
                  '(2023) Juara 1 Lomba UI/UX Technotainment UKMFT-ITC Universitas Trunojoyo Madura',
            ),
            SizedBox(height: 16),
            _buildProfileDetail(
              image: 'assets/filda.jpg',
              name: 'Filda Dwi Meirina',
              ttl: 'Lamongan, 18 Mei 2004',
              address: 'Dsn Kepatihan, Desa Sukorejo RT.08/RW.02',
              phoneNumber: '0852-3212-6385',
              email: '22082010025@student.upnjatim.ac.id',
              githubUrl: 'https://github.com/Anndafildaa',
              educationHistory: '(2019 - 2022) SMAN 3 Lamongan',
              awards: '-',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileDetail({
    required String image,
    required String name,
    required String ttl,
    required String address,
    required String phoneNumber,
    required String email,
    required String githubUrl,
    required String educationHistory,
    required String awards,
  }) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage(image),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildDetailItem('Nama', name),
                _buildDetailItem('TTL', ttl),
                _buildDetailItem('Alamat', address),
                _buildDetailItem('No. HP', phoneNumber),
                _buildDetailItem('Email', email),
                _buildDetailItem('URL Profil Github', githubUrl),
                _buildDetailItem('Riwayat Pendidikan', educationHistory),
                _buildDetailItem('Penghargaan', awards),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailItem(String title, String content) {
    Color textColor = Colors.black; // Warna default teks
    bool clickable =
        false; // Untuk menentukan apakah teks dapat diklik atau tidak

    // Periksa jika judul adalah 'Email' atau 'URL Profil Github'
    if (title == 'Email') {
      textColor = Colors.blue; // Warna teks menjadi biru
      clickable = true; // Teks dapat diklik
    } else if (title == 'URL Profil Github') {
      textColor = Colors.blue; // Warna teks menjadi biru
      clickable = true; // Teks dapat diklik
    }

    return Column(
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
        // Gunakan InkWell hanya jika teks dapat diklik
        clickable
            ? InkWell(
                onTap: () {
                  if (title == 'Email') {
                    launch('mailto:$content'); // Meluncurkan aplikasi email
                  } else {
                    launch(content); // Meluncurkan URL di browser
                  }
                },
                child: Text(
                  content,
                  style: TextStyle(
                    fontSize: 16,
                    color: textColor, // Menggunakan warna sesuai kondisi
                  ),
                ),
              )
            : Text(
                content,
                style: TextStyle(
                  fontSize: 16,
                  color: textColor, // Menggunakan warna sesuai kondisi
                ),
              ),
        SizedBox(height: 16),
      ],
    );
  }
}
