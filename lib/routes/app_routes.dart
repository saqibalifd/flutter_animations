import 'package:flutter/material.dart';
import 'package:flutter_animations/view/animated_text/animated_textkit_screen.dart';

import '../view/animated_container/animated_container_screen.dart';
import '../view/home_screen.dart';
import 'route_names.dart';

class AppRoutes {
  static final routes = <String, WidgetBuilder>{
    // Auth
    RouteNames.homeScreen: (context) => HomeScreen(),
    RouteNames.animatedContainer: (context) => const AnimatedContainerScreen(),
    RouteNames.animatedTextKitScreen: (context) =>
        const AnimatedTextkitScreen(),
  };
}
