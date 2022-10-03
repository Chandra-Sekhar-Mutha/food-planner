import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppTheme {
  ThemeData getTheme() {
  return ThemeData(
  // Define the default brightness and colors.
  brightness: Brightness.light,
  primaryColor: Colors.blueAccent,
  accentColor: Colors.blueGrey[300],
  backgroundColor: Colors.redAccent,
  splashColor: Colors.blueAccent,

  // Define the default font family.
  fontFamily: 'Georgia',

  // Define the default TextTheme. Use this to specify the default
  // text styling for headlines, titles, bodies of text, and more.
  textTheme: TextTheme(
  headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
  headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
  bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
  ),

  );
}
}
