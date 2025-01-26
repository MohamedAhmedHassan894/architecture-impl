import 'package:architecture_impl/core/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/theming/colors.dart';

class ImployApp extends StatelessWidget {
  const ImployApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        child: MaterialApp(
          title: 'Imply App',
          theme: ThemeData(
            primaryColor: ColorsManager.mainGreen,
            scaffoldBackgroundColor: Colors.white,
          ),
          debugShowCheckedModeBanner: false,
          initialRoute:
              isLoggedInUser ? Routes.interviewsScreen : Routes.loginScreen,
          onGenerateRoute: AppRouter().generateRoute,
        ));
  }
}
