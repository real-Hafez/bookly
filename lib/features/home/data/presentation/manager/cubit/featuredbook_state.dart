part of 'featuredbook_cubit.dart';

sealed class FeaturedbookState extends Equatable {
  const FeaturedbookState();

  @override
  List<Object> get props => [];
}

final class FeaturedbookInitial extends FeaturedbookState {}

final class Featuredbookloading extends FeaturedbookState {
  final String err_msg;
  const Featuredbookloading(this.err_msg);
}

final class Featuredbookfailure extends FeaturedbookState {}

final class Featuredbooksucsess extends FeaturedbookState {
  final List<BookModel> books;
  const Featuredbooksucsess(this.books);
}
