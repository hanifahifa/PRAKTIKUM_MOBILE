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

      debugShowCheckedModeBanner: false,
      home: WeatherScreen(),
    );
  }
}


class WeatherScreen extends StatelessWidget {
  // Widget untuk menampilkan item cuaca
  Widget _buildWeatherItem(
    String day,
    IconData icon,
    String temp,
    Color color,
  ) {
    return Column(
      children: [
        Text(day),
        SizedBox(height: 10),
        Icon(icon, size: 40, color: color),
        SizedBox(height: 10),
        Text(temp),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Text(
              "Malang",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 20),
            Text(
              "25\u00B0",
              style: TextStyle(fontSize: 150, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildWeatherItem("Minggu", Icons.sunny, "20°C", Colors.orange),
                _buildWeatherItem(
                  "Senin",
                  Icons.cloudy_snowing,
                  "23°C",
                  Colors.blueAccent,
                ),
                _buildWeatherItem("Selasa", Icons.cloud, "22°C", Colors.grey),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
