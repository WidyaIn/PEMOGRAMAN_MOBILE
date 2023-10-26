import 'package:week8/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Gula',
        price: 14500,
        imageUrl: 'assets/sugar.jpg',
        sold: 47,
        rating: 5.0),
    Item(
        name: 'Garam',
        price: 6690,
        imageUrl: 'assets/salt.jpg',
        sold: 51,
        rating: 4.0),
    Item(
        name: 'Coffee',
        price: 67490,
        imageUrl: 'assets/coffee.jpg',
        sold: 23,
        rating: 4.1),
    Item(
        name: 'Kripik',
        price: 6490,
        imageUrl: 'assets/kripik.jpg',
        sold: 34,
        rating: 4.6),
    Item(
        name: 'Kecap',
        price: 12390,
        imageUrl: 'assets/lada.jpg',
        sold: 16,
        rating: 4.6),
    Item(
        name: 'Susu',
        price: 17970,
        imageUrl: 'assets/milk.jpg',
        sold: 26,
        rating: 5.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/item', arguments: item);
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Hero(
                      tag: 'productImage${item.name}',
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Image.asset(item.imageUrl, fit: BoxFit.cover),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            item.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(Icons.star, color: Colors.amber),
                            Text(
                              item.rating.toString(),
                              style: const TextStyle(
                                color: Colors.amber,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        'Rp. ${item.price}',
                        style: const TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Text(
                      'Terjual: ${item.sold}',
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Widya Indah Puspita Sari',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Text(
                '2141720034',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
