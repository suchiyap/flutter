import 'package:flutter/material.dart';
import 'package:temple_dev/screens/product_details/component/content.dart';
import 'package:temple_dev/screens/product_details/component/nav.dart';
import 'package:temple_dev/screens/product_details/component/top.dart';

class ProductDetails extends StatefulWidget {
  static String routeName = "/product-details";
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        // appBar: PreferredSize(
        //   //wrap with PreferredSize
        //   preferredSize: const Size.fromHeight(400), //height of appbar
        //   child: AppBar(
        //     flexibleSpace: Container(
        //       decoration: const BoxDecoration(
        //           image: DecorationImage(
        //               image: AssetImage('assets/images/product/Product 1.png'),
        //               fit: BoxFit.fill)),
        //     ),
        //   ),
        // ),
        body: CustomScrollView(slivers: <Widget>[
          ProductTop(),
          ProductContent(),
        ]),
        bottomNavigationBar: CartNav());
  }
}
