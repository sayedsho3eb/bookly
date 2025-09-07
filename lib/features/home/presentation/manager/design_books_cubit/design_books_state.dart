part of 'design_books_cubit.dart';

sealed class DesignBooksState extends Equatable {
  const DesignBooksState();

  @override
  List<Object> get props => [];
}

final class DesignBooksInitial extends DesignBooksState {}

final class DesignBooksLoading extends DesignBooksState {}

final class DesignBooksSuccess extends DesignBooksState {
  final List<BookModel> books;

  const DesignBooksSuccess(this.books);
}

final class DesignBooksFailure extends DesignBooksState {
  final String errorMassage;

  const DesignBooksFailure(this.errorMassage);
}
