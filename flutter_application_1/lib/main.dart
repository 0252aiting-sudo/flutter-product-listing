import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Listing',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

// Home Page
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: const Color.fromARGB(255, 242, 186, 252),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.shopping_bag,
              size: 100,
              color: Color(0xFF6A1B9A),
            ),
            const SizedBox(height: 20),
            const Text(
              'Welcome to Product Listing',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductListPage(),
                  ),
                );
              },
              child: const Text('View Products'),
            ),
          ],
        ),
      ),
    );
  }
}

// Product Listing Page
class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Listing'),
        backgroundColor: const Color.fromARGB(255, 242, 186, 252),
      ),
      body: ListView(
        children: const <Widget>[
          ProductBox(
            name: 'iPhone',
            description: 'iPhone is the stylish phone ever',
            price: 1000,
            image: 'iphone.jpg',
            availability: 'In stock',
          ),
          ProductBox(
            name: 'Pixel',
            description: 'Pixel is the most featureful phone ever',
            price: 800,
            image: 'pixel.jpg',
            availability: 'In stock',
          ),
          ProductBox(
            name: 'Laptop',
            description: 'Laptop is the most productive development tool',
            price: 2000,
            image: 'laptop.jpg',
            availability: 'In stock',
          ),
          ProductBox(
            name: 'Tablet',
            description: 'Tablet is the most useful device ever for meeting',
            price: 1500,
            image: 'tablet.jpg',
            availability: 'In stock',
          ),
          ProductBox(
            name: 'Pen Drive',
            description: 'Pen Drive is a useful storage medium',
            price: 100,
            image: 'pen drive.jpg',
            availability: 'In stock',
          ),
          ProductBox(
            name: 'Floppy Drive',
            description: 'Floppy drive is a useful rescue storage medium',
            price: 20,
            image: 'floppy.jpg',
            availability: 'In stock',
          ),
        ],
      ),
    );
  }
}

// Product Box
class ProductBox extends StatelessWidget {
  const ProductBox({
    super.key,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.availability,
  });

  final String name;
  final String description;
  final int price;
  final String image;
  final String availability;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Card(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Image.asset(
                'assets/$image',
                width: 90,
                height: 90,
                fit: BoxFit.contain,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xFF6A1B9A),
                      ),
                    ),
                    Text(description),
                    Text(
                      'Price: $price',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFE91E63),
                      ),
                    ),
                    Text(
                      'Availability: $availability',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
