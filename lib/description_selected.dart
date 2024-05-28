import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DescriptionSelected extends StatelessWidget {
  late String courseDescription = '';
  late String courseDuration = '';
  late String courseRating = '';

  DescriptionSelected({
    super.key,
    required this.courseDescription,
    required this.courseDuration,
    required this.courseRating,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Text(
          courseDescription,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: CupertinoColors.black.withOpacity(0.8),
          ),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            const Text(
              'Course Duration:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              width: 05,
            ),
            const Icon(
              Icons.timer,
              color: Colors.purple,
            ),
            const SizedBox(
              width: 05,
            ),
            Text(
              courseDuration,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: CupertinoColors.black.withOpacity(0.7),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const Text(
              'Course Rating:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              width: 05,
            ),
            const Icon(
              Icons.star,
              color: Colors.orange,
            ),
            const SizedBox(
              width: 05,
            ),
            Text(
              courseRating,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: CupertinoColors.black.withOpacity(0.7),
              ),
            )
          ],
        ),
      ],
    );
  }
}
