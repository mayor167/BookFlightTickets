import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context){
    return MediaQuery.of(context).size;
  }
static getScreenHeight(){
  return Get.height;
}
static getScreenWidth(){
  return Get.width;
}
static getHeight(double inputHeight){
double x = getScreenHeight()/inputHeight;
return getScreenHeight()/x;
}
static getWidth(double inputWidith){
double x = getScreenWidth()/inputWidith;
return getScreenWidth()/x;
}
}