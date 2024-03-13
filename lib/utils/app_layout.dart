import 'package:flutter/material.dart';
// import 'package:get/get.dart';

class AppLayout{
  static getSize(BuildContext context){
    return MediaQuery.of(context).size;
  }

  static double getScreenHeight(BuildContext context) { //932.0
    return MediaQuery.of(context).size.height;
  }

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static getHeight(double pixels, BuildContext context){
    double x = getScreenHeight(context)/pixels; //932.0/200
    return getScreenHeight(context)/x;
  }

  static getWidth(double pixels, BuildContext context){
    double x = getScreenWidth(context)/pixels;
    return getScreenWidth(context)/x;
  }

}