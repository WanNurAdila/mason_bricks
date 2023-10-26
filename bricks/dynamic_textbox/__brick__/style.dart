import 'package:flutter/material.dart';

class Style {
  InputBorder basicStyle = const OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xffBFBFBF), width: 1.0),
  );

  InputBorder focusStyle = const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
      borderSide: BorderSide(color: Colors.blue));
}
