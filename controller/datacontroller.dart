import 'package:flutter_getx/model/datamodel.dart';
import 'package:flutter_getx/service/dataservice.dart';
import 'package:get/get.dart';

class DataController extends GetxController{
  // create instance variable
  var datamodel = DataModel().obs;
  getData() async{
    // create instance of getservice
   try{
     var data = await DataServices().getService();
    //  check condition
    if(data!= null){
      datamodel.value = data;
    }
  }catch(e){
    Get.snackbar("title", "$e");
  }
   }
  //  step call function
   @override
  void onInit() {
   getData();
    super.onInit();
  }
}
