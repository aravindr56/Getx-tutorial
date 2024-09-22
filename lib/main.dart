import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_tutorial/Getx%20controller/main_page.dart';
import 'package:getx_tutorial/State%20management/reactive_state_management.dart';
import 'package:getx_tutorial/State%20management/simple_state_management.dart';
import 'package:getx_tutorial/uniqueId/screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Getx tutorial',
      home: UniqueId(),
    );
  }
}

