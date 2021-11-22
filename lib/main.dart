import 'package:flutter/material.dart';
import 'package:lists_with_cards/product.dart';
import 'package:lists_with_cards/product_card.dart';

void main() => runApp(const MaterialApp(home: CardList()));

class CardList extends StatefulWidget {
  const CardList({Key? key}) : super(key: key);

  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  List<Product> products = [
    Product(productName: "Product 1", productPrice: "₺50"),
    Product(productName: "Product 2", productPrice: "₺125"),
    Product(productName: "Product 3", productPrice: "₺100")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Products"),
          centerTitle: true,
          backgroundColor: Colors.cyan),
      body: Column(
        children: products
            .map((product) => ProductCard(
                product: product,
                delete: () {
                  setState(() {
                    products.remove(product);
                  });
                }))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              products.add(Product(productName: "Product 4",productPrice: "₺40"));
            });
          }),
    );
  }
}
