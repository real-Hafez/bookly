import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featuredbook_state.dart';

class FeaturedbookCubit extends Cubit<FeaturedbookState> {
  FeaturedbookCubit(this.homeRepo) : super(FeaturedbookInitial());
  final HomeRepo homeRepo;
  Future<void> featchfutchurebooks() async {
    emit(Featuredbookloading());
    var result = await homeRepo.fetchfeatcherdbokks();
    result.fold((Failure) {
      emit(Featuredbookfailure(Failure.err_msg));
    }, (books) {
      emit(
        Featuredbooksucsess(books),
      );
    });
  }
}
