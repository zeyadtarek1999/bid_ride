import 'package:bid_ride/features/splash/presentation/pages/splash_screen.dart';

import '../../features/first_feature/presentation/screens/feature_screen.dart';

class AppRoutes {
  static String homeScreenRoute = 'homeScreen';
  static String splashScreenRoute = 'splashScreen';

  static get routes {
    return {
      AppRoutes.homeScreenRoute: (context) => const HomeScreen(),
      AppRoutes.splashScreenRoute: (context) => const SplashScreen(),
    };
  }
}
