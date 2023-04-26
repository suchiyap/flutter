import 'package:flutter/material.dart';
import 'package:temple_dev/constants.dart';

class AddressForm extends StatefulWidget {
  static String routeName = '/address-form';
  const AddressForm({super.key});

  @override
  State<AddressForm> createState() => _AddressFormState();
}

class _AddressFormState extends State<AddressForm> {
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
            '添加新地址',
            style:
                TextStyle(color: kRatingBarColor, fontWeight: FontWeight.bold),
          )),
      body: const Text('123'),
    );
  }
}
