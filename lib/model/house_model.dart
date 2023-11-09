// creating a model class to read the json data
class House{
  final int id;
  final String image;
  final int price;
  final int bedrooms;
  final int bathrooms;
  final int size;
  final String description;
  final String zip;
  final String city;
  final int latitude;
  final int longitude;
  final String createdDate;

  const House({
    required this.id,
    required this.image,
    required this.price,
    required this.bedrooms,
    required this.bathrooms,
    required this.size,
    required this.description,
    required this.zip,
    required this.city,
    required this.latitude,
    required this.longitude,
    required this.createdDate,
  });
  factory House.fromJson(Map<String, dynamic> json) => House(
    id: json['id'] ,
    image: json ['image'],
    price:json['price'],
    bedrooms: json['bedrooms'],
    bathrooms: json['bathrooms'],
    size: json['size'],
    description: json['description'],
    zip:json['zip'],
    city:json['city'],
    latitude:json['latitude'],
    longitude:json['longitude'],
    createdDate: json['createdDate'],
  );

}
