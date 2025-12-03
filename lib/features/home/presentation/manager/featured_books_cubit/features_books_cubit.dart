import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/Book_Model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'features_books_state.dart';

class FeaturesBooksCubit extends Cubit<FeaturesBooksState> {
  FeaturesBooksCubit(this.homeRepo) : super(FeaturesBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks()async
  {
    emit(FeaturesBooksLoading());
    var result  = await homeRepo.fetchFeaturedBooks();
    result.fold((failure){
      emit(FeaturesBooksFailure(failure.errorMessage));
    }, (books){
      emit(FeaturesBooksSuccess(books));
    });
  }
}
