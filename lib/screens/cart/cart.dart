import 'package:flutter/material.dart';
import 'package:temple_dev/constants.dart';

class Cart extends StatefulWidget {
  static String routeName = "/cart";
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: kBackgroundColor,
          centerTitle: false,
          title: const Text(
            '购物车',
            style: titleStyle,
          )),
      body: Container(
        child: const Text('123'),
      ),
    );
  }
}
