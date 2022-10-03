import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/common/theme.dart';
import 'package:myapp/config/routes.dart';
import 'package:myapp/screen/home.dart';

import 'config/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final appTitle = 'Food Planner';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      onGenerateRoute: Router.generateRoute,
      initialRoute: Router.homeRoute,
      //routes: Routes().getRoutes(),
      home: Home(),
      theme: AppTheme().getTheme(),
      debugShowCheckedModeBanner: false,
    );
  }
}
