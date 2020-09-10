import 'package:flutter/material.dart';

Widget inputField(
    {String hint,
    bool secure,
    TextInputType textInputType,
    bool icon = false,
    Function validate,
    Function onSave,
    Widget prefix}) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 30,
    ),
    child: Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(
        validator: validate,
        onSaved: onSave,
        keyboardType: textInputType,
        obscureText: secure,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 15),
            fillColor: Colors.white,
            hintText: hint,
            hintStyle: TextStyle(color: Colors.black),
            filled: true,
            suffixIcon: icon ? prefix : Container(),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none)),
      ),
    ),
  );
}
