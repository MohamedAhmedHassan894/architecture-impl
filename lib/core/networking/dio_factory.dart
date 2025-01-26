import 'package:architecture_impl/core/helpers/constants.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../helpers/shared_pref_helper.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

  static Dio? _dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (_dio == null) {
      _dio = Dio()
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioHeaders();
      addDioInterceptor();
      return _dio!;
    } else {
      return _dio!;
    }
  }

  static void addDioHeaders() async {
    _dio?.options.headers = {
      "Authorization":
          "Bearer ${await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken)}"
    };
  }

   static void setTokenIntoHeaderAfterLogin(String token) {
    _dio?.options.headers = {
      'Authorization': 'Bearer $token',
    };
  }

  static void addDioInterceptor() {
    _dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}
