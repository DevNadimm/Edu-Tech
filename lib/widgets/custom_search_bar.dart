import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                borderRadius: BorderRadius.circular(10),),
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
    );
  }
}
