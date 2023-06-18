import 'package:flutter/material.dart';
import 'main.dart';

class CartPage extends StatelessWidget {
  const CartPage(this.bought);
  final int bought;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cart"),
        ),
        body: Center(child: Text("Total Product : $bought")),
      ),
    );
  }
}
