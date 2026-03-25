import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WeatherAppPreview(),
      ),
    );

class WeatherAppPreview extends StatelessWidget {
  const WeatherAppPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // This is the base background color for the entire project
      backgroundColor: Color(0xFFD1D9E6), 
      body: Center(
        child: Text(
          "Project Initialized",
          style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}