import 'package:getx/product.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/controller.dart';

class ProductView extends StatelessWidget {
   ProductView({super.key});
Services cntrl=Get.put(Services());
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
                     itemCount: cntrl.list.length,
                     itemBuilder: (context,index){
                       return Container(
                           width: 300,
                           height: 150,
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text(cntrl.list[index].id.toString()),

                               Text(cntrl.list[index].title.toString()),

                               Row(
                                 children: [
                                   ElevatedButton(onPressed: (){
                                     cntrl.dlt(cntrl.list[index].id);
                                     // cntrl.fetch();
                                     // cntrl.list.refresh();
                                   }, child: Text('delete')),
                                   ElevatedButton(onPressed: (){

                                   }, child: Text('edit'))
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
