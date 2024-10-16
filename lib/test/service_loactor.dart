import 'package:get_it/get_it.dart';
import 'package:testing_app/classes/class_one.dart';
import 'package:testing_app/classes/class_two.dart';

final serviceLocator = GetIt.instance;
setup() {
  serviceLocator.registerLazySingleton<Battery>(() => Battery());
  serviceLocator.registerLazySingleton<Petroleum>(() => Petroleum(hp: 300));
  serviceLocator.registerSingleton<Car>(Car());
}
