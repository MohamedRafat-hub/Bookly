import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:get_it/get_it.dart';

import 'api_service.dart';

final gitIt = GetIt.instance;

void setUp() {
  gitIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(ApiService()),
  );
}
