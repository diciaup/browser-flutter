import 'dart:developer';

import 'package:browser/auth/auth-routing.dart';
import 'package:browser/main-guard.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> mainRoutes = {
  '/': (context) => MainGuard()
};

Map<String, Map<String, WidgetBuilder>> routesToInclude = {
  'main': mainRoutes,
  'auth': authRoutes
};


Map<String, WidgetBuilder> getApplicationRoutes() {
  Map<String, WidgetBuilder> applicationRoutes = {};
  for(var moduleName in routesToInclude.keys) {
    Map<String, WidgetBuilder> newRouteToInclude = {};
    routesToInclude[moduleName].keys.forEach(
            (routeKey) {
              newRouteToInclude['/'+moduleName+routeKey] = routesToInclude[moduleName][routeKey];
            });

    applicationRoutes.addAll(newRouteToInclude);
  }
  print('Application  routes: ');
  print(applicationRoutes);
  return applicationRoutes;
}


