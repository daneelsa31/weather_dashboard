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
          width: 375,
          height: 720,
          decoration: BoxDecoration(
            color: const Color(0xFFF0F3F7),
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 30,
                offset: const Offset(0, 20),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Scaffold(
              backgroundColor: const Color(0xFFF0F3F7),
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: const Padding(
                  padding: EdgeInsets.only(top: 25.0),
                  child: Text(
                    'Weather Dashboard',
                    style: TextStyle(
                      color: Color(0xFF1A212E),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                centerTitle: true,
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 30),

                    // --- ADDED: OUTER TRAY ---
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                      decoration: BoxDecoration(
                        color: const Color(0xFFDDE3EA),
                        borderRadius: BorderRadius.circular(28),
                      ),
                      // This height is temporary so you can see the tray
                      child: const SizedBox(height: 150), 
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}