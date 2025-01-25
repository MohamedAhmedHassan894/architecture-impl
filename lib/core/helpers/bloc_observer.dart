import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    log(name: '${bloc.runtimeType}', 'onCreate');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log(name: '${bloc.runtimeType}', 'onChange -- $change');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log(name: '${bloc.runtimeType}', 'onError -- $error');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    log(name: '${bloc.runtimeType}', 'onClose');
  }
}
