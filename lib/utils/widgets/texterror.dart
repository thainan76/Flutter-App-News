import 'package:flutter/material.dart';

class TextError extends StatelessWidget {
  String msg;
  double fontSize;
  double height;
  Color textColor;

  TextError(this.msg, {this.fontSize = 17, this.height = 210, this.textColor = Colors.red});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      child: Center(
        child: Text(
          msg,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
