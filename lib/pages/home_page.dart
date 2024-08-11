import 'package:flutter/material.dart';
import 'package:flutter_nada_nusantara_app/pages/home_daerah.dart';
import 'package:flutter_nada_nusantara_app/pages/home_nasional.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Nada Nusantara',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 2,
        backgroundColor: const Color(0xFF167b59),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/bg.png',
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 180, // Atur posisi atas dari tombol
            left: MediaQuery.of(context).size.width *
                0.1, // Atur posisi kiri dari tombol
            right: MediaQuery.of(context).size.width *
                0.1, // Atur posisi kanan dari tombol
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity, // Lebar tombol sesuai lebar parent
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigasi ke halaman lagu daerah
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeNasional()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF167b59),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5), // Sudut tombol
                      ),
                    ),
                    child: const Text('Lagu Nasional',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity, // Lebar tombol sesuai lebar parent
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigasi ke halaman lagu daerah
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeDaerah()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF167b59),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5), // Sudut tombol
                      ),
                    ),
                    child: const Text('Lagu Daerah',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
