import '../models/product.dart';

class ProductDAO {
  final List<Product> _products = [
    Product(
      id: 1,
      name: 'iPhone 15',
      description:
          'Experience the latest technology with the new iPhone 15. Stunning design, powerful performance.',
      price: 999,
      originalPrice: 1099,
      discountPercen: 9,
      image: 'assets/images/iphone15.jpg',
    ),
    Product(
      id: 2,
      name: 'Samsung S24',
      description:
          'Samsung Galaxy S24 with powerful performance, beautiful display and modern design.',
      price: 899,
      originalPrice: 999,
      discountPercen: 10,
      image: 'assets/images/samsung_s24.jpg',
    ),
    Product(
      id: 3,
      name: 'MacBook Air',
      description:
          'MacBook Air with powerful performance, lightweight design and long battery life.',
      price: 1200,
      originalPrice: 1299,
      discountPercen: 7,
      image: 'assets/images/macbook_air.jpg',
    ),
  ];

  // Get all products
  List<Product> getAllProduct() {
    return _products;
  }

  // Find products by name
  List<Product> findProductByName(String name) {
    if (name.trim().isEmpty) {
      return _products;
    }

    return _products
        .where(
          (product) =>
              product.name.toLowerCase().contains(name.toLowerCase()),
        )
        .toList();
  }
}