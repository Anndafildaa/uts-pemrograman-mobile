class ProdiData {
  final String title;
  final String visi;
  final List<String> misi; // Change type to List<String>
  final String akreditasi;
  final String profil;
  final String ketuaProdi;
  final List<String> dosen;
  final String website;
  final String email;
  final List<String> prestasi;

  ProdiData({
    required this.title,
    required this.visi,
    required this.misi,
    required this.akreditasi,
    required this.profil,
    required this.ketuaProdi,
    required this.dosen,
    required this.website,
    required this.email,
    required this.prestasi,
  });
}

List<ProdiData> dummyProdiData = [
  ProdiData(
    title: 'Administrasi Negara',
    profil:
        'Program Studi Administrasi Publik Fakultas Ilmu Sosial dan Ilmu Politik UPN “Veteran” Jawa Timur (FISIP-UPNVJT) diselenggarakan berdasarkan keputusan Rektor 92/UN63/KP/2020 tentang perubahan nama Program Studi Administrasi Publik. Mulai tahun 2022 hingga tahun 2026, Prodi Administrasi Publik terakreditasi UNGGUL. Selain itu, Prodi Administrasi Publik juga telah terakreditasi Internasional FIBAA. Program Studi Administrasi Publik Fakultas Ilmu Sosial dan Ilmu Politik UPN “Veteran” Jawa Timur (FISIP-UPNVJT) didirikan untuk memenuhi kebutuhan tenaga profesional dalam bidang Administrasi Publik dan membantu pemerintah dalam menyediakan tenaga profesional yang kompeten dan memiliki daya saing. Selain itu, Program Studi Administrasi Publik Fakultas Ilmu Sosial dan Ilmu Politik UPN “Veteran” Jawa Timur (FISIP-UPNVJT) didirikan untuk menghasilkan Sarjana Administrasi Publik yang memiliki integritas, kepribadian, kepekaan sosial, karakter yang tangguh, serta kompetensi keilmuan yang memadai dan daya saing tinggi.',
    visi:
        'MENJADI PROGRAM STUDI ILMU ADMINISTRASI NEGARA UNGGUL BERKARAKTER BELA NEGARA',
    misi: [
      '1. Menyelenggarakan dan mengembangkan pendidikan bidang ilmu administrasi negara yang berkarakter bela negara',
      '2. Meningkatkan budaya riset dalam pengembangan ilmu administrasi negara yang berdayaguna untuk peningkatkan kesejahteraan masyarakat',
      '3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset dan kearifan lokal',
      '4. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu di program studi ilmu administrasi negara',
      '5. Meningkatkan kerjasama institusional dengan stakeholders baik dalam dan luar negeri',
    ],
    akreditasi: 'UNGGUL',
    ketuaProdi: 'Dra. Susi Hardjati, M.AP ',
    dosen: [
      '1. Drs. Ananta Prathama, M.Si',
      '2. Indira Arundinasari, S.AP.,M.AP ',
      '3. Bintii Azizatutun N., S.IAN.,M.P.A',
      '4. Dr. Diana Hertati, M.Si',
      '5. Bayu Priambodo, S.IP.,M.AP'
    ],
    website: 'https://adneg.upnjatim.ac.id/',
    email: ' adneg@upnjatim.ac.id',
    prestasi: [
      'a) Anggraini Sofia Putri, Nain Nur Kholif, Aurelli Salsabila Arieswati (2022) - Juara 2 Business Plan Competition B-Fest 2022',
      'b) Amelia Diva Effendy (2020) - Juara 1 Business Model Canvas Auction 2021: Festa Creativa',
      'c) Maslikhah Surani (2019) - Medali Perak Karate PON XX Papua 2021',
    ],
  ),
  ProdiData(
    title: 'Administrasi Bisnis',
    profil:
        'Progdi Adbis berdiri pada tahun 1993 berdasarkan Surat Keputusan Menhankam Nomor Kep/01/II/1993, tanggal 27 Pebruari 1993 dengan status Negeri Kedinasan. Pada tahun 1994, berdasarkan Surat Keputusan Bersama Menhankam dan Mendukbud Nomor: Kep/0373/U/1994 – Kep/10/XI/1994, tanggal 29 Nopember 1994, UPN “Veteran” Jatim berubah statusnya menjadi Perguruan Tinggi Swasta dengan semua progdinya berstatus “Disamakan”. Pada tanggal 6 Oktober 2014 UPN “Veteran” berubah statusnya menjadi Perguruan Tinggi Negeri (PTN), berdasarkan Peraturan Presiden Nomor: 122 Tahun 2014 tentang Penegerian UPN “Veteran” Jawa Timur. ',
    visi:
        'VISI PROGRAM STUDI ADMINISTRASI BISNIS FAKULTAS ILMU SOSIAL DAN ILMU POLITIK UPN “VETERAN” JAWA TIMUR (FISIP-UPNVJT) SEBAGAI LEMBAGA PENGEMBANGAN ILMU DAN TEKNOLOGI DI BIDANG ADMINISTRASI BISNIS YANG UNGGUL, TERPERCAYA DAN BERKARAKTER BELA NEGARA PADA TAHUN 2024”',
    misi: [
      '1.Menyelenggarakan pendidikan dan pengajaran di bidang Administrasi Bisnis yang berkualitas, relevan, dan berorientasi pada kebutuhan masyarakat, bangsa, dan negara ',
      '2. Menyelenggarakan kegiatan penelitian di bidang Administrasi Bisnis utamanya pada bidang pemasaran, keuangan, sumber daya manusia, sistem informasi bisnis, operasi bisnis, kebijakan bisnis serta mengimplementasikannya dalam pendidikan dan pengajaran serta pengabdian pada masyarakat. ',
      '3. Mengembangkan dan menguatkan hubungan kerjasama dengan berbagai pihak baik dengan pemerintah maupun lembaga swasta, dalam dan luar negeri.',
    ],
    akreditasi: 'A',
    ketuaProdi: 'Dr.Acep Samsudin., S,Sos.,MM.,MA',
    dosen: [
      '1. Dr.Ir. Rusdi Hidayat N, M.Si',
      '2.  Dr. Drs. Nurhadi, M.Si ',
      '3. R Yuniadi Rusdianto, M.Si',
      '4. Dra. Ety Dwi Susanti, M.Si',
      '5. Dra. Sonja Andarini, M.Si ',
    ],
    website: 'https://adbis.upnjatim.ac.id/  ',
    email: 'adbisupnvjt@gmail.com',
    prestasi: [
      'a) Julius Emmanuel Sihite (2023) - Juara 1 KATA Beregu Putra Porprov Jatim 2023 ',
      'b) Silvia Nur Safitri (2021) - Juara Persahabatan Duta Perlindungan Anak Jawa Timur 2023 ',
      'c) Talitha Karisma Syahrani (2021) - Juara 3 100m Gaya Bebas, Juara 2 50m Gaya Kupu, dan Juara 3 50m Gaya Bebas Pomprov Jawa Timur II 2023 ',
    ],
  ),
  ProdiData(
    title: 'Linguistik',
    profil:
        'Program studi (prodi) S1 Linguistik Indonesia di UPN Jatim menjadi prodi pertama di Indonesia, yang memusatkan pada kajian linguistik atau kebahasaan. Itu dinilai sejalan dengan amanah dari Renstra UPN Jatim, serta wujud kontribusi nyata dalam menyiapkan sumber daya unggul pada bidang humaniora, khususnya keilmuan linguistik. Keilmuan linguistik bisa untuk meningkatkan ketahanan nasional di bidang kebahasaan, sebagai wujud bela negara.',
    visi:
        'MENJADI PUSAT PENGKAJIAN LINGUISTIK INDONESIA YANG UNGGUL PADA TINGKAT NASIONAL DAN INTERNASIONAL SERTA BERKARAKTER BELA NEGARA',
    misi: [
      '1. Menyelenggarakan pendidikan di bidang Linguistik Indonesia untuk menghasilkan lulusan yang inovatif, adaptif, dan responsif terhadap tantangan global ',
      '3.Mengembangkan penelitian di bidang Linguistik Indonesia yang berorientasi pada kemajuan ilmu pengetahuan, teknologi, dan seni untuk menuju research university ',
      '4. Mendedikasikan ilmu Linguistik Indonesia untuk kemajuan masyarakat ',
      '5. Membangun kerja sama dengan institusi pemerintah dan swasta pada tingkat nasional dan internasional',
    ],
    akreditasi: 'BAIK',
    ketuaProdi: 'Dr. Endang Sholihatin, S.Pd., M.Pd.',
    dosen: [
      '1. Dewi Puspa Arum, S.Pd., M.Pd.',
      '2. Adelia Savitri, S.Hum., M.Hum.',
      '3. Ilmatus Sadiyah, S.Pd., M.Hum.',
      '4. Ahmad Suyuti, S.Pd., M.A.',
    ],
    website: 'https://linguistik.upnjatim.ac.id/ ',
    email: 'linguistik@upnjatim.ac.id',
    prestasi: [
      '-',
    ],
  ),
  ProdiData(
    title: 'Hubungan Internasional',
    profil:
        'Program Sarjana Hubungan Internasional didirikan pada 30 September 2011, di bawah Fakultas Ilmu Sosial dan Politik oleh Keputusan Menteri Pendidikan Nasional Nomor 216/E/O/2011. Sebagai departemen yang relatif baru, HI diberikan status "B" (Baik) oleh Badan Akreditasi Nasional Perguruan Tinggi Indonesia (BAN-PT) nomor 1071/1/1/SK/BAN-PT/Akred/S/IV/2019. Di antara beberapa departemen HI di Provinsi Jawa Timur, HI UPNVJT menempatkan penekanan unik pada pendekatan glocal mereka. Sementara sebagian besar departemen HI di Indonesia sering menggunakan perspektif makro untuk menganalisis fenomena global, HI UPNVJT bertujuan untuk melihat konteks lokal untuk melihat gambaran yang lebih luas. Karakteristik glocal yang diterapkan sebagai kurikulum inti HI, sejalan dengan visi universitas untuk menerapkan karakter negara dan juga bersesuaian dengan standar baru pendidikan tinggi nasional, yaitu kurikulum "Kampus Merdeka" yang dirilis oleh Menteri Pendidikan dan Kebudayaan. ',
    visi:
        'MENJADI JURUSAN ILMU HUBUNGAN INTERNASIONAL YANG UNGGUL DALAM BIDANG DIPLOMASI-NEGOSIASI DAN PERTAHANAN-KEAMANAN DALAM RANGKA MEMBERIKAN SUMBANGAN KEILMUAN BAGI BANGSA DAN NEGARA',
    misi: [
      '1. Menghasilkan lulusan yang memiliki integritas, kepribadian, sensitivitas sosial, karakter yang kuat, serta kompetensi ilmiah yang baik dan kompetitif tinggi. ',
      '2. Menyebarkan karya ilmiah, baik artikel ilmiah maupun hasil penelitian dalam bidang Hubungan Internasional.',
      '3. Meningkatkan dan memperkuat berbagai kerjasama dengan komunitas pembuat kebijakan, untuk meningkatkan peran dan relevansi studi Hubungan Internasional yang mampu memberikan kontribusi nyata kepada masyarakat, bangsa, dan negara, serta kepada komunitas dunia.',
    ],
    akreditasi: 'UNGGUL',
    ketuaProdi: 'Dra. Herlina Suksmawati, M.Si.',
    dosen: [
      '1. Adiasri Putri Purbantina, Ph.D',
      '2. Megahnanda Alidyan Kresnawati, S.IP., M.IP. ',
      '3. Prihandono Wibowo, S.Hub.Int., M.Hub.Int. ',
      '4. Resa Rasyidah, S.Hub.Int., M.Hub.Int. ',
      '5. Praja Firdaus Nuryananda, S.Hub.Int., M.Hub.Int. ',
    ],
    website: 'https://hubint.upnjatim.ac.id/  ',
    email: 'hubint@upnjatim.ac.id',
    prestasi: [
      'a) Alinda Rana Permata Surya (2023) - Juara 3 Basket Putri 5x5 Piala Walikota 2023 ',
      'b) Ryan Agung Priangga (2023) - Juara 3 Taekwondo Kyorugi Senior Putra Under 74 Kg Porprov Jatim VIII 2023 ',
      'c) Anggi Koenjaini Putri (2019) - Juara 3 ESSAY COMPETITION: EU-ASEAN SYNERGIES FOR A GREEN & DIGITAL WORLD',
    ],
  ),
  ProdiData(
    title: 'Pariwisata',
    profil:
        'Program Studi Pariwisata UPN “Veteran” Jawa Timur berdiri pada tanggal tanggal 8 April 2020 berdasarkan Keputusan Menteri Pendidikan dan Kebudayaan Republik Indonesia Nomor: 433/M/2020. Pendirian program studi ini untuk menjawab tantangan dan perkembangan industri pariwisata di Indonesia dan dunia.  ',
    visi:
        '“MENJADI PROGRAM STUDI PARIWISATA UNGGULAN YANG ADAPTIF DAN INOVATIF MELALUI PENYELENGGARAAN PENDIDIKAN YANG BERKARAKTER BELA NEGARA DAN BERWAWASAN LINGKUNGAN DALAM MEWUJUDKAN PARIWISATA BERKELANJUTAN DAN BERORIENTASI GLOBAL” ',
    misi: [
      '1. Menyelenggarakan dan mengembangkan pendidikan bidang pariwisata yang adaptif, inovatif dan berkarakter bela negara ',
      '2. Meningkatkan budaya riset dalam pengembangan ilmu pariwisata yang berdaya guna untuk peningkatan kesejahteraan masyarakat ',
      '3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset dan kearifan lokal ',
      '4. Menyelenggarakan tata kelola yang bersih dalam rangka mencapai akuntabilitas pengelolaan anggaran di program studi Pariwisata ',
      '5. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu di program studi Pariwisata ',
      '6. Meningkatkan kerjasama institusional dengan stakeholders baik dalam dan luar negeri '
    ],
    akreditasi: 'BAIK',
    ketuaProdi: 'Dr. Yudiana Indriastuti, S.Sos., M.Si',
    dosen: [
      '1. Leily Suci Rahmatin, S.Par., M.Par',
      '2. Sheidy Yudhiasta, S.Pd., M.Par',
      '3. Wahyuni, SST.Par., M.Par',
      '4. Dr. A. Muammar Alawi, M.Pd.I. ',
      '5. Joko Mijiarto, S.Hut., M.Si ',
    ],
    website: 'https://pariwisata.upnjatim.ac.id/   ',
    email: 'pariwisata@upnjatim.ac.id',
    prestasi: [
      'a) Choirunnisa (2021) - Winner Puteri Pariwisata dan Ekonomi Kreatif Jawa Timur 2024',
      'b) Bella Aiska Octavia Ramadhina (2023) - Juara 2 dan Juara 3 Porprov VIII Cabang Olahraga Kickboxing ',
      'c) Septi Anugrah Aniqotul Wahda (2023) - Juara 1 Medali Emas Porprov VIII Sepak Bola Putri Sidoarjo ',
    ],
  ),
];
