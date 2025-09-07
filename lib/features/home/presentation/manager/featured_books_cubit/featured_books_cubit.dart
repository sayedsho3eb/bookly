import 'package:bloc/bloc.dart';
import 'package:booklyapp/features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBook() async {
    emit(FeaturedBooksLoding());
    var result = await homeRepo.fetchFeaturedBook();
    result.fold(
      (failure) {
        emit(FeaturedBooksFailure(failure.errorMessage));
      },
      (books) {
        emit(FeaturedBooksSucsses(books));
      },
    );
  }
}
