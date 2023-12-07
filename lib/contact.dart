import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    var str=Get.arguments['str']??'';

    return Scaffold(
      appBar: AppBar(
        title: Text('contact'),
      ),
      body: Column(
        children: [
          TextButton(onPressed: (){
            Get.toNamed('/about');
          }, child: Text('contact$str')),
          TextButton(onPressed: (){
            Get.offNamed('/about');//pushreplacement
            // Get.offNamed('/about');

            //pushremoveuntill

            }, child: Text('back home'))
        ],
      ),
    );
  }
}
