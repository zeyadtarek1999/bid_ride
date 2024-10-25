import 'package:bid_ride/core/helpers/secure_cache_helper.dart';
import 'package:bid_ride/features/registration/data/data_sources/register_local_data_source.dart';
import 'package:bid_ride/features/registration/data/repositories/register_repository_imp.dart';
import 'package:bid_ride/features/registration/domain/repositories/register_repository.dart';
import 'package:bid_ride/features/registration/domain/use_cases/get_user_info.dart';
import 'package:bid_ride/features/registration/domain/use_cases/register_uc.dart';
import 'package:bid_ride/features/registration/presentation/cubit/register_cubit.dart';
import 'package:bid_ride/features/splash/presentation/manager/splash_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:bid_ride/core/services/permission_service.dart';

import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/api/api_consumer.dart';
import 'core/api/app_interceptors.dart';
import 'core/api/dio_consumer.dart';
import 'core/helpers/shared_prefrences.dart';
import 'core/network/netwok_info.dart';
import 'core/services/alert_service.dart';
import 'core/services/url_launcher_service.dart';

final getIt = GetIt.instance;

Future<void> getItInit() async {
  //! Features

  /// Blocs
  getIt.registerFactory(() => SplashCubit( ));
  getIt.registerFactory(() => RegisterCubit(signUpUseCase: getIt() ));

  /// Use cases

getIt.registerLazySingleton<SignUpUseCase>(() => SignUpUseCaseImpl(  getIt()));
getIt.registerLazySingleton (() => GetUserInfoUseCase(  getIt()));

  /// Repository

 getIt.registerLazySingleton<SignUpRepository>(() =>
     SignUpRepositoryImpl(localDataSource: getIt() ));

  /// Data Sources

getIt.registerLazySingleton<SignUpLocalDataSource>(() => SignUpLocalDataSourceImpl(  getIt()));

  /// Core
  getIt.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(connectionChecker: getIt()));
  getIt.registerLazySingleton<ApiConsumer>(() => DioConsumer(client: getIt()));

  /// External
  SharedPreferences preferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => preferences);
  getIt.registerLazySingleton(() => AppInterceptors());
  // getIt.registerLazySingleton(() => LogInterceptor(
  //     request: true,
  //     requestBody: true,
  //     requestHeader: true,
  //     responseBody: true,
  //     responseHeader: false,
  //     error: true));
  getIt.registerLazySingleton(() => InternetConnectionChecker());
  getIt.registerLazySingleton(() => CacheHelper());
  getIt.registerLazySingleton(() => UrlLauncherService());
  getIt.registerLazySingleton(() => PermissionService());
  getIt.registerLazySingleton(() => AlertService());
  getIt.registerLazySingleton(() => SecureCacheHelper());
  getIt.registerLazySingleton(() => PrettyDioLogger(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: false,
        responseBody: true,
        error: true,
        compact: true,
        maxWidth: 90,
        enabled: kDebugMode,
      ));
  getIt.registerLazySingleton(() => Dio());
}
