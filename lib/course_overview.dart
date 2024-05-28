import 'package:flutter/material.dart';

class CourseOverview extends StatelessWidget {
  late String courseName = '';
  late String courseDescription = '';
  late String courseCreator = '';
  late String courseLecturesCount = '';

  CourseOverview({
    super.key,
    required this.courseName,
    required this.courseDescription,
    required this.courseCreator,
    required this.courseLecturesCount,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        title: Text(
          courseName,
          style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5),
        ),
        actions: const [
          Icon(
            Icons.notifications,
            size: 25,
            color: Colors.white,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * 0.26,
              decoration: BoxDecoration(
                color: const Color(0xFFFBEFFF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Center(
                      child: Image(
                        image: AssetImage('images/$courseName.png'),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 45,
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                  ),
                  const Center(
                    child:
                        Icon(Icons.play_arrow, size: 42, color: Colors.purple),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '$courseName Complete Course',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              'Created by $courseCreator',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              courseLecturesCount,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              padding: const EdgeInsets.all(13),
              decoration: BoxDecoration(
                color: const Color(0xFFFBEFFF),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Material(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 30),
                        child: const Text(
                          'Videos',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 35),
                        child: const Text(
                          'Description',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
