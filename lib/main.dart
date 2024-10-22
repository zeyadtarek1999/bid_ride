import 'package:bid_ride/features/registration/presentation/cubit/register_cubit.dart';
import 'package:bid_ride/features/splash/presentation/manager/splash_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app.dart';
import 'core/observers/bloc_observer.dart';
import 'injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  Bloc.observer = MyBlocObserver();
  EasyLocalization.ensureInitialized();
  await getItInit();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ar')],
      path: 'assets/languages',
      fallbackLocale: const Locale('en'),
    child: MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<SplashCubit>(),
        ), BlocProvider(
          create: (_) => getIt<RegisterCubit>(),
        ),
      ],
      child: const MyApp(),
    ),
  ));
}
