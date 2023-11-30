
import 'dart:convert';

import 'package:flutter_getx/model/datamodel.dart';
import 'package:http/http.dart' as http;
class DataServices{

  //get url
  var url="https://fakestoreapi.com/products/1";

  // create get function

Future<DataModel?> getService() async{
  var response= await http.get(Uri.parse(url));

// check condition
if(response.statusCode == 200){

  //json decode

var data = await json.decode(response.body);
return DataModel.fromjson(data);
}else{
  return null;
}

}
}