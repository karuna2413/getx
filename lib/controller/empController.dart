import 'dart:convert';

import 'package:get/state_manager.dart';
import 'package:http/http.dart'as http;

import '../model.dart';

class Empc extends GetxController{
  var list={}.obs;
  var isLoading=false.obs;
  @override
  void onInit() {
    fetch();
    // TODO: implement onInit
    super.onInit();
  }
  void fetch()async{
    isLoading(true);
    var url=Uri.parse('https://dummy.restapiexample.com/api/v1/employees');
    var res=await http.get(url);
    isLoading(false);
    if(res.statusCode==200){
      print(res);
      var resp=jsonDecode(res.body);
      print(resp);

      list.value=resp;
       print(list);
      // list=response;
    }
    else{
      print('err$res');
    }
  }
  void dlt(id)async{
    isLoading(true);
    var url=Uri.parse('https://dummy.restapiexample.com/api/v1/delete/$id');
    var res=await http.delete(url);
    isLoading(false);
    if(res.statusCode==200){

      print('dlt$res');
      fetch();
      //  print(response);
      // list=response;
    }
    else{
      print('err${res.body}');
    }
  }
}