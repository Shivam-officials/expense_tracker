import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff7B61FF), // Background color
      body: Stack(
        children: [
          // Upper Circle (Top Right)
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              'assets/splash/upper_circle.png',
              width: 300,
              height: 300,
            ),
          ),
          // Lower Circle (Bottom Left)
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              'assets/splash/lower_circle.png',
              width: 300,
              height: 300,
            ),
          ),
          // for open source and community text
          Positioned(
            bottom: 35,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  "By",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Cambay',
                    color: Colors.white70,
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      " Open Source ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Cambay',
                        color: Colors.white70,
                      ),
                    ),
                    const Text(
                      " Community",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Cambay',
                        fontSize: 15,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Center Logo and Text
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/splash/app_image.png',
                  width: 150,
                  height: 140,
                ),
                const SizedBox(height: 20),
                const Text(
                  "CipherX",
                  style: TextStyle(
                    fontSize: 36,
                    fontFamily: 'Bruno Ace SC',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
