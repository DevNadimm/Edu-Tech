import 'package:flutter/material.dart';
import '../information/course_info_lists.dart';
import '../screens/course_module_screen.dart';

class CustomCoursesGrid extends StatelessWidget {
  const CustomCoursesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 8,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                    builder: (context) => CourseModuleScreen(
                      courseName: courseInfoLists[index].courseName,
                      courseDescription:
                          courseInfoLists[index].courseDescription,
                      courseCreator: courseInfoLists[index].courseCreator,
                      courseLecturesCount:
                          courseInfoLists[index].courseLecturesCount,
                      courseDuration: courseInfoLists[index].courseDuration,
                      courseRating: courseInfoLists[index].courseRating,
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
                        'images/${courseInfoLists[index].courseName}.png',
                        scale: 3,
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      Text(
                        courseInfoLists[index].courseName,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black.withOpacity(.7),
                        ),
                      ),
                      Text(
                        courseInfoLists[index].courseLecturesCount,
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
      ),
    );
  }
}
