class Product {
  final int id;
  final String name;
  final String description;
  final double price;
  final double originalPrice;
  final double discountPercen;
  final String image;
  final double rating;
  final int reviewCount;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    double? originalPrice,
    required this.discountPercen,
    required this.image,
    this.rating = 4.8,
    this.reviewCount = 120,
  }) : originalPrice = originalPrice ??
            (discountPercen > 0
                ? price / (1 - (discountPercen / 100))
                : price);

  // Getter Name for exact requirement match
  String get Name => name;

  factory Product.fromJson(Map<String, dynamic> json) {
    final priceVal = (json['price'] as num).toDouble();
    final discountVal =
        ((json['discountPercen'] ?? json['discountPercent'] ?? 0) as num)
            .toDouble();
    final origPriceVal = json['originalPrice'] != null
        ? (json['originalPrice'] as num).toDouble()
        : null;

    return Product(
      id: json['id'] as int,
      name: (json['name'] ?? json['Name'] ?? '') as String,
      description: (json['description'] ?? '') as String,
      price: priceVal,
      originalPrice: origPriceVal,
      discountPercen: discountVal,
      image: (json['image'] ?? '') as String,
      rating: json['rating'] != null ? (json['rating'] as num).toDouble() : 4.8,
      reviewCount:
          json['reviewCount'] != null ? json['reviewCount'] as int : 120,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'Name': name,
      'description': description,
      'price': price,
      'originalPrice': originalPrice,
      'discountPercen': discountPercen,
      'image': image,
      'rating': rating,
      'reviewCount': reviewCount,
    };
  }
}