import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Controller extends GetxController{
   var count=0;
  void increment(){
     count++;
     update(['textcount']);
  }
}