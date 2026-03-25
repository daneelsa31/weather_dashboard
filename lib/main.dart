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
    return Scaffold(
      backgroundColor: const Color(0xFFD1D9E6),
      body: Center(
        child: Container(
          // Simulating the phone screen dimensions from your final code
          width: 375,
          height: 720,
          decoration: BoxDecoration(
            color: const Color(0xFFF0F3F7),
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1), // Subtle shadow
                blurRadius: 30,
                offset: const Offset(0, 20),
              ),
            ],
          ),
          // We use ClipRRect to ensure any future children follow the 40px rounding
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Container(
              color: const Color(0xFFF0F3F7),
            ),
          ),
        ),
      ),
    );
  }
}