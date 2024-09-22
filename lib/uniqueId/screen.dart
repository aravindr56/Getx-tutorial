import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/Getx%20controller/mycontroller.dart';
import 'package:getx_tutorial/uniqueId/controller.dart';
class UniqueId extends StatelessWidget {
   UniqueId({super.key});
Controller controller=Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unique Id'),
      ),
      body: Center(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         GetBuilder<Controller>(
           id: 'textcount',
             builder: (controller){
                return Text('value is ${controller.count}');
             }),
            GetBuilder<Controller>(
                builder: (controller){
                  return Text('value is ${controller.count}');
                }),
            SizedBox(height: 10,),
            MaterialButton(
                child: Text('Unique Id'),
                color: Colors.yellow,
                onPressed: controller.increment),

          ],
        ),
      ),
    );
  }
}
