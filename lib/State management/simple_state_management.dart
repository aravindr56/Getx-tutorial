import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/State%20management/user.dart';
class SimpleStateManagement extends StatelessWidget {
   SimpleStateManagement({super.key});

User user=User();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Stae management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
                ()=> Text('Name is ${user.name.value}'),
            ),
            SizedBox(height: 10,),
            MaterialButton(
              child: Text('Upper'),
                color: Colors.blue,
                onPressed: (){
                  user.name.value=user.name.value.toUpperCase();
                })
          ],
        ),
      ),
    );
  }
}
