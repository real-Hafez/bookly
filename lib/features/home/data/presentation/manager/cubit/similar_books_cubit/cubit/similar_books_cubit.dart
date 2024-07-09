import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksloading());
    var result = await homeRepo.fetchsimilarbokks(category: category);
    result.fold((failure) {
      emit(SimilarBooksfailure(errmsg: failure.err_msg));
    }, (books) {
      emit(SimilarBookssucsess(books));
    });
  }
}
