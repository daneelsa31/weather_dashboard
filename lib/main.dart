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
                color: Colors.black,
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
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                      decoration: BoxDecoration(
                        color: const Color(0xFFDDE3EA),
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 150, 
                            width: double.infinity,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  left: -10,
                                  child: Image.network(
                                    'https://play-lh.googleusercontent.com/X4-IHan6nce7_B1JNu9sWK6qaOtm4orTMjrFhmFGrhBAssDj5hOujOM90eGfKeJ1V2tiOHG1uX5TR0wcpkcX4CE',
                                    width: 180,
                                    height: 180,
                                    fit: BoxFit.contain,
                                    errorBuilder: (context, error, stackTrace) =>
                                        const Icon(Icons.wb_sunny, size: 100, color: Colors.orangeAccent),
                                  ),
                                ),
                                Positioned(
                                  right: 20,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        '25°C',
                                        style: TextStyle(
                                          fontSize: 68,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF1A212E),
                                          letterSpacing: -2,
                                        ),
                                      ),
                                      const Text(
                                        'Cloudy with a\nchance of sunshin',
                                        style: TextStyle(color: Colors.black54, fontSize: 14, height: 1.2),
                                      ),
                                      const SizedBox(height: 4),
                                      const Text(
                                        'London, UK',
                                        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),

                          // --- UPDATED: REPLACED PLACEHOLDER WITH GRIDVIEW ---
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: const Color(0xFFCFD8E1),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: GridView.count(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              crossAxisCount: 4,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                              children: [
                                _buildTile('10:00', Icons.wb_sunny, '26°C'),
                                _buildTile('11:00', Icons.wb_sunny, '27°C'),
                                _buildTile('13:00', Icons.cloud_queue, '25°C'),
                                _buildTile('13:00', Icons.cloud, '24°C', tempColor: Colors.grey, iconColor: Colors.grey),
                                _buildTile('10:00', Icons.wb_sunny, '25°C'),
                                _buildTile('14:00', Icons.beach_access, '24°C', tempColor: Colors.grey, iconColor: Colors.grey),
                                _buildTile('14:00', Icons.cloud, '23°C', tempColor: Colors.grey, iconColor: Colors.grey),
                                _buildTile('15:00', Icons.grain, '22°C', tempColor: Colors.grey, iconColor: Colors.grey),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTile(String time, IconData icon, String temp, 
      {Color tempColor = Colors.black, Color iconColor = Colors.orangeAccent}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(time, style: const TextStyle(fontSize: 10, color: Colors.grey, fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Icon(icon, size: 18, color: iconColor),
          const SizedBox(height: 4),
          Text(
            temp, 
            style: TextStyle(
              fontSize: 12, 
              fontWeight: FontWeight.bold,
              color: tempColor,
            ),
          ),
        ],
      ),
    );
  }
}