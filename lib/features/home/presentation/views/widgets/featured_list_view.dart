import 'package:booklyapp/core/widget/custom_error_message.dart';
import 'package:booklyapp/core/widget/custom_progress_indicator.dart';
import 'package:booklyapp/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSucsses) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .4,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: CustomBookImage(
                    imageUrl:
                        state
                            .books[index].volumeInfo?.imageLinks?.smallThumbnail ?? '',
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorMessage(errorMessage: state.errormessage);
        } else {
          return CustomProgressIndicator();
        }
      },
    );
  }
}
