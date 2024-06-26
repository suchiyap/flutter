import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:temple_dev/screens/product_details/product_details.dart';
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

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> productListing = products
        .map((prd) => Stack(children: [
              GestureDetector(
                  onTap: () => {context.pushNamed(ProductDetails.routeName)},
                  child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                          color: Color(0xFFEFEFEF),
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(prd.image),
                          Container(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              prd.name,
                            ),
                          ),
                          Text(
                            prd.price,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ))),
              Positioned(
                  bottom: 10,
                  left: 10,
                  child: SizedBox(
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/Rating.svg'),
                        SvgPicture.asset('assets/icons/Rating.svg'),
                        SvgPicture.asset('assets/icons/Rating.svg'),
                        SvgPicture.asset('assets/icons/Rating.svg'),
                        SvgPicture.asset('assets/icons/Rating.svg')
                      ],
                    ),
                  )),
              Positioned(
                  bottom: 10,
                  right: 10,
                  child: SizedBox(
                      child: SvgPicture.asset('assets/icons/Love.svg')))
            ]))
        .toList();

    return SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: (SizeConfig.screenWidth ?? 500 - 10) / 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 0.7,
      ),
      delegate: SliverChildListDelegate(productListing),
    );
  }
}
