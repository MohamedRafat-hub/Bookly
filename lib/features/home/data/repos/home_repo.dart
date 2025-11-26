import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/models/Book_Model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo
{
  Future<Either<Failure,List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure,List<BookModel>>>fetchFeaturedBooks();
}