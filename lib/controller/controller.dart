import 'dart:convert';

import 'package:get/state_manager.dart';
import 'package:http/http.dart'as http;

import '../model.dart';

class Services extends GetxController{
  var list=<Post>[].obs;
  var isLoading=false.obs;
  @override
  void onInit() {
    fetch();
    // TODO: implement onInit
    super.onInit();
  }
  void fetch()async{
    isLoading(true);
    var url=Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var res=await http.get(url);
    isLoading(false);
    if(res.statusCode==200){
     list.value=postFromJson(res.body);
     print(list.value);
     print(list.length);
     //  print(response);
     // list=response;
    }
    else{
      print('err');
    }
  }
  void dlt(id)async{
    list.value=list.value.where((e) => e.id==1).toList();
    print(list.value);
    // isLoading(true);
    // var url=Uri.parse('https://jsonplaceholder.typicode.com/posts/$id');
    // print(url);
    // print(id);
    // var ress=await http.delete(url);
    // isLoading(false);
    // if(ress.statusCode==200){
    //
    //   print('dlt${ress}');
    //   fetch();
    //   list.refresh();
    //   //  print(response);
    //   // list=response;
    // }
    // else{
    //   print('err');
    // }
  }
}