import 'package:flutter/material.dart';
import 'package:yumyumgo/src/pages/login_page.dart';

// Pages
import 'package:yumyumgo/src/pages/welcome_page.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => WelcomePage(),
  'login': (BuildContext context) => LoginPage()
};
