import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/Book_Model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?q=subject:programming&Filtering=free-ebooks&sorting=newest');
      List<BookModel> books = [];

      for (var book in data['items']) {
        books.add(BookModel.fromJson(book));
      }

      return right(books);
    } on Exception catch (e) {
      // TODO
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?q=subject:programming&Filtering=free-ebooks');
      List<BookModel> books = [];

      for (var book in data['items']) {
        books.add(BookModel.fromJson(book));
      }

      return right(books);
    } on Exception catch (e) {
      // TODO
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
