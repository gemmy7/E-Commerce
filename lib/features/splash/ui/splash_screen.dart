import 'package:e_commerce/core/helpers/extensions.dart';
import 'package:e_commerce/core/routes/routes_constants.dart';
import 'package:e_commerce/core/utils/app_assets.dart';
import 'package:e_commerce/features/splash/logic/cubit/splash_cubit.dart';
import 'package:e_commerce/features/splash/logic/cubit/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      context.pushReplacementNamed(Routes.onBoardingScreen);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state is UnAuthenticated) {
          Future.delayed(const Duration(seconds: 2), () {
            context.pushReplacementNamed(Routes.onBoardingScreen);
          });
        }
      },
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                image: AssetImage(AppAssets.image2),
                fit: BoxFit.cover,
                opacity: 0.4),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
                size: 180,
              ),
              // SizedBox(height: 15),
              Text(
                'Jimmy Shop',
                style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'CircularStd',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
