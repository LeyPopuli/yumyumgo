import 'package:flutter/material.dart';

import '../../../../colors/colors.dart';
import '../texts/header_text.dart';

// AssetImage('assets/lock.png')
// 'Your password has been reset'

void showDefaultAlert(
    BuildContext context,
    ImageProvider<Object> imagePath,
    String header,
    String subText,
    String labelButton,
    VoidCallback buttonFunction) {
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
                  image: imagePath,
                  width: 130,
                  height: 130,
                ),
                Container(
                    margin: EdgeInsets.all(15.0),
                    child: headerText(
                        text: header,
                        fontSize: 20.0,
                        textAlign: TextAlign.center)),
                Container(
                    margin: EdgeInsets.only(top: 3.0),
                    child: Text(
                      subText,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: darkGrey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0),
                    )),
                _doneButton(context, labelButton, buttonFunction),
              ],
            ),
          ),
        );
      });
}

Widget _doneButton(
    BuildContext context, String labelButton, VoidCallback buttonFunction) {
  return Container(
    margin: EdgeInsets.only(top: 25.0),
    width: 350,
    height: 45,
    child: ElevatedButton(
      onPressed: buttonFunction,
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
              labelButton,
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
