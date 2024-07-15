import 'package:e_commerce/core/di/dependency_injection.dart';
import 'package:e_commerce/core/routes/routes_constants.dart';
import 'package:e_commerce/features/onboarding/ui/onboarding_screen.dart';
import 'package:e_commerce/features/splash/logic/cubit/splash_cubit.dart';
import 'package:e_commerce/features/splash/ui/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SplashCubit>(),
            child: const SplashScreen(),
          ),
        );
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      default:
        return null;
    }
  }
}
