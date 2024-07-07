import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newst_books_state.dart';

class NewstBooksCubit extends Cubit<NewstBooksState> {
  NewstBooksCubit(this.homeRepo) : super(NewstBooksInitial());
  final HomeRepo homeRepo;
  Future<void> featchnewstbooks() async {
    emit(NewstBooksloading());
    var result = await homeRepo.fetchfeatcherdbokks();
    result.fold((Failure) {
      emit(NewstBooksfailure(Failure.err_msg));
    }, (books) {
      emit(
        NewstBookssucsess(books),
      );
    });
  }
}
