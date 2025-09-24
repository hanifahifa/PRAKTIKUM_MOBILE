import 'package:flutter/material.dart';
import 'tujuan.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ini Halaman Home',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TujuanPage()),
              );
            },
          ),
        ],
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Banyak aplikasi memiliki beberapa layar untuk menampilkan informasi yang berbeda. Contohnya, ada layar produk, dan ketika pengguna mengklik produk, akan muncul layar dengan detail produk tersebut.',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  'assets/icon/homeschooling.png',
                  width: 120,
                  height: 120,
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Pertama, kita perlu membuat dua halaman atau "routes" yang ingin kita tampilkan. Selanjutnya, kita gunakan perintah Navigator.push() untuk berpindah dari halaman pertama ke halaman kedua. Ini seperti kita membuka halaman baru. Terakhir, kita bisa kembali dari halaman kedua ke halaman pertama menggunakan Navigator.pop(). Seperti menutup halaman kedua dan kembali ke halaman pertama.',
                style: TextStyle(fontSize: 12, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TujuanPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 15,
                  ),
                  elevation: 3,
                ),
                child: const Text(
                  'Ke Halaman Tujuan',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
