

class DataModel{

  //create variables

  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String?  image;
  

  // create constructors

  DataModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image
  });

  //create fromjason

  factory DataModel.fromjson(Map<String,dynamic> json) {
    return DataModel(
    id: json["id"],
    title: json["title"],
    price: json["price"],
    description: json["description"],
    category: json["category"],
    image: json["image"]
    );
  }

 // create tojason

 Map<String,dynamic> tojson(){
  return{
    "id":id,
    "title":title,
    "price":price,
    "description":description,
    "category":category,
    "image":image
  };
 }


}