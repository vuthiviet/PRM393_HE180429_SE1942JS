class product{
   String id;
   String name;
   int quatity;
   double price;
   String? image;
   String? description;

   product({
     required this.id,
     required this.name,
     required this.quatity,
     required this.price,
     this.image,
     this.description
   });

factory product.fromJson(Map<String, dynamic> json) {
return product(
id: json['id'] as String,
name: json['name'] as String,
quatity: json['quatity'] as int,
price: (json['price'] as num).toDouble(),
image: json['image'] as String?,
description: json['description'] as String?,
);
}

Map<String, dynamic> toJson() {
     return {
       'id': id,
       'name': name,
       'quatity': quatity,
       'price': price,
       'image': image,
       'description': description,
     };
   }

   product copyWith({
     String? id,
     String? name,
     int? quatity,
     double? price,
     String? image,
     String? description,
   }) {
     return product(
       id: id ?? this.id,
       name: name ?? this.name,
       quatity: quatity ?? this.quatity,
       price: price ?? this.price,
       image: image ?? this.image,
       description: description ?? this.description,
     );
   }

}
