import 'package:education_app_ui/videos_selected.dart';
import 'package:flutter/material.dart';

import 'description_selected.dart';

class CourseOverview extends StatefulWidget {
  final String courseName;
  final String courseDescription;
  final String courseCreator;
  final String courseLecturesCount;
  final String courseDuration;
  final String courseRating;

  const CourseOverview({
    super.key,
    required this.courseName,
    required this.courseDescription,
    required this.courseCreator,
    required this.courseLecturesCount,
    required this.courseDuration,
    required this.courseRating
  });

  @override
  _CourseOverviewState createState() => _CourseOverviewState();
}

class _CourseOverviewState extends State<CourseOverview> {
  bool isVideosSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        title: Center(
          child: Text(
            widget.courseName,
            style: const TextStyle(
              fontSize: 23,
              color: Colors.white,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5,
            ),
          ),
        ),
        actions: const [
          Icon(
            Icons.notifications,
            size: 25,
            color: Colors.white,
          ),
          SizedBox(
            width: 12,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                          image: AssetImage('images/${widget.courseName}.png'),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 45,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const Center(
                      child: Icon(Icons.play_arrow, size: 40, color: Colors.purple),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '${widget.courseName} Complete Course',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                'Created by ${widget.courseCreator}',
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                widget.courseLecturesCount,
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
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Material(
                      color: isVideosSelected ? Colors.purple : Colors.purple.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isVideosSelected = true;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 30,
                          ),
                          child: const Text(
                            'Videos',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Material(
                      color: isVideosSelected ? Colors.purple.withOpacity(0.8) : Colors.purple,
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isVideosSelected = false;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 35,
                          ),
                          child: const Text(
                            'Description',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              isVideosSelected
                  ? VideosSelected()
                  : DescriptionSelected(
                      courseDescription: widget.courseDescription,
                      courseDuration: widget.courseDuration,
                      courseRating: widget.courseRating,
                    )
            ],
          ),
        ),
      ),
    );
  }
}