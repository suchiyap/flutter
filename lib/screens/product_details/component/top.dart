import 'package:flutter/material.dart';

class ProductTop extends StatefulWidget {
  const ProductTop({super.key});

  @override
  State<ProductTop> createState() => _ProductTopState();
}

class _ProductTopState extends State<ProductTop> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: 400,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/product/Product 1.png'),
                fit: BoxFit.cover)),
      ),
      // title of appbar
    );
  }
}
