import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ubi/screens/dashboard_screen.dart';
import 'package:ubi/screens/login_screen.dart';
import 'package:ubi/widgets/loading.dart';
import 'themes/theme_global.dart';
import './screens/create_lead.dart';
// import 'widgets/loading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UBI App',
      theme: apptheme,
      home: SplashScreen(),
      // home: LoginScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      // Navigate to new Screen
      // Navigator.push(context,
      // MaterialPageRoute(builder: (context) => LoginScreen())
      // );

      // Replace current Screen to new Screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,

        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(235, 2, 34, 66),
              const Color.fromARGB(211, 36, 12, 171),
            ],
          ),
        ),

        child: Column(
          children: [
            Image(image: AssetImage('assets/logo.png')),

            Text(
              'Welcome Back',
              style: TextStyle(
                fontSize: 40,
                color: ThemesColor.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 5,
                decorationThickness: 50,
                shadows: [Shadow(color: Colors.black, blurRadius: 20)],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
