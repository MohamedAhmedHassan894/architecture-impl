import 'package:architecture_impl/core/networking/dio_factory.dart';
import 'package:architecture_impl/features/login/data/services/login_api_service.dart';
import 'package:get_it/get_it.dart';
import '../../features/login/data/repositories/login_repository.dart';
import '../../features/login/logic/cubit/login_cubit.dart';
import '../../features/signup/data/repositories/signup_repository.dart';
import '../../features/signup/data/services/signup_api_service.dart';
import '../../features/signup/logic/cubit/signup_cubit.dart';

// This is our global ServiceLocator
final getIt = GetIt.instance;

Future<void> init() async {


  final dio = DioFactory.getDio();
  // Login
  getIt.registerLazySingleton<LoginApiService>(() => LoginApiService(dio));
  getIt.registerLazySingleton<LoginRepository>(() => LoginRepository(getIt()));
  getIt.registerFactory(() => LoginCubit(getIt()));

  // Signup
  getIt.registerLazySingleton<SignupApiService>(() => SignupApiService(dio));
  getIt.registerLazySingleton<SignupRepository>(() => SignupRepository(getIt()));
  getIt.registerFactory(() => SignupCubit(getIt()));
  
}
