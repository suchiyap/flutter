import 'package:flutter/material.dart';
import 'package:temple_dev/size_config.dart';

class ProductList {
  String name;
  String image;
  String price;

  ProductList({required this.name, required this.image, required this.price});
}

List<ProductList> products = [
  ProductList(
      name: "清明配套 传统祖先拜料",
      image: 'assets/images/product/Product 1.png',
      price: ' RM 148.00'),
  ProductList(
      name: "清明配套 传统祖先拜料",
      image: 'assets/images/product/Product 2.png',
      price: ' RM 118.00'),
  ProductList(
      name: "清明超度法会",
      image: 'assets/images/product/Product 3.png',
      price: ' RM 8.00'),
  ProductList(
      name: "招财引贵祈福 - 6名",
      image: 'assets/images/product/Product 4.png',
      price: ' RM 300.00'),
  ProductList(
      name: "观音菩萨家用供奉观音佛像",
      image: 'assets/images/product/Product 5.png',
      price: ' RM 2901.00'),
  ProductList(
      name: "老山檀香 幼香 少烟少灰",
      image: 'assets/images/product/Product 6.png',
      price: ' RM 8.90'),
];

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

final List<Widget> productListing = products
    .map((prd) => Container(
        height: 400,
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Color(0xFFEFEFEF),
            borderRadius: BorderRadius.all(Radius.circular(5.0))),
        child: Column(
          children: [
            Image.asset(prd.image),
            Text(prd.name),
            Text(prd.price),
          ],
        )))
    .toList();

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: SizeConfig.screenWidth ?? 500 / 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 0.6,
      ),
      delegate: SliverChildListDelegate(productListing),
    );
  }
}
