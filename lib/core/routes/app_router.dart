import 'package:flutter/material.dart';
import 'package:kabar_app/core/routes/routes.dart';
import 'package:kabar_app/features/auth/presentation/views/register_view.dart';
import 'package:kabar_app/features/home/presentation/views/home_view.dart';
import 'package:kabar_app/features/auth/presentation/views/login_view.dart';
import 'package:kabar_app/features/onboarding/presentation/view/onboarding_view.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeView:
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
        );
      case Routes.onBoardingView:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingView(),
        );
       case Routes.loginView:
        return MaterialPageRoute(
          builder: (context) => const LoginView(),
        );
       case Routes.registerView:
        return MaterialPageRoute(
          builder: (context) => const RegisterView(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No Route Defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
