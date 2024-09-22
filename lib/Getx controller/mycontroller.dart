import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/Getx%20controller/std.dart';


import '../State management/user.dart';
class Mycontroller extends GetxController{
//obs is reactive stae manager
// var count=0.obs;
// simple stae manager
  var count=0;

  //controller life cycle
void increment()async{
  await Future<int>.delayed(Duration(seconds: 2));
  count++;
  update(); //will update count variable on ui which use it
}

var std=Std();
  void convertUpper(){
    std.name.value=std.name.value.toUpperCase();
  }

  void clean(){
    print('clean the task');
  }

  @override
  void onInit(){
    print('init called');
     super.onInit();
  }

  @override
  void onClose(){
    print('init close');
     super.onClose();
  }
}

