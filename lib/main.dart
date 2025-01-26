import 'package:architecture_impl/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/injection_container.dart' as di;
import 'core/helpers/bloc_observer.dart';
import 'core/helpers/constants.dart';
import 'core/helpers/shared_pref_helper.dart';
import 'imploy_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  await checkIfLoggedInUser();
  await di.init();
  runApp(const ImployApp());
}

checkIfLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (userToken.isNullOrEmpty()) {
    isLoggedInUser = false;
  } else {
    isLoggedInUser = true;
  }
}
