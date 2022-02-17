import 'package:flutter/material.dart';
import 'package:testapp/models/product.dart';

class Page2 extends StatelessWidget {
  List<Product> products;
  Page2({required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
    );
  }
}
