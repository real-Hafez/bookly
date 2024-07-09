import 'dart:async';

import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchbestsellerbokks();
  Future<Either<Failure, List<BookModel>>> fetchfeatcherdbokks();
  Future<Either<Failure, List<BookModel>>> fetchsimilarbokks(
      {required String category});
}
