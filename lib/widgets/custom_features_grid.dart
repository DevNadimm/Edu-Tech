import 'package:flutter/material.dart';
import '../information/feature_lists.dart';

class CustomFeaturesGrid extends StatelessWidget {
  const CustomFeaturesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: featureLists.length,
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
                      color: featureLists[index]['color'],
                      shape: BoxShape.circle),
                  child: featureLists[index]['icon'],
                ),
                const SizedBox(
                  height: 05,
                ),
                Text(
                  featureLists[index]['label'],
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
    );
  }
}
