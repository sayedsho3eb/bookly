import 'package:booklyapp/core/util/assets.dart';
import 'package:flutter/material.dart';

class FeaturedListViewIteam extends StatelessWidget {
  const FeaturedListViewIteam({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsData.testImage),
          ),
        ),
      ),
    );
  }
}
