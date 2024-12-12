import 'package:flutter_2_5_bloc_1/data/api/api.dart';
import 'package:flutter_2_5_bloc_1/data/api/api_client.dart';
import 'package:flutter_2_5_bloc_1/data/repo/product_repo.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton<Api>(() => ApiClient(client: getIt()));
  getIt.registerLazySingleton(() => http.Client());

  getIt.registerLazySingleton<ProductRepo>(() => ProductRepo(getIt()));
}
