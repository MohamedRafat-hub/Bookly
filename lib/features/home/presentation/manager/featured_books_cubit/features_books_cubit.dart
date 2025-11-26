import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/Book_Model.dart';
import 'package:meta/meta.dart';

part 'features_books_state.dart';

class FeaturesBooksCubit extends Cubit<FeaturesBooksState> {
  FeaturesBooksCubit() : super(FeaturesBooksInitial());
}
