import 'package:flutter/material.dart';

void main() {
  runApp(uts());
}

class uts extends StatelessWidget {
  const uts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "UTS_06TPLM002_201011400190",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductListScreen(),
    );
  }
}

class Product {
  final String name;
  final String imageUrl;
  final String description;
  final String price;

  Product(this.name, this.imageUrl, this.description, this.price);
}

final List<Product> products = [
  Product(
    "Nike SB Zoom Blazer",
    "https://www.freepnglogos.com/uploads/shoes-png/shoes-wasatch-running-3.png",
    "Mid Premium",
    "Rp 500.000",
  ),
  Product(
    "Nike Air Zoom Pegasus",
    "https://pngfolio.com/images/all_img/copy/1635221496shoes-png-image.png",
    "Men's Rood Running Shoes",
    "Rp 800.000",
  ),
  Product(
    "Nike Zoomx Vaporfly",
    "https://www.freepnglogos.com/uploads/shoes-png/shoes-wasatch-running-3.png",
    "Men's Rood Racing Shoes",
    "Rp 900.000",
  ),
  Product(
    "Nike Air Force 1 S50",
    "https://pngfolio.com/images/all_img/copy/1635221496shoes-png-image.png",
    "Older Kids'Shoes",
    "Rp 700.000",
  ),
   Product(
    "Nike Waffle One",
    "https://www.freepnglogos.com/uploads/shoes-png/shoes-wasatch-running-3.png",
    "Men's Shoes",
    "Rp 700.000",
  ),
];

class ProductListScreen extends StatelessWidget {
  ProductListScreen({Key? key}) : super(key: key);

  final List<Color> colors = [
    Colors.purple[400]!,
    Colors.teal[200]!,
    Color.fromARGB(255, 255, 255, 221)!,
    Colors.grey!,
    Colors.yellow!,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fahmi Perdana Wicaksono"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
  padding: const EdgeInsets.all(16.0),
  child: Row(
    children: [
      Text(
        "Shoes",
        style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
      ),
      Spacer(),
      CircleAvatar(
        child: Icon(Icons.person, size: 40.0),
        radius: 25.0,
        backgroundColor: Colors.lightBlueAccent,
      ),
    ],
  ),
),

          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                final product = products[index];
                return Container(
                  margin: EdgeInsets.all(10),
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: colors[index % colors.length],
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.name,
                              style: const TextStyle(fontSize: 20.0),
                            ),
                            const SizedBox(height: 8.0),
                            Text(product.description),
                            const SizedBox(height: 8.0),
                            Text(
                              '${product.price}',
                              style: const TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Image(image: NetworkImage(product.imageUrl)),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}