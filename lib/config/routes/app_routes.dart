import 'package:bid_ride/features/registration/presentation/pages/register_screen.dart';
import 'package:bid_ride/features/splash/presentation/pages/splash_screen.dart';
import 'package:bid_ride/features/welcome_screen/presentation/pages/welcome_screen.dart';
import '../../features/first_feature/presentation/screens/feature_screen.dart';

class AppRoutes {
  static String homeScreenRoute = 'homeScreen';
  static String splashScreenRoute = 'splashScreen';
  static String registerScreenRoute = 'registerScreen';
  static String welcomeScreenRoute = 'welcomeScreen';

  static get routes {
    return {
      AppRoutes.homeScreenRoute: (context) => const HomeScreen(),
      AppRoutes.splashScreenRoute: (context) => const SplashScreen(),
      AppRoutes.registerScreenRoute: (context) => const RegisterScreen(),
      AppRoutes.welcomeScreenRoute: (context) => const WelcomeScreen(),
    };
  }
}
