

import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/datacontroller.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';


class HomePage extends StatelessWidget {
   HomePage({super.key});

//create instance for controller

final controller = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API GETX'),
      ),
      body: Container(
        alignment: Alignment.center,
        //create obx
        child: Obx(() {
          //store data value
          var data = controller.datamodel.value;
          //display data
         return controller.loading.isTrue? 
        Center(child: CircularProgressIndicator(),):
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
                width: 200,
                child: Image.network(data.image!,
                fit: BoxFit.cover,
                ),
              ),
              Text("Title:${data.title}",),
              Text("Price:${data.price}",),
              Text("Category:${data.category}",),
              Text("ID:${data.id}",),
              Text("Count:${data.rating?.count}"),
              Text("Rate:${data.rating?.rate}",),
            ],
          ),
        );  
        }
        ),
      ),
    );
  }
}