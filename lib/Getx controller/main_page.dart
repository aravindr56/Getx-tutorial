import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/Getx%20controller/mycontroller.dart';
class GetxController extends StatelessWidget {
   GetxController({super.key});
  Mycontroller mycontroller=Get.put(Mycontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Controller'),
      ),
      body: Center(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
                ()=> Text('Name is ${mycontroller.std.name} , ${mycontroller.count}')
            ),
            SizedBox(height: 10,),
            MaterialButton(
              child: Text('Upper'),
                color: Colors.yellow,
                onPressed: mycontroller.increment),
            //controller life cycle
            GetBuilder<Mycontroller>(
                builder: (controller){
                  return Text('The value is ${controller.count}');
                })
          ],
        ),
      ),
    );
  }
}
