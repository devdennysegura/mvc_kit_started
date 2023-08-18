import 'package:get_it/get_it.dart';

import '../../riverpod/models/counter_model.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => CounterModel());
}
