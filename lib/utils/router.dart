import 'package:flutter/material.dart';
import 'package:hrms/utils/route_paths.dart';

import '../common_screens/login_screen.dart';
import '../common_screens/splashscreen.dart';
import '../employee_screens/dashboard_screen.dart';


class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.splashScreen:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case RoutePaths.dashboard:
        return MaterialPageRoute(builder: (_) => DashboardScreen());
      case RoutePaths.login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      // case RoutePaths.scheduleDelivery:
      //   final arg = settings.arguments as ScheduleDeliveryScreenArguments;
      //   return MaterialPageRoute(builder: (_) => ScheduleDeliveryScreen(arg));
      // case RoutePaths.completeDelivery:
      //   final arg = settings.arguments as CompleteDeliveryScreenArguments;
      //   return MaterialPageRoute(builder: (_) => CompleteDeliveryScreen(arg));
      // case RoutePaths.forgotPassword:
      //   return MaterialPageRoute(builder: (_) => ForgotPasswordScreen());
      // case RoutePaths.newPassword:
      //   return MaterialPageRoute(builder: (_) => NewPasswordScreen());
      // case RoutePaths.otpScreen:
      //   return MaterialPageRoute(builder: (_) => OtpScreen());
      // case RoutePaths.uploadPdfFileScreen:
      //   final arg = settings.arguments as UploadScreenArguments;
      //   return MaterialPageRoute(builder: (_) => UploadPdfFileScreen(arg));
      // case RoutePaths.overviewScreen:
      //   final arg = settings.arguments as int;
      //   return MaterialPageRoute(builder: (_) => OverviewScreen(arg));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
