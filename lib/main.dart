import 'package:expense_tracker/screens/onBoarding_screen.dart';
import 'package:expense_tracker/screens/splash_screen.dart';
import 'package:expense_tracker/screens/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<bool> _checkFirstTimeUser() async {
    // Add delay to show splash screen for 5 seconds
    await Future.delayed(const Duration(seconds: 5));
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isFirstTimeUser') ?? true;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder<bool>(
        future: _checkFirstTimeUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SplashScreen();
          }

          if (snapshot.data == true) {
            return const OnBoardingScreen();
          }

          return const AuthScreen(); // You'll need to create this screen
        },
      ),
    );
  }
}
