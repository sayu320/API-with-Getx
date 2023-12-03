import 'package:flutter_getx/model/datamodel.dart';
import 'package:flutter_getx/service/dataservice.dart';
import 'package:get/get.dart';

class DataController extends GetxController{
  var loading = true.obs;
  // create instance variable
  var datamodel = DataModel().obs;
  getData() async{
    // create instance of getservice
   try{
    loading.value = true;
     var data = await DataServices().getService();
    //  check condition
    if(data!= null){
      datamodel.value = data;
      loading.value = false;
    }
  }catch(e){
    Get.snackbar("title", "$e");
    loading.value = false;
  }
   }
  //  step call function
   @override
  void onInit() {
   getData();
    super.onInit();
  }
}
