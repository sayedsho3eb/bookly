import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/utils/style.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/rating_book.dart';
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
          padding: EdgeInsets.symmetric(horizontal: width * .25),
          child: CustomBookImage(),
        ),
        SizedBox(height: 43),
        Text(
          'The Jungle Book',
          style: Style.textStyle30.copyWith(
            fontFamily: kGtSectraFine,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 6),
        Text(
          'Rudyard Kipling',
          style: Style.textStyle18.copyWith(
            fontWeight: FontWeight.w500,
            color: Colors.white70,
          ),
        ),
        SizedBox(height: 16),
        RatingBook(),
        SizedBox(height: 37),
      ],
    );
  }
}
