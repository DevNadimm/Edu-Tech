import 'package:flutter/material.dart';
import 'package:education_app_ui/splash_screen.dart';

void main() {
  runApp(const EducationApp());
}

class EducationApp extends StatelessWidget {
  const EducationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
            .copyWith(background: Colors.white),
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
