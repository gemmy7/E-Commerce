import 'package:e_commerce/features/splash/logic/cubit/splash_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupDependencyInjection() async {
  // Registering the SplashCubit
  getIt.registerFactory(() => SplashCubit(getIt));
}
