import 'package:flutter/material.dart';
import 'package:myapp/screen/dashboard.dart';
import 'package:myapp/screen/home.dart';
import 'package:myapp/screen/metrics.dart';
import 'package:myapp/screen/planner.dart';

class Router {
  /// This file contains all the routing constants used within the app
  static const String registerRoute = '/register';
  static const String loginRoute = '/login';
  static const String homeRoute = '/home';
  static const String recentUpcomingRoute = '/recent-upcoming';
  static const String plannerRoute = '/planner';
  static const String dashboardRoute = '/dashboard';
  static const String menuRoute = '/menu';
  static const String metricsRoute = '/metrics';
  static const String actualRoute = '/actual';
  static const String planVsActualRoute = '/plan-vs-actual';
  static const String reportsRoute = '/reports';
  static const String galleryRoute = '/gallery';
  static const String profileRoute = '/profile';
  static const String settingsRoute = '/settings';
  static const String feedbackRoute = '/feedback';
  static const String supportRoute = '/support';
  static const String helpRoute = '/help';
  static const String logoutRoute = '/logout';


  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        //var data = settings.arguments as String;
        return MaterialPageRoute(builder: (_) => Home());
      case plannerRoute:
        return MaterialPageRoute(builder: (_) => Planner());
      case plannerRoute:
        var data = settings.arguments as String;
        return MaterialPageRoute(builder: (_) => Dashboard());
      case metricsRoute:
        return MaterialPageRoute(builder: (_) => Metrics());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
