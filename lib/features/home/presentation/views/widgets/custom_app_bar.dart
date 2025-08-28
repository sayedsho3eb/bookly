import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 40, bottom: 10),
      child: Row(
        children: [
          Image.asset(AssetsData.logo, width: 90),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(weight: 19, FontAwesomeIcons.magnifyingGlass),
          ),
        ],
      ),
    );
  }
}
