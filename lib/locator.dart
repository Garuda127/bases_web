import 'package:bases_web/services/navigation_service.dart';
import 'package:get_it/get_it.dart';

/// Register a function that returns an instance of NavigationService, and only create one instance of
/// NavigationService.
GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
}
