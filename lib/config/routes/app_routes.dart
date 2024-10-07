import 'package:bid_ride/features/login/presentation/pages/login_screen.dart';
import 'package:bid_ride/features/registration/presentation/pages/register_screen.dart';
import 'package:bid_ride/features/splash/presentation/pages/splash_screen.dart';
import 'package:bid_ride/features/welcome_screen/presentation/pages/welcome_screen.dart';
import '../../features/first_feature/presentation/screens/feature_screen.dart';

class AppRoutes {
  static String homeScreenRoute = 'homeScreen';
  static String splashScreenRoute = 'splashScreen';
  static String welcomeScreenRoute = 'welcomeScreen';
  static String registerScreenRoute = 'registerScreen';
  static String loginScreenRoute = 'loginScreen';

  static get routes {
    return {
      AppRoutes.homeScreenRoute: (context) => const HomeScreen(),
      AppRoutes.splashScreenRoute: (context) => const SplashScreen(),
      AppRoutes.welcomeScreenRoute: (context) => const WelcomeScreen(),
      AppRoutes.registerScreenRoute: (context) => const RegisterScreen(),
      AppRoutes.loginScreenRoute: (context) => const LoginScreen(),
    };
  }
}
