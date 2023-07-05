import "dart:ui";

import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:yumyumgo/src/colors/colors.dart";

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.black));

    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1586511934875-5c5411eebf79?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80')),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
            child: Container(color: Colors.black.withOpacity(0.5)),
          ),
        ),
        Positioned(
          top: 25.0,
          left: 16.0,
          child: Image.asset(
            'assets/logo.png',
            width: 80.0,
            height: 80.0,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: Text('COOKING IS OVERRATED, LET US DO THE WORK.',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 45.0))),
            Container(
                margin: EdgeInsets.only(bottom: 50.0),
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
                child: Text(
                    'Give us your location and let us do our foodie magic.',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 17.0))),
            Container(
              width: 350,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'login');
                },
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  backgroundColor: purple,
                  elevation: 0.5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              width: 350,
              height: 45,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  backgroundColor: blue,
                  elevation: 0.5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage('assets/facebook.png'),
                              width: 25.0,
                              height: 25.0,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.0),
                              child: Text(
                                'Connect with Facebook',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    ));
  }
}
