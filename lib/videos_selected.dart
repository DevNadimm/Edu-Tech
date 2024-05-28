import 'package:flutter/material.dart';

class VideosSelected extends StatelessWidget {
  List videoList = [
    'Video 1',
    'Video 2',
    'Video 3',
    'Video 4',
    'Video 5',
    'Video 6',
    'Video 7',
    'Video 8',
  ];

  VideosSelected({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(
            videoList[index],
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.7),
            ),
          ),
          leading: const CircleAvatar(
              backgroundColor: Colors.purple,
              child: Icon(Icons.play_arrow_rounded),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          color: Colors.grey.withOpacity(0.3),
          thickness: 0.6,
        );
      },
    );
  }
}
