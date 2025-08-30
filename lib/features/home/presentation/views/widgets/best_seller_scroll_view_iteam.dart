import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSillerIteam extends StatelessWidget {
  const BestSillerIteam({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          SizedBox(
            height: 120,
            child: AspectRatio(
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
            ),
          ),
          SizedBox(width: 30),
          SizedBox(
            width: MediaQuery.of(context).size.width * .6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    'Harry Potter and the Goblet of Fire',
                    maxLines: 2,
                    style: Style.textStyle20.copyWith(
                      fontFamily: kGtSectraFine,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  'J.K. Rowling',
                  style: Style.textStyle14.copyWith(color: Colors.white70),
                ),
                SizedBox(height: 3),
                Row(
                  children: [
                    Text(
                      '19.99 €',
                      style: Style.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Icon(FontAwesomeIcons.solidStar, color: Colors.amber),
                    SizedBox(width: 6.3),
                    Text(
                      '4.8',
                      style: Style.textStyle16.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      '(2390)',
                      style: Style.textStyle14.copyWith(color: Colors.white54),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
