import 'package:flutter/material.dart';
import 'package:investo_app/data/datasource/resources/app_color.dart';

class AppStyles {
  static TextStyle bold({double? fontSize, Color? color}) {
    return TextStyle(
      fontFamily: "Post No Bills Colombo",
      fontWeight: FontWeight.w300,
      fontSize: fontSize ?? 16.0,
      color: color,
    );
  }

  static TextStyle extraBold({double? fontSize, Color? color}) {
    return TextStyle(
      fontFamily: "Post No Bills Colombo",
      fontWeight: FontWeight.w800,
      fontSize: fontSize ?? 44.0,
      color: color ?? AppColor.greenColor,
    );
  }

  static TextStyle light({double? fontSize, Color? color}) {
    return TextStyle(
      fontFamily: "Post No Bills Colombo",
      fontWeight: FontWeight.w500,
      fontSize: fontSize ?? 16.0,
      color: color,
    );
  }

  static TextStyle medium({double? fontSize, Color? color}) {
    return TextStyle(
      fontFamily: "Post No Bills Colombo",
      fontWeight: FontWeight.w800,
      fontSize: fontSize ?? 16.0,
      color: color,
    );
  }

  static TextStyle regular({double? fontSize, Color? color}) {
    return TextStyle(
      fontFamily: "Post No Bills Colombo",
      fontWeight: FontWeight.w700,
      fontSize: fontSize ?? 16.0,
      color: color,
    );
  }

  static TextStyle semiBold({double? fontSize, Color? color}) {
    return TextStyle(
      fontFamily: "Post No Bills Colombo",
      fontWeight: FontWeight.w800,
      fontSize: fontSize ?? 16.0,
      color: color,
    );
  }
}
