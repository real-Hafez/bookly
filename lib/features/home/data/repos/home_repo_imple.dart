import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utilts/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImple implements HomeRepo {
  final ApiService apiService;
  HomeRepoImple(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchbestsellerbokks() async {
    try {
      var data = await apiService.get(
        endpoint: 'volumes?q=subject:Programming',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      return left(server_failure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchfeatcherdbokks() {
    // TODO: implement fetchfeatcherdbokks
    throw UnimplementedError();
  }
}
