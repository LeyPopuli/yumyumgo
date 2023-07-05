import 'package:flutter/material.dart';

// Pages
import 'package:yumyumgo/src/features/presentation/welcome_page/view/welcome_page.dart';
import 'package:yumyumgo/src/features/presentation/forgot_pwd_page/view/forgot_pwd_page.dart';
import 'package:yumyumgo/src/features/presentation/login_page/view/login_page.dart';
import 'package:yumyumgo/src/features/presentation/sign_up_page/view/sign_up_page.dart';
import 'package:yumyumgo/src/features/presentation/tabs/tabs_page.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => WelcomePage(),
  'login': (BuildContext context) => LoginPage(),
  'forgot-password': (BuildContext context) => ForgotPassword(),
  'sign-up': (BuildContext context) => SignUpPage(),
  'tabs': (BuildContext context) => TabsPage()
};
