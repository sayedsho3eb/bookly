import 'package:bloc/bloc.dart';
import 'package:booklyapp/core/error/error_message.dart';
import 'package:booklyapp/features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'design_books_state.dart';

class DesignBooksCubit extends Cubit<DesignBooksState> {
  DesignBooksCubit(this.homeRepo) : super(DesignBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchDesignBooks() async {
    emit(DesignBooksLoading());
    var result = await homeRepo.fetchDesignBooks();
    result.fold(
      (Failure) {
        emit(DesignBooksFailure(Failure.errorMessage));
      },
      (books) {
        emit(DesignBooksSuccess(books));
      },
    );
  }
}
