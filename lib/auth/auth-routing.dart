import 'package:browser/auth/signup-page.dart';
import 'package:flutter/cupertino.dart';

import 'login-page.dart';

Map<String, WidgetBuilder> authRoutes = {
  '/signup': (context) => SignupPage(),
  '/login': (context) => LoginPage()
};
