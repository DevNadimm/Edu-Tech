import 'package:flutter/material.dart';

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
   const Icon(Icons.category,color: Colors.white,size: 30),
   const Icon(Icons.video_library,color: Colors.white,size: 30),
   const Icon(Icons.assessment,color: Colors.white,size: 30),
   const Icon(Icons.store,color: Colors.white,size: 30),
   const Icon(Icons.play_circle_fill,color: Colors.white,size: 30),
   const Icon(Icons.emoji_events,color: Colors.white,size: 30),
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
            decoration: const BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
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
                      fontSize: 20,
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
                  itemCount: catName.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                  childAspectRatio: 1.25),
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
                              shape: BoxShape.circle
                            ),
                            child: catIcon[index],
                          ),
                          const SizedBox(
                            height: 05,
                          ),
                          Text(catName[index],style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.7)),)
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
