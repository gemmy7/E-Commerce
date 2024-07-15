import 'package:e_commerce/app.dart';
import 'package:e_commerce/core/di/dependency_injection.dart';
import 'package:e_commerce/core/routes/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  setupDependencyInjection();
  runApp(
    ShopingApp(
      appRouter: AppRouter(),
    ),
  );
}
