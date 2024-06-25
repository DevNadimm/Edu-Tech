import 'package:education_app_ui/course_overview.dart';
import 'package:flutter/material.dart';

import 'course_info_class.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> catName = [
    'Category',
    'Classes',
    'Free Courses',
    'BookStore',
    'Live Courses',
    'Leaderboard'
  ];

  final List<Color> catColor = [
    const Color(0xff32AD32),
    const Color(0xff6666f5),
    const Color(0xff26ABAB),
    const Color(0xff008080),
    const Color(0xffB161E7),
    const Color(0xffE76161),
  ];

  final List<Icon> catIcon = [
    const Icon(Icons.category, color: Colors.white, size: 30),
    const Icon(Icons.video_library, color: Colors.white, size: 30),
    const Icon(Icons.assessment, color: Colors.white, size: 30),
    const Icon(Icons.store, color: Colors.white, size: 30),
    const Icon(Icons.play_circle_fill, color: Colors.white, size: 30),
    const Icon(Icons.emoji_events, color: Colors.white, size: 30),
  ];

  final List<CourseInfo> courseInfoList = [
    CourseInfo(
      courseName: 'Flutter',
      courseDescription:
          'Learn to build high-performance, natively compiled applications with Flutter. This course covers Dart programming, Flutter widgets, state management, and deployment. Perfect for all levels, you\'ll create stunning, responsive apps for mobile, web, and desktop platforms.',
      courseLecturesCount: '46 Lectures',
      courseDuration: '54 Hours',
      courseCreator: 'Rafat J.M.',
      courseRating: '4.9',
    ),
    CourseInfo(
        courseName: 'Python',
        courseDescription:
            ' Learn Python programming comprehensively, covering fundamentals, data structures, web development, and machine learning. Ideal for all levels, this course equips you with the skills to build robust, scalable applications and tackle real-world programming challenges.',
        courseLecturesCount: '39 Lectures',
        courseCreator: 'FreeCodeCamp',
        courseDuration: '47 Hours',
        courseRating: '4.5'),
    CourseInfo(
        courseName: 'C++',
        courseDescription:
            'Master C++ programming with this comprehensive course. Covering fundamentals, object-oriented programming, data structures, and advanced topics, you\'ll gain the skills to develop efficient, high-performance applications. Suitable for all levels, this course prepares you for real-world software development.',
        courseLecturesCount: '33 Lectures',
        courseCreator: 'Shraddha',
        courseDuration: '37 Hours',
        courseRating: '4.3'),
    CourseInfo(
        courseName: 'React Native',
        courseDescription:
            'Master React Native to create high-quality, cross-platform mobile apps. This course covers components, state management, navigation, and deployment. Suitable for all skill levels, you\'ll learn to build efficient, responsive apps for both iOS and Android platforms.',
        courseLecturesCount: '42 Lectures',
        courseCreator: 'Harry',
        courseDuration: '50 Hours',
        courseRating: '5'),
    CourseInfo(
        courseName: 'JavaScript',
        courseDescription:
            'Master JavaScript programming with this comprehensive course. Covering core concepts, DOM manipulation, ES6+, asynchronous programming, and frameworks, you\'ll gain the skills to build dynamic, interactive web applications. Suitable for all levels, this Course prepares you for real-world development.',
        courseLecturesCount: '51 Lectures',
        courseCreator: 'Jhankar Mahbub',
        courseDuration: '45 Hours',
        courseRating: '4.3'),
    CourseInfo(
        courseName: 'Kotlin',
        courseDescription:
            'Master Kotlin programming and Android development with this comprehensive course. Covering Kotlin basics, Android Studio, design, and advanced app features, you\'ll learn to create efficient, modern Android applications. Perfect for all levels, this course ensures practical, real-world skills.',
        courseLecturesCount: '39 Lectures',
        courseCreator: 'Unknown',
        courseDuration: '41 Hours',
        courseRating: '3.9'),
    CourseInfo(
        courseName: 'Swift',
        courseDescription:
            'Learn Swift and app development from the ground up. This course covers Swift programming, UI design, data management, and app deployment. Ideal for all levels, you\'ll create efficient, feature-rich apps ready for the App Store.',
        courseLecturesCount: '49 Lectures',
        courseCreator: 'Unknown',
        courseDuration: '54 Hours',
        courseRating: '4.5'),
    CourseInfo(
        courseName: 'C#',
        courseDescription:
            'Master C# programming with this in-depth course. Covering the basics, object-oriented programming, LINQ, and .NET framework, you\'ll learn to create efficient, scalable applications. Perfect for all levels, this course equips you with essential C# development skills.',
        courseLecturesCount: '37 Lectures',
        courseCreator: 'Unknown',
        courseDuration: '46 Hours',
        courseRating: '4.1')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: ListView(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                decoration: const BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.dashboard,
                          color: Colors.white,
                          size: 28,
                        ),
                        Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 28,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    const Text(
                      'Hi, Programmers',
                      style: TextStyle(
                          fontSize: 23,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search here...',
                            hintStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.7),
                            ),
                            prefixIcon: Icon(
                              Icons.search_rounded,
                              color: Colors.black.withOpacity(0.7),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  children: [
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: catName.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3, childAspectRatio: 1.25),
                      itemBuilder: (BuildContext context, int index) {
                        return Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: catColor[index],
                                    shape: BoxShape.circle),
                                child: catIcon[index],
                              ),
                              const SizedBox(
                                height: 05,
                              ),
                              Text(
                                catName[index],
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black.withOpacity(0.7)),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                child: Column(
                  children: [
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 8,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: .8,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10),
                      itemBuilder: (BuildContext context, int index) {
                        return Material(
                          color: const Color(0xFFFBEFFF),
                          borderRadius: BorderRadius.circular(10),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CourseOverview(
                                    courseName:
                                        courseInfoList[index].courseName,
                                    courseDescription:
                                        courseInfoList[index].courseDescription,
                                    courseCreator:
                                        courseInfoList[index].courseCreator,
                                    courseLecturesCount: courseInfoList[index]
                                        .courseLecturesCount,
                                    courseDuration:
                                        courseInfoList[index].courseDuration,
                                    courseRating:
                                        courseInfoList[index].courseRating,
                                  ),
                                ),
                              );
                            },
                            child: SizedBox(
                              height: 100,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'images/${courseInfoList[index].courseName}.png',
                                      scale: 3,
                                    ),
                                    const SizedBox(
                                      height: 9,
                                    ),
                                    Text(
                                      courseInfoList[index].courseName,
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black.withOpacity(.7),
                                      ),
                                    ),
                                    Text(
                                      courseInfoList[index].courseLecturesCount,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black.withOpacity(.6),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
