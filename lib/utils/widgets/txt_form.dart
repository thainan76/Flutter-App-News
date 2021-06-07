import 'package:flutter/material.dart';

class txtForm extends StatelessWidget {
  String label;
  String hint;
  bool password;
  TextEditingController controller;
  FormFieldValidator<String> validator;
  TextInputType keyboardType;
  TextInputAction textInputAction;
  FocusNode focusNode;
  FocusNode nextFocus;
  Icon icon;
  Color corFundo;
  Color corTexto;

  txtForm(
    this.label,
    //this.hint, 
    {
    this.password = false,
    this.controller,
    this.validator,
    this.keyboardType,
    this.textInputAction,
    this.focusNode,
    this.nextFocus,
    this.icon,
    this.corFundo = Colors.white,
    this.corTexto = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      obscureText: password,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      focusNode: focusNode,
      onFieldSubmitted: (String text) {
        if (nextFocus != null) {
          FocusScope.of(context).requestFocus(nextFocus);
        }
      },
      style: TextStyle(color: corTexto),
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 15),
        filled: true,
        fillColor: corFundo,
        labelText: label,
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        //hintText: hint,
        hintStyle: TextStyle(
            color:corFundo,
            fontSize: 14,
            fontFamily: 'Mosk',
            fontWeight: FontWeight.w500),
        border: OutlineInputBorder(
          borderSide: BorderSide(
              color: corTexto, width: 0, style: BorderStyle.solid),
        ),
      ),
    );
  }
}
