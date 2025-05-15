import 'package:flutter/material.dart';

import '../view/animated_container/animated_container_screen.dart';
import '../view/home_screen.dart';
import '../view/other_screen.dart/other_screen.dart';
import 'route_names.dart';

class AppRoutes {
  static final routes = <String, WidgetBuilder>{
    // Auth
    RouteNames.homeScreen: (context) => HomeScreen(),
    RouteNames.animatedContainer: (context) => const AnimatedContainerScreen(),
    RouteNames.otherScreen: (context) => const OtherScreen(),
  };
}
