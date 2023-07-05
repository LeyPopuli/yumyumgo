import 'package:flutter/material.dart';
import 'package:yumyumgo/src/features/presentation/widgets/back_button.dart';

import '../../../../colors/colors.dart';

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
              Text(
                'Forgot password',
                style: TextStyle(
                    color: black, fontWeight: FontWeight.bold, fontSize: 30.0),
              ),
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
        _showAlert(context);
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

void _showAlert(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          content: Container(
            height: 325,
            child: Column(
              children: [
                Image(
                  image: AssetImage('assets/lock.png'),
                  width: 130,
                  height: 130,
                ),
                Container(
                    margin: EdgeInsets.all(15.0),
                    child: Text(
                      'Your password has been reset',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    )),
                Container(
                    margin: EdgeInsets.only(top: 3.0),
                    child: Text(
                      "You'll shortly receive an email with a code to setup a new password.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: darkGrey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0),
                    )),
                _doneButton(context),
              ],
            ),
          ),
        );
      });
}

Widget _doneButton(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 25.0),
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
              'Done',
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
