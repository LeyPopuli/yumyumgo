import 'package:flutter/material.dart';
import 'package:yumyumgo/src/features/presentation/common_widgets/buttons/back_button.dart';
import 'package:yumyumgo/src/features/presentation/common_widgets/texts/header_text.dart';

import '../../../../colors/colors.dart';
import '../../common_widgets/alerts/default_alert.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: Builder(builder: (BuildContext context) {
            return backButton(context, Colors.black);
          })),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              headerText(text: 'Forgot password', fontSize: 30.0),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Please enter your email address. You will receive a link to create a new password via email.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0),
                ),
              ),
              _emailInput(),
              _sendButton(context)
            ],
          ),
        ),
      ),
    );
  }
}

Widget _emailInput() {
  return Container(
    margin: EdgeInsets.only(top: 20.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: lightGrey, borderRadius: BorderRadius.circular(30.0)),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Email',
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          )),
    ),
  );
}

Widget _sendButton(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 30.0),
    width: 350,
    height: 45,
    child: ElevatedButton(
      onPressed: () {
        showDefaultAlert(
            context,
            AssetImage('assets/lock.png'),
            'Your password has been reset.',
            "You'll shortly receive an email with a code to setup a new password.",
            'Done',
            () => _goToLogin(context));
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
              'Send',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

void _goToLogin(BuildContext context) {
  Navigator.pushNamed(context, 'login');
}
