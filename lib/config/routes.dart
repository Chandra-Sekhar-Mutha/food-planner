import 'package:myapp/screen/dashboard.dart';
import 'package:myapp/screen/home.dart';
import 'package:myapp/screen/metrics.dart';
import 'package:myapp/screen/planner.dart';

class Routes {
  getRoutes() => {
        '/home': (context) => Home(),
        '/planner': (context) => Planner(),
        '/dashboard': (context) => Dashboard(),
        '/metrics': (context) => Metrics(),
      };
}
