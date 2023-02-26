import 'package:flutter/material.dart';
import 'package:task_assignment/routes/route_name.dart';
import 'package:task_assignment/screen/home_screen.dart';
import 'package:task_assignment/screen/transaction_detail.dart';

import '../screen/login_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case RouteName.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

      case RouteName.detailScreen:
        return MaterialPageRoute(
          builder: (_) => const TransactionDetail(),
        );
      default:
        return MaterialPageRoute<Widget>(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
              ),
            ),
          ),
        );
    }
  }
}
