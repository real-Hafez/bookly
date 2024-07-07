import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'featuredbook_state.dart';

class FeaturedbookCubit extends Cubit<FeaturedbookState> {
  FeaturedbookCubit() : super(FeaturedbookInitial());
}
