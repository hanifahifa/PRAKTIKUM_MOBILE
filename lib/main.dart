import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Widget utama aplikasi
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(), // Latar belakang gelap
      home: Scaffold(
        body: Center(
          child: Text("Pemutar Musik", style: TextStyle(fontSize: 20)),
        ),
        bottomNavigationBar: buildControlBar(), // Panggil method ControlBar
      ),
    );
  }
}

// Method untuk membangun Control Bar
Widget buildControlBar() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
    color: Colors.black54, // Latar gelap untuk kontras
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // Tombol Shuffle
        Expanded(
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.shuffle, color: Colors.white),
          ),
        ),

        // Tombol Previous
        Expanded(
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.skip_previous, color: Colors.white),
          ),
        ),

        // Tombol Play (lebih besar, menggunakan Flexible)
        Flexible(
          flex: 2,
          fit: FlexFit.tight,
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.play_circle_fill, color: Colors.white, size: 70),
          ),
        ),

        // Tombol Next
        Expanded(
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.skip_next, color: Colors.white),
          ),
        ),

        // Tombol Repeat
        Expanded(
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.repeat, color: Colors.white),
          ),
        ),
      ],
    ),
  );
}
