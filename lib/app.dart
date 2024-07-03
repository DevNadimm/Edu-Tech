import 'package:education_app_ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class EduTech extends StatelessWidget {
  const EduTech({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
