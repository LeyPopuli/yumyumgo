import "package:flutter/material.dart";

import "../colors/colors.dart";
import "../widgets/back_button.dart";

class SignUpPage extends StatelessWidget {
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
                child: Column(children: [
                  Text(
                    'Create an account',
                    style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0),
                  ),
                  _userNameInput(),
                  _emailInput(),
                  _phoneNumberInput(),
                  _dateOfBirthInput(),
                  _passwordInput(),
                  _signUpButton(context),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "By clicking 'Sign up' you agree to the following Terms and Conditions",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 13.0),
                    ),
                  )
                ]))));
  }
}

Widget _userNameInput() {
  return Container(
    margin: EdgeInsets.only(top: 35.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: lightGrey, borderRadius: BorderRadius.circular(40.0)),
    child: TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          hintText: 'Username',
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          )),
    ),
  );
}

Widget _emailInput() {
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: lightGrey, borderRadius: BorderRadius.circular(40.0)),
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

Widget _phoneNumberInput() {
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: lightGrey, borderRadius: BorderRadius.circular(40.0)),
    child: TextField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
          hintText: 'Phone number',
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          )),
    ),
  );
}

Widget _dateOfBirthInput() {
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: lightGrey, borderRadius: BorderRadius.circular(40.0)),
    child: TextField(
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
          hintText: 'Date of birth',
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          )),
    ),
  );
}

Widget _passwordInput() {
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: lightGrey, borderRadius: BorderRadius.circular(40.0)),
    child: TextField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Password',
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          )),
    ),
  );
}

Widget _signUpButton(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 30.0),
    width: 350,
    height: 45,
    child: ElevatedButton(
      onPressed: () {
        // Navigator.pushNamed(context, 'login');
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
              'Sign up',
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
