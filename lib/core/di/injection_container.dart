import 'package:architecture_impl/core/networking/dio_factory.dart';
import 'package:architecture_impl/features/login/data/services/login_api_service.dart';
import 'package:get_it/get_it.dart';
import '../../features/login/data/repositories/login_repository.dart';
import '../../features/login/logic/cubit/login_cubit.dart';

// This is our global ServiceLocator
final getIt = GetIt.instance;

Future<void> init() async {


  final dio = DioFactory.getDio();
  // Login
  getIt.registerLazySingleton<LoginApiService>(() => LoginApiService(dio));
  getIt.registerLazySingleton<LoginRepository>(() => LoginRepository(getIt()));
  getIt.registerFactory(() => LoginCubit(getIt()));
  
}
