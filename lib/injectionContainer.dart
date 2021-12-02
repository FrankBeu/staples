import 'package:get_it/get_it.dart';
import 'package:staples/config/constants.dart';
import 'package:staples/core/util/inputConverter.dart';
import 'package:staples/data/repositories/productRepository.dart';
import 'package:staples/domain/repositories/productRepository.dart' as domain;
import 'package:staples/domain/usecases/addProduct.dart';
import 'package:staples/domain/usecases/getAllProducts.dart';

import 'data/datasources/local/app_database.dart';
import 'presentation/bloc/bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Features - Product
  // Bloc
  sl.registerFactory(
    () => ProductBloc(
      addProduct: sl(),
      getAllProducts: sl(),
      inputConverter: sl(),
    ),
  );

  // Use cases
  sl.registerLazySingleton(() => AddProduct(sl()));
  sl.registerLazySingleton(() => GetAllProducts(sl()));

  // Repository
  sl.registerLazySingleton<domain.ProductRepository>(
    () => ProductRepository(
      sl(),
    ),
  );

  //! Database
  final database =
      await $FloorAppDatabase.databaseBuilder(productTableName).build();
  // await $FloorAppDatabase.inMemoryDatabaseBuilder().build();
  sl.registerSingleton<AppDatabase>(database);

  //! Core
  sl.registerLazySingleton(() => InputConverter());
}
