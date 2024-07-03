import 'package:education_app_ui/widgets/custom_courses_grid.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_features_grid.dart';
import '../widgets/custom_search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: ListView(
            children: [
              const CustomSearchBar(),
              const CustomFeaturesGrid(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Courses',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                    const Text(
                      'See all',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.purple,
                      ),
                    ),
                  ],
                ),
              ),
              const CustomCoursesGrid(),
            ],
          ),
        ),
      ),
    );
  }
}
