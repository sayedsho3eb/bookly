import 'package:booklyapp/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .19),
          child: CustomBookImage(),
        ),
      ],
    );
  }
}
