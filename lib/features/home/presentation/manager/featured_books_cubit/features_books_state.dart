part of 'features_books_cubit.dart';

@immutable
sealed class FeaturesBooksState {}

final class FeaturesBooksInitial extends FeaturesBooksState {}

final class FeaturesBooksLoading extends FeaturesBooksState {}

final class FeaturesBooksSuccess extends FeaturesBooksState {
  final List<BookModel>books;
  FeaturesBooksSuccess(this.books);
}

final class FeaturesBooksError extends FeaturesBooksState {
  final String errorMessage;
  FeaturesBooksError(this.errorMessage);
}
