import 'package:flutter/material.dart';

class btnForm extends StatelessWidget {
  String label;
  Function onPressed;
  Color color;
  Color textColor;
  bool showProgress;

  btnForm(
    this.label, {
    this.onPressed,
    this.color = Colors.blue,
    this.textColor = Colors.white,
    this.showProgress = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            side: BorderSide(
                color: color, width: 1.5, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(5.0),
          ),
          onPressed: onPressed,
          color: color,
          textColor: textColor,
          padding: EdgeInsets.fromLTRB(50.0, 15, 50.0, 15),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
