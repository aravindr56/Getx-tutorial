import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/State%20management/user.dart';
class ReactiveStateManagement extends StatelessWidget {
  ReactiveStateManagement({super.key});

  // 1.the first is using rxtype ,
  // initial value is recomended but not mandatory
  // final name=RxString('');
  // final isLog=RxBool(false);
  // final count=RxInt(0);
  // final balance=RxDouble(0.0);
  // final items=RxList<String>([]);
  // final myMap=RxMap<String, int>({});


  //2 method
  // final name=Rx<String>('');
  // final isLog=Rx<bool>(false);
  // final count=Rx<int>(0);
  // final balance=Rx<double>(0.0);
  // final items=Rx<List<String>>([]);
  // final myMap=Rx<Map<String,int>>({});
  // final user=Rx<User>(User(name:'aravi',age:30));

  // 3. The third, more practical, easier and preferred approach
// just add .obs as a property of your value
  final name = ''.obs;
  final isLogged = false.obs;
  final count = 0.obs;
  final balance = 0.0.obs;
  final number = 0.obs;
  final items = <String>[].obs;
  final myMap = <String, int>{}.obs;

// Custom classes - it can be any class, literally
//   final user = User(name: 'Ruize', age: 30).obs;

// Attribute inside User class observer
// final user = User();


  void increment() => count.value++;


  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text('Reactive State Management'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                      () => Text('count is $count')
              ),
              SizedBox(height: 10,),
              MaterialButton(onPressed: increment,
                color: Colors.blue,
                child: Text('Increment'),
              ),

            ],
          ),
        ),
    );
  }
}

