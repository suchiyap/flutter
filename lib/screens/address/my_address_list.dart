import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:temple_dev/constants.dart';
import 'package:go_router/go_router.dart';
import 'package:temple_dev/screens/address/add_address.dart';

class AddressList extends StatefulWidget {
  static String routeName = '/address-list';
  const AddressList({super.key});

  @override
  State<AddressList> createState() => _AddressListState();
}

class _AddressListState extends State<AddressList> {
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
            padding: const EdgeInsets.all(10),
            color: kBackgroundColor,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: kPrimaryBackgroundColor,
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [Text('铁面人'), Text('+60123456789')],
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 20),
                            child: const Text(
                                'No. 26, Jalan 6/91 Taman Shamelin Perkasa,46100 Kuala Lumpur, Wilayah Persekutuan, Malaysia.'),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: kPrimaryColor),
                                borderRadius: BorderRadius.circular(10)),
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 30),
                            child: const Text(
                              '默认地址',
                              style: TextStyle(color: kPrimaryColor),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                  child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child:
                                      SvgPicture.asset('assets/icons/Edit.svg'),
                                ),
                                SvgPicture.asset('assets/icons/Trash.svg')
                              ]))
                            ],
                          )
                        ]),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        backgroundColor: kPrimaryColor,
                        textStyle: const TextStyle(fontSize: 16)),
                    onPressed: () => {context.pushNamed(AddressForm.routeName)},
                    child: const Text('添加新地址'),
                  ),
                ])));
  }
}
