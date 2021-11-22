import 'package:flutter/material.dart';
import 'product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final Function() delete;

  ProductCard({required this.product, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            Text(product.productName,
                style: TextStyle(fontSize: 18.0, color: Colors.grey[800])),
            const SizedBox(height: 6.0),
            Text(product.productPrice,
                style: TextStyle(fontSize: 18.0, color: Colors.grey[900], fontWeight: FontWeight.bold))
          ]),
          TextButton(
              onPressed: delete,
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.redAccent)),
              child: const Icon(Icons.delete))
        ],
      ),
    );
  }
}
