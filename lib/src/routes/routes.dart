import 'package:flutter/material.dart';

// Pages
import 'package:yumyumgo/src/pages/welcome_page.dart';
import 'package:yumyumgo/src/pages/forgot_pwd_page.dart';
import 'package:yumyumgo/src/pages/login_page.dart';
import 'package:yumyumgo/src/pages/sign_up_page.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => WelcomePage(),
  'login': (BuildContext context) => LoginPage(),
  'forgot-password': (BuildContext context) => ForgotPassword(),
  'sign-up': (BuildContext context) => SignUpPage()
};
