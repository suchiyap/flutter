import 'package:flutter/material.dart';
import 'package:temple_dev/constants.dart';
import 'package:go_router/go_router.dart';
import 'package:temple_dev/screens/address/add_address.dart';

class MyAddress extends StatefulWidget {
  static String routeName = '/my-address';
  const MyAddress({super.key});

  @override
  State<MyAddress> createState() => _MyAddressState();
}

class _MyAddressState extends State<MyAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                  // LinearGradient
                  gradient: kPrimaryGradientColor),
            ),
            title: const Text(
              '我的地址',
              style: TextStyle(
                  color: kRatingBarColor, fontWeight: FontWeight.bold),
            )),
        body: Container(
            color: kBackgroundColor,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: kPrimaryBackgroundColor,
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/no_addr.png'),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: const Text('还没有设置收货地址哦～'),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    minimumSize: const Size(150, 50),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    backgroundColor: kPrimaryColor,
                                    textStyle: const TextStyle(fontSize: 16)),
                                onPressed: () =>
                                    {context.pushNamed(AddressForm.routeName)},
                                child: const Text('添加新地址'),
                              ),
                            ])),
                  ),
                ])));
  }
}
