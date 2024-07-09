part of 'similar_books_cubit.dart';

sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

final class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBookssucsess extends SimilarBooksState {
  final List<BookModel> books;

  const SimilarBookssucsess(this.books);
}

final class SimilarBooksfailure extends SimilarBooksState {
  final String errmsg;
  const SimilarBooksfailure({required this.errmsg});
}

final class SimilarBooksloading extends SimilarBooksState {}
