import 'package:booklyapp/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingBook extends StatelessWidget {
  const RatingBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Colors.amber),
        SizedBox(width: 6.3),
        Text(
          '4.8',
          style: Style.textStyle16.copyWith(fontWeight: FontWeight.w500),
        ),
        SizedBox(width: 5),
        Text(
          '(2390)',
          style: Style.textStyle14.copyWith(color: Colors.white54),
        ),
      ],
    );
  }
}
