import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    // var str=Get.arguments['str']??'';
    return Scaffold(
      appBar: AppBar(
        title: Text('about'),
      ),
      body: TextButton(onPressed: (){
        Get.toNamed('/contact',arguments: {'str':'ks'});
      }, child: Text('about')),
    );
  }
}
