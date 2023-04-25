import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:temple_dev/constants.dart';

class ProductList {
  String name;
  String image;
  String price;
  int qty;

  ProductList(
      {required this.name,
      required this.image,
      required this.price,
      required this.qty});
}

List<ProductList> products = [
  ProductList(
      name: "清明配套 传统祖先拜料",
      image: 'assets/images/product/Product 1.png',
      price: ' RM 148.00',
      qty: 1),
  ProductList(
      name: "清明超度法会",
      image: 'assets/images/product/Product 3.png',
      price: ' RM 8.00',
      qty: 1),
  ProductList(
      name: "观音菩萨家用供奉观音佛像",
      image: 'assets/images/product/Product 5.png',
      price: ' RM 2901.00',
      qty: 1),
];

class Checkout extends StatefulWidget {
  static String routeName = "/checkout";
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: kBackgroundColor,
          centerTitle: false,
          title: const Text(
            '确认订单',
            style: titleStyle,
          )),
      backgroundColor: kBackgroundColor,
      body: CustomScrollView(slivers: <Widget>[
        SliverList(
            delegate: SliverChildListDelegate([
          Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(10),
              height: 400,
              width: double.infinity,
              child: Column(children: [
                Expanded(
                    child: ListView.separated(
                  // padding: const EdgeInsets.all(8),
                  itemCount: products.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.25,
                          child: Image.asset(products[index].image),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10),
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: MediaQuery.of(context).size.width * 0.25,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                products[index].name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 50,
                                    height: 26,
                                    padding: const EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: kDisabledColor)),
                                    child: Center(
                                        child: Text(
                                            products[index].qty.toString())),
                                  ),
                                  Text(
                                    products[index].price,
                                    style: const TextStyle(
                                        color: kErrorColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                )),
              ])),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: kBackgroundColor),
                  padding: const EdgeInsets.all(10),
                  child: SvgPicture.asset('assets/icons/Location.svg'),
                ),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text('Bla Bla Bla'),
                        Text(' | '),
                        Text('6019 - 123456789')
                      ],
                    ),
                    const Text(
                        '58M Jln 6/158B Kuchai Intrepreneur Park 58200 Wilayah Persekutuan 58200 Malaysia 58200 Malaysia',
                        style: TextStyle(color: kDisabledColor, fontSize: 12))
                  ],
                )),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: const Icon(Icons.arrow_forward),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('选择支付方式'),
                  Row(
                    children: const [
                      Text(
                        'Lorem ipsum dolor sit amet',
                        style: TextStyle(fontSize: 12),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                      )
                    ],
                  )
                ]),
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: const Text(
                      '支付明细',
                      style: titleStyle,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('产品总数'),
                      Text('RM 3,349.00'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('运费'),
                      Text('RM 0.00'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('折扣'),
                      Text('- RM 0.00'),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          '总付款',
                          style: titleStyle,
                        ),
                        Text(
                          'RM 3,349.00',
                          style: titleStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ])),
      ]),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 80,
        decoration: const BoxDecoration(color: kPrimaryColor),
        padding: const EdgeInsets.only(left: 0, top: 10, right: 10, bottom: 10),
        child: ListTile(
          dense: false,
          iconColor: Colors.white,
          selectedColor: Colors.black,
          contentPadding: const EdgeInsets.all(0),
          title: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        '总付款',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text('RM 3,349.00',
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                    ],
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: kPrimaryBackgroundColor,
                        minimumSize:
                            Size(MediaQuery.of(context).size.width * 0.2, 50)),
                    onPressed: () =>
                        {Navigator.pushNamed(context, Checkout.routeName)},
                    child: const Text(
                      '现在下单',
                      style: TextStyle(color: kPrimaryColor),
                    ))
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
