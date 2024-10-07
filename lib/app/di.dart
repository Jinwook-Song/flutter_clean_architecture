import 'package:clean_architecture/app/app_prefs.dart';
import 'package:clean_architecture/data/data_source/remote_data_source.dart';
import 'package:clean_architecture/data/network/app_api.dart';
import 'package:clean_architecture/data/network/dio_factory.dart';
import 'package:clean_architecture/data/network/network_info.dart';
import 'package:clean_architecture/data/repository/repository_impl.dart';
import 'package:clean_architecture/domain/repository/repository.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

final instance = GetIt.instance;

Future<void> initAppModule() async {
  final prefs = await SharedPreferences.getInstance();

  // SharedPreferences instance
  instance.registerLazySingleton<SharedPreferences>(() => prefs);

  // App preferences instance
  instance.registerLazySingleton<AppPreferences>(
      () => AppPreferences(instance.get<SharedPreferences>()));

  // network_info instance
  instance.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(InternetConnectionChecker()));

  // Dio factory instance
  instance.registerLazySingleton<DioFactory>(
      () => DioFactory(instance.get<AppPreferences>()));

  // App API instance
  final dio = await instance.get<DioFactory>().getDio();
  instance.registerLazySingleton<AppServiceClient>(() => AppServiceClient(dio));

  // Remote data source instance
  instance.registerLazySingleton<RemoteDataSource>(
      () => RemoteDataSourceImpl(instance.get<AppServiceClient>()));

  instance.registerLazySingleton<Repository>(() => RepositoryImpl(
      instance.get<RemoteDataSource>(), instance.get<NetworkInfo>()));
}
