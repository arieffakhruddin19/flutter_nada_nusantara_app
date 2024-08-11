import 'package:url_launcher/url_launcher.dart';

class Nasional {
  final int id;
  final String judul;
  final String pencipta;
  final String photo;
  final String linkVideo;
  final String lirikLaguNasional;
  Nasional({
    required this.id,
    required this.judul,
    required this.pencipta,
    required this.photo,
    required this.linkVideo,
    required this.lirikLaguNasional,
  });

  // Function to launch video URL
  void playVideo() async {
    final Uri url = Uri.parse(linkVideo);

    if (await canLaunchUrl(url)) {
      await launchUrl(
        url,
        mode: LaunchMode
            .externalApplication, // Membuka di browser atau aplikasi lain
      );
    } else {
      throw 'Tidak dapat memutar $linkVideo';
    }
  }
}

final laguNasionalList = [
  Nasional(
    id: 1,
    judul: 'Indonesia Raya',
    pencipta: 'WR. Supratman',
    photo:
        'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgLJAgUju6Q_awUNUFxW6eIiwYzjy_SR6ADoT5KfzmZTMSrZu8LR_qu1XXc4EodkW5-1vTrczfSSm9F-5jqXcA9X6CTjoTL5AER9XdeLV3_PANYzbyjMJSP87lcr3k2bfoC8elqKLyV8CIi/s1920/bendera-indonesia.jpg',
    linkVideo: "https://www.youtube.com/watch?v=1nQZqUGQ_XA",
    lirikLaguNasional: '''
      Indonesia tanah airku
      Tanah tumpah darahku
      Di sanalah aku berdiri
      Jadi pandu ibuku

      Indonesia kebangsaanku
      Bangsa dan tanah airku
      Marilah kita berseru
      Indonesia bersatu

      Hiduplah tanahku
      Hiduplah neg'riku
      Bangsaku, rakyatku, semuanya
      Bangunlah jiwanya
      Bangunlah badannya
      Untuk Indonesia Raya

      (Reff)

      Indonesia raya
      Merdeka, merdeka
      Tanahku, negeriku yang kucinta
      Indonesia raya
      Merdeka, merdeka
      Hiduplah Indonesia raya

      ''',
  ),
  Nasional(
    id: 2,
    judul: 'Tanah Airku',
    pencipta: 'Ibu Soed',
    photo:
        'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgLJAgUju6Q_awUNUFxW6eIiwYzjy_SR6ADoT5KfzmZTMSrZu8LR_qu1XXc4EodkW5-1vTrczfSSm9F-5jqXcA9X6CTjoTL5AER9XdeLV3_PANYzbyjMJSP87lcr3k2bfoC8elqKLyV8CIi/s1920/bendera-indonesia.jpg',
    linkVideo: "https://www.youtube.com/watch?v=E9sABy_xvzE",
    lirikLaguNasional: '''
    Tanah Airku, tidak kulupakan,
    Kan terkenang, selama hidupku
    Biarpun saya pergi jauh,
    Tidak kan hilang dari kalbu
    Tanahku yang kucintai
    Engkau, kuhargai

    Walaupun banyak negeri kujalani,
    Yang mahsyur permai dikata orang,
    Tetapi kampung dan rumahku,
    Di sanalah ku merasa senang
    Tanahku tak kulupakan,
    Engkau kubanggakan.
''',
  ),
  Nasional(
    id: 3,
    judul: 'Bagimu Negeri',
    pencipta: 'Koesbini',
    photo:
        'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgLJAgUju6Q_awUNUFxW6eIiwYzjy_SR6ADoT5KfzmZTMSrZu8LR_qu1XXc4EodkW5-1vTrczfSSm9F-5jqXcA9X6CTjoTL5AER9XdeLV3_PANYzbyjMJSP87lcr3k2bfoC8elqKLyV8CIi/s1920/bendera-indonesia.jpg',
    linkVideo: "https://www.youtube.com/watch?v=4K8eSLGclf4",
    lirikLaguNasional: '''
    Padamu negeri
    Kami berjanji

    Padamu negeri
    Kami berbakti

    Padamu negeri
    Kami mengabdi

    Bagimu negeri
    Jiwa raga kami
''',
  ),
  Nasional(
    id: 4,
    judul: 'Syukur',
    pencipta: 'H. Mutahar',
    photo:
        'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgLJAgUju6Q_awUNUFxW6eIiwYzjy_SR6ADoT5KfzmZTMSrZu8LR_qu1XXc4EodkW5-1vTrczfSSm9F-5jqXcA9X6CTjoTL5AER9XdeLV3_PANYzbyjMJSP87lcr3k2bfoC8elqKLyV8CIi/s1920/bendera-indonesia.jpg',
    linkVideo: "https://www.youtube.com/watch?v=_nRoZqrkByc",
    lirikLaguNasional: '''
    Dari yakinku teguh
    Hati ikhlasku penuh
    Akan karunia-Mu
    Tanah air pusaka
    Indonesia merdeka
    Syukur aku sembahkan
    Ke hadirat-Mu, Tuhan
    Dari yakinku teguh
    Cinta ikhlasku penuh
    Akan jasa usaha
    Pahlawanku yang baka
    Indonesia merdeka
    Syukur aku hunjukkan
    Ke bawah duli Tuhan
    Ha-oh-oh
    Dari yakinku teguh
    Bakti ikhlasku penuh
    Akan azas rukunmu
    Pandu bangsa yang nyata
    Indonesia merdeka
    Syukur aku hunjukkan
    Ke hadapan-Mu, Tuhan
    Syukur aku sembahkan
    Ke hadirat-Mu, Tuhan
''',
  ),
  //Kicir-Kicir
  Nasional(
    id: 5,
    judul: 'Ibu Pertiwi',
    pencipta: 'Ismail Marzuki',
    photo:
        'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgLJAgUju6Q_awUNUFxW6eIiwYzjy_SR6ADoT5KfzmZTMSrZu8LR_qu1XXc4EodkW5-1vTrczfSSm9F-5jqXcA9X6CTjoTL5AER9XdeLV3_PANYzbyjMJSP87lcr3k2bfoC8elqKLyV8CIi/s1920/bendera-indonesia.jpg',
    linkVideo: "https://www.youtube.com/watch?v=EokiiwEAAQ0",
    lirikLaguNasional: '''
    Kulihat ibu pertiwi
    Sedang bersusah hati
    Air matanya berlinang
    Mas intannya terkenang
    Hutan gunung sawah lautan
    Simpanan kekayaan
    Kini ibu sedang lara
    Merintih dan berdoa
    Kulihat ibu pertiwi
    Kami datang berbakti
    Lihatlah putra-putrimu
    Menggembirakan ibu
    Ibu kami tetap cinta
    Putramu yang setia
    Menjaga harta pusaka
    Untuk nusa dan bangsa
    Kulihat ibu pertiwi
    Sedang bersusah hati
    Air matanya berlinang
    Mas intannya terkenang
    Hutan gunung sawah lautan
    Simpanan kekayaan
    Kini ibu sedang lara
    Merintih dan berdoa
    Menjaga harta pusaka
    Untuk nusa dan bangsa
''',
  ),
  Nasional(
    id: 6,
    judul: 'Berkibarlah Benderaku',
    pencipta: 'Ibu Soed',
    photo:
        'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgLJAgUju6Q_awUNUFxW6eIiwYzjy_SR6ADoT5KfzmZTMSrZu8LR_qu1XXc4EodkW5-1vTrczfSSm9F-5jqXcA9X6CTjoTL5AER9XdeLV3_PANYzbyjMJSP87lcr3k2bfoC8elqKLyV8CIi/s1920/bendera-indonesia.jpg',
    linkVideo: "https://www.youtube.com/watch?v=liHOenvKR8U",
    lirikLaguNasional: '''
    Berkibarlah benderaku
    Lambang suci gagah perwira
    Di seluruh pantai Indonesia
    Kau tetap pujaan Bagsa

    Siapa berani menurunkan engkau
    Serentak rakyatmu membela
    Sang merah putih yang perwira
    Berkibarlah s'lama-lamanya

''',
  ),
  //jawa tengah gundul pacul
  Nasional(
    id: 7,
    judul: 'Hari Merdeka',
    pencipta: 'H. Mutahar',
    photo:
        'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgLJAgUju6Q_awUNUFxW6eIiwYzjy_SR6ADoT5KfzmZTMSrZu8LR_qu1XXc4EodkW5-1vTrczfSSm9F-5jqXcA9X6CTjoTL5AER9XdeLV3_PANYzbyjMJSP87lcr3k2bfoC8elqKLyV8CIi/s1920/bendera-indonesia.jpg',
    linkVideo: "https://www.youtube.com/watch?v=RloRre3hpMg",
    lirikLaguNasional: '''
Tujuh belas Agustus tahun empat lima
Itulah hari kemerdekaan kita
Hari merdeka nusa dan bangsa
Hari lahirnya bangsa Indonesia
Merdeka

Sekali merdeka tetap merdeka
Selama hayat masih di kandung badan
Kita tetap setia tetap sedia
Mempertahankan Indonesia
Kita tetap setia tetap sedia
Membela negara kita

Tujuh belas Agustus tahun empat lima
Itulah hari kemerdekaan kita
Hari merdeka nusa dan bangsa
Hari lahirnya bangsa Indonesia
Merdeka

Sekali merdeka tetap merdeka
Selama hayat masih dikandung badan
Kita tetap setia tetap sedia
Mempertahankan Indonesia
Kita tetap setia tetap sedia
Membela negara kita

Tujuh belas Agustus tahun empat lima
Itulah hari kemerdekaan kita
Hari merdeka nusa dan bangsa
Hari lahirnya bangsa Indonesia
Merdeka

Sekali merdeka tetap merdeka
Selama hayat masih dikandung badan
Kita tetap setia tetap sedia
Mempertahankan Indonesia
Kita tetap setia tetap sedia
Membela negara kita
''',
  ),
  //jawa timur Rek Ayo Rek
  Nasional(
    id: 8,
    judul: 'Satu Nusa Satu Bangsa',
    pencipta: 'Liberty Manik',
    photo:
        'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgLJAgUju6Q_awUNUFxW6eIiwYzjy_SR6ADoT5KfzmZTMSrZu8LR_qu1XXc4EodkW5-1vTrczfSSm9F-5jqXcA9X6CTjoTL5AER9XdeLV3_PANYzbyjMJSP87lcr3k2bfoC8elqKLyV8CIi/s1920/bendera-indonesia.jpg',
    linkVideo: "https://www.youtube.com/watch?v=qoZQh14PpLI",
    lirikLaguNasional: '''
    Satu nusa
    Satu bangsa
    Satu bahasa kita
    Tanah air
    Pasti jaya
    Untuk Selama-lamanya
    Indonesia pusaka
    Indonesia tercinta
    Nusa bangsa
    Dan Bahasa
    Kita bela bersama
''',
  ),
  //maluku Rasa Sayange
  Nasional(
      id: 9,
      judul: 'Tanah Air Pusaka',
      pencipta: 'Ismail Marzuki',
      photo:
          'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgLJAgUju6Q_awUNUFxW6eIiwYzjy_SR6ADoT5KfzmZTMSrZu8LR_qu1XXc4EodkW5-1vTrczfSSm9F-5jqXcA9X6CTjoTL5AER9XdeLV3_PANYzbyjMJSP87lcr3k2bfoC8elqKLyV8CIi/s1920/bendera-indonesia.jpg',
      linkVideo: "https://www.youtube.com/watch?v=jhFBxJDnZB8",
      lirikLaguNasional: '''
      Indonesia tanah air beta
      Pusaka abadi nan jaya
      Indonesia sejak dulu kala
      Selalu dipuja-puja bangsa
      Disana, tempat lahir beta
      Dibuai, dibesarkan bunda
      Tempat berlindung dihari tua
      Tempat akhir menutup mata
      Sungguh indah tanah air beta
      Tiada bandingnya di dunia
      Karya indah Tuhan Maha Kuasa
      Bagi bangsa yang memuja-Nya
      Indonesia ibu pertiwi
      Kau ku puja, kau ku kasihi
      Tenagaku, bahkan pun jiwaku
      Kepadamu, rela ke beri
      Tenagaku, bahkan pun jiwaku
      Kepadamu, rela ku beri
'''),
  //bali janger
  Nasional(
      id: 10,
      judul: 'Dari Sabang Sampai Merauke',
      pencipta: 'R. Soerarjo Marwotokoesoemo',
      photo:
          'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgLJAgUju6Q_awUNUFxW6eIiwYzjy_SR6ADoT5KfzmZTMSrZu8LR_qu1XXc4EodkW5-1vTrczfSSm9F-5jqXcA9X6CTjoTL5AER9XdeLV3_PANYzbyjMJSP87lcr3k2bfoC8elqKLyV8CIi/s1920/bendera-indonesia.jpg',
      linkVideo: "https://www.youtube.com/watch?v=m0gfKTzWMdM",
      lirikLaguNasional: '''
      Dari sabang sampai merauke
      Berjajar pulau pulau
      Sambung menyambung menjadi satu
      Itulah indonesia
      Indonesia tanah airku
      Aku berjanji padamu
      Menjunjung tanah airku
      Tanah airku indonesia
      Dari sabang sampai merauke
      Berjajar pulau pulau
      Sambung menyambung menjadi satu
      Itulah indonesia
      Indonesia tanah airku
      Aku berjanji padamu
      Menjunjung tanah airku
      Tanah airku indonesia
'''),
];
