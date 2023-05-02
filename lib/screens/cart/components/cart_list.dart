import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:temple_dev/components/add_minus_quantity.dart';
import 'package:temple_dev/constants.dart';
import 'package:temple_dev/size_config.dart';

class CartListing extends StatefulWidget {
  const CartListing({super.key, required this.checked});

  final bool checked;
  @override
  State<CartListing> createState() => _CartListingState();
}

class _CartListingState extends State<CartListing> {
  late bool _isSelected;

  @override
  void initState() {
    super.initState();
    _isSelected = widget.checked;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Checkbox(
                activeColor: kTextColor,
                checkColor: Colors.white,
                value: _isSelected,
                onChanged: (value) {
                  setState(() => _isSelected = value!);
                }),
            Expanded(
                child: Container(
              margin: const EdgeInsets.only(left: 0),
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    width: (kIsWeb
                            ? kWebWidth
                            : MediaQuery.of(context).size.width) *
                        0.25,
                    padding: const EdgeInsets.only(right: 5),
                    child: Image.asset(
                      'assets/images/product/Product 1.png',
                      // width: 100,
                      // height: 100,
                    ),
                  ),
                  Expanded(
                      child: SizedBox(
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                '清明节配套 拜祖先配套 清明配套 清明祭品 扫墓配套 清明神料 祭祖....',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  AddMinusQty(count: 1),
                                  Text(
                                    'RM 148.00',
                                    style: TextStyle(
                                        color: kErrorColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          )))
                ],
              ),
            ))
          ],
        ));
  }
}
