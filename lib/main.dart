import 'package:flutter/material.dart';

//Routes
import 'package:yumyumgo/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: 'welcome',
      theme: ThemeData(
          primaryColorDark: Color.fromRGBO(36, 42, 55, 1.0),
          primaryColor: Color.fromRGBO(157, 4, 192, 1),
          cardColor: Color.fromRGBO(255, 45, 85, 1.0),
          disabledColor: Color.fromRGBO(241, 242, 246, 1.0),
          primaryColorLight: Color.fromRGBO(24, 119, 242, 1.0),
          scaffoldBackgroundColor: Colors.white,
          appBarTheme:
              AppBarTheme(iconTheme: IconThemeData(color: Colors.black))),
    );
  }
}
