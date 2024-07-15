import 'package:e_commerce/core/routes/app_router.dart';
import 'package:e_commerce/core/routes/routes_constants.dart';
import 'package:e_commerce/core/themes/app_theme.dart';
import 'package:flutter/material.dart';

class ShopingApp extends StatelessWidget {
  final AppRouter appRouter;
  const ShopingApp({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-commerce',
      theme: AppTheme.appTheme,
      initialRoute: Routes.splashScreen,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
