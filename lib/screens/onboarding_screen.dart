import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

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
          // App Logo (Top Left)
          Positioned(
            top: 60,
            left: 20,
            child: Image.asset(
              'assets/splash/app_image.png',
              width: 90,
              height: 90,
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
          // Bottom Content (Text and Button in Row)
          Positioned(
            bottom: 100,
            left: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "Welcome to",
                          style: TextStyle(
                            fontSize: 40,
                            fontFamily: 'AbeeZee',
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "CipherX.",
                          style: TextStyle(
                            fontSize: 36,
                            fontFamily: 'Bruno Ace SC',
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade500,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/icons/Ellipse_17.svg',
                          width: 60,
                          height: 60,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  "The best way to track your expenses.",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'AbeeZee',
                    color: Colors.white,
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
