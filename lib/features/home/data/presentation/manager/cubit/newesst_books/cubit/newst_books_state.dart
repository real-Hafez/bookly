part of 'newst_books_cubit.dart';

sealed class NewstBooksState extends Equatable {
  const NewstBooksState();

  @override
  List<Object> get props => [];
}

final class NewstBooksInitial extends NewstBooksState {}

final class NewstBooksloading extends NewstBooksState {}

final class NewstBookssucsess extends NewstBooksState {
  final List<BookModel> books;
  const NewstBookssucsess(this.books);
}

final class NewstBooksfailure extends NewstBooksState {
  final String err_msg;
  const NewstBooksfailure(this.err_msg);
}
