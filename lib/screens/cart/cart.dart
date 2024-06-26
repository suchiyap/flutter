import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:temple_dev/constants.dart';
import 'package:temple_dev/screens/cart/components/cart_list.dart';
import 'package:temple_dev/screens/checkout/checkout.dart';
import 'package:temple_dev/size_config.dart';

class Cart extends StatefulWidget {
  static String routeName = "/cart";
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  late bool _checkall = false;
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
      body: CustomScrollView(slivers: <Widget>[
        SliverList(
            delegate: SliverChildListDelegate([
          SizedBox(
              width: double.infinity,
              child: Column(
                children: const [
                  CartListing(checked: false),
                ],
              )),
        ]))
      ]),
      bottomNavigationBar: Container(
        width: double.infinity,
        decoration: const BoxDecoration(color: kPrimaryColor),
        padding: const EdgeInsets.only(left: 0, top: 10, right: 10, bottom: 10),
        child: ListTile(
          dense: false,
          iconColor: Colors.white,
          selectedColor: Colors.black,
          contentPadding: const EdgeInsets.all(0),
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(children: [
              Radio(
                value: _checkall,
                groupValue: 'all',
                onChanged: (value) => {
                  setState(() {
                    _checkall = !_checkall;
                  })
                },
              ),
              const Text(
                'All (3)',
                style: TextStyle(color: Colors.white),
              ),
            ]),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'Subtotal: ',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text('RM 298.00',
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                    ],
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: kPrimaryBackgroundColor,
                        minimumSize: Size(
                            (kIsWeb
                                    ? kWebWidth
                                    : MediaQuery.of(context).size.width) *
                                0.2,
                            50)),
                    onPressed: () => {context.pushNamed(Checkout.routeName)},
                    child: const Text(
                      '付款',
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
