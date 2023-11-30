import 'dart:ffi';

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
          return Column(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text (data.category??"",
              style: const TextStyle(
                color: Colors.brown,
                fontSize: 16
              ),
              ),
              Text(data.title??"",
              style: TextStyle(
                color: Colors.green,
                fontSize: 16
              ),
              ),
              Text(data.description??"",
              style: TextStyle(
                color: Colors.red,
                fontSize: 16
              ),
              ),
              Text(data.price.toString(),
              style: TextStyle(
                color: Colors.cyan,
                fontSize: 16
              ),
              ),
              
            ],
          );

        }),
      ),
    );
  }
}