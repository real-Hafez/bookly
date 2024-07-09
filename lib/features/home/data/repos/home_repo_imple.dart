import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utilts/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImple implements HomeRepo {
  final ApiService apiService;
  HomeRepoImple(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchbestsellerbokks() async {
    try {
      var data = await apiService.get(
        endpoint: 'volumes?q=subject:history',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(server_failure.fromDioerror(e));
      }
      return left(server_failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchfeatcherdbokks() async {
    try {
      var data = await apiService.get(
        endpoint: 'volumes?filtering=free-ebooks&q=subject:Programming',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(server_failure.fromDioerror(e));
      }
      return left(server_failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchsimilarbokks(
      {required String category}) async {
    try {
      var data = await apiService.get(
        endpoint:
            'volumes?filtering=free-ebooks&Sorting-relevance&q=subject:Programming',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(server_failure.fromDioerror(e));
      }
      return left(server_failure(e.toString()));
    }
  }
}
