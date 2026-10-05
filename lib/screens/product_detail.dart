import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductDetail extends StatelessWidget {
  final Product product;

  const ProductDetail({
    super.key,
    required this.product,
  });

  void _onBottomNavTapped(BuildContext context, int index) {
    if (index == 0) {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F5F7),
      appBar: AppBar(
        title: const Text(
          'Product Detail',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        backgroundColor: const Color(0xFF0066FF),
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product image
            Center(
              child: Container(
                height: 240,
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFF2F4F7),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: product.image.startsWith('assets/')
                      ? Image.asset(
                          product.image,
                          fit: BoxFit.contain,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(
                              Icons.image_not_supported,
                              size: 80,
                              color: Color(0xFF8E8E93),
                            );
                          },
                        )
                      : Image.network(
                          product.image,
                          fit: BoxFit.contain,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(
                              Icons.image_not_supported,
                              size: 80,
                              color: Color(0xFF8E8E93),
                            );
                          },
                        ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Product name
            Text(
              product.name,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1D1D1F),
              ),
            ),

            const SizedBox(height: 8),

            // Rating row (4 yellow stars + 1 grey star)
            Row(
              children: [
                ...List.generate(
                  4,
                  (index) => const Icon(
                    Icons.star,
                    color: Color(0xFFFFCC00),
                    size: 20,
                  ),
                ),
                const Icon(
                  Icons.star,
                  color: Color(0xFFD1D1D6),
                  size: 20,
                ),
                const SizedBox(width: 8),
                Text(
                  '(${product.rating}) • ${product.reviewCount} reviews',
                  style: const TextStyle(
                    color: Color(0xFF8E8E93),
                    fontSize: 14,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // Price & Discount badge row
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (product.discountPercen > 0) ...[
                  Text(
                    '\$${product.originalPrice.toStringAsFixed(0)}',
                    style: const TextStyle(
                      fontSize: 18,
                      color: Color(0xFF8E8E93),
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
                Text(
                  '\$${product.price.toStringAsFixed(0)}',
                  style: const TextStyle(
                    fontSize: 24,
                    color: Color(0xFFFF3B30),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (product.discountPercen > 0) ...[
                  const SizedBox(width: 12),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFF3B30),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      '-${product.discountPercen.toStringAsFixed(0)}%',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ],
            ),

            const SizedBox(height: 20),

            // Description
            Text(
              product.description,
              style: const TextStyle(
                fontSize: 15,
                color: Color(0xFF3A3A3C),
                height: 1.4,
              ),
            ),

            const SizedBox(height: 28),

            // Add to cart button
            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 22,
                ),
                label: const Text(
                  'Add to Cart',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0066FF),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        onTap: (index) => _onBottomNavTapped(context, index),
        selectedItemColor: const Color(0xFF0066FF),
        unselectedItemColor: const Color(0xFF8E8E93),
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal, fontSize: 12),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article_outlined),
            label: 'Product Detail',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
        ],
      ),
    );
  }
}