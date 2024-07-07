import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImple implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchbestsellerbokks() {
    // TODO: implement fetchbestsellerbokks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchfeatcherdbokks() {
    // TODO: implement fetchfeatcherdbokks
    throw UnimplementedError();
  }
}
