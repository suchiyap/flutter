import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:temple_dev/constants.dart';
import 'package:temple_dev/screens/cart/cart.dart';

class CartNav extends StatefulWidget {
  const CartNav({super.key});

  @override
  State<CartNav> createState() => _CartNavState();
}

class _CartNavState extends State<CartNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 85,
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () => Navigator.pushNamed(context, Cart.routeName),
                child: Stack(children: [
                  SizedBox(
                    width: 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/Cart.svg',
                          colorFilter: const ColorFilter.mode(
                              kPrimaryColor, BlendMode.srcIn),
                          width: 30,
                        ),
                        const Text(
                          '购物车',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      top: 0,
                      right: 0,
                      height: 22,
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        constraints: const BoxConstraints(minWidth: 22),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            border:
                                Border.all(color: Colors.black, width: 2.0)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [Center(child: Text('3'))]),
                      ))
                ])),
            Row(
              children: [
                GestureDetector(
                    child: Container(
                        height: 44,
                        padding: const EdgeInsets.only(
                            top: 10, left: 20, bottom: 10, right: 20),
                        decoration: const BoxDecoration(
                            gradient: kPrimaryGradientColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                padding: const EdgeInsets.only(right: 5),
                                child: const Text(
                                  '加入购物车',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                            SvgPicture.asset('assets/icons/Cart.svg',
                                colorFilter: const ColorFilter.mode(
                                    Colors.white, BlendMode.srcIn)),
                          ],
                        ))),
                GestureDetector(
                    child: Container(
                        height: 44,
                        padding: const EdgeInsets.only(
                            top: 10, left: 20, bottom: 10, right: 20),
                        decoration: const BoxDecoration(
                            gradient: kSecondaryGradientColor,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              '立即购买',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )))
              ],
            )
          ],
        ));
  }
}
