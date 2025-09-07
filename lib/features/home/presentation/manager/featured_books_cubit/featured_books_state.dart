part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksLoding extends FeaturedBooksState {}

final class FeaturedBooksSucsses extends FeaturedBooksState {
  final List<BookModel> books;

  const FeaturedBooksSucsses(this.books);
}

final class FeaturedBooksFailure extends FeaturedBooksState {
  final String errormessage;

  const FeaturedBooksFailure(this.errormessage);
}
