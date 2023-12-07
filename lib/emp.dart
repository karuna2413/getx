import 'package:getx/controller/empController.dart';
import 'package:getx/product.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/controller.dart';

class Emp extends StatelessWidget {
  Emp({super.key});
  Empc cntrl=Get.put(Empc());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('products'),
        ),
        body:
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  width: 800,
                  height: 800,
                  child:
                  Obx(() =>
                  cntrl.isLoading.value?Center(child: CircularProgressIndicator()):
                  ListView.builder(
                      itemCount: cntrl.list['data'].length,
                      itemBuilder: (context,index){
                        return Container(
                            width: 300,
                            height: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(cntrl.list['data'][index]['id'].toString()),

                                Text(cntrl.list['data'][index]['employee_name'].toString()),

                                Row(
                                  children: [
                                    ElevatedButton(onPressed: (){
                                      cntrl.dlt(cntrl.list['data'][index]['id']);
                                      // cntrl.fetch();
                                    }, child: Text('delete')),
                                    ElevatedButton(onPressed: (){

                                    }, child: Text('edit')),
                                    TextButton(onPressed: (){
                                      Get.toNamed('/about');
                                    }, child: Text('go to about'))
                                  ],
                                )

                              ],
                            ));

                      }),
                  )

              ),


            ],
          ),
        )
    );
  }
}
