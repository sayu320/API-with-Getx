

class DataModel{

  //create variables

  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String?  image;
  Rating? rating;
  

  // create constructors

  DataModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  });

  //create fromjason

  factory DataModel.fromjson(Map<String,dynamic> json) {
    return DataModel(
    rating: Rating.fromjson(json["rating"]), 
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
    "image":image,
    "rating":rating?.tojson()
  };
 }


}

class Rating{
  double? rate;
  int? count;
 
Rating({
  this.rate,
  this.count
}) ;

factory Rating.fromjson(Map<String,dynamic> json) {
  return Rating(
 rate: json["rate"],
 count: json["count"]
  );
}

Map<String,dynamic> tojson() {
  return{
  "rate":rate,
  "count":count
  };

}
}