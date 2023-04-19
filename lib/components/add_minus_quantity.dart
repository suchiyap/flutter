import 'package:flutter/material.dart';
import 'package:temple_dev/constants.dart';

class AddMinusQty extends StatefulWidget {
  const AddMinusQty({super.key, required this.count});

  final int count;
  @override
  State<AddMinusQty> createState() => _AddMinusQtyState();
}

class _AddMinusQtyState extends State<AddMinusQty> {
  late int _qty;

  @override
  void initState() {
    super.initState();
    _qty = widget.count;
  }

  void _onMinus() {
    if (_qty > 1) {
      setState(() {
        _qty = _qty - 1;
      });
    }
  }

  void _onAdd() {
    setState(() {
      _qty = _qty + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: _onMinus,
          child: Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
                border: Border.all(color: kDisabledColor),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10))),
            child: const Icon(
              Icons.remove,
              size: 18,
            ),
          ),
        ),
        Container(
          width: 50,
          height: 26,
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(border: Border.all(color: kDisabledColor)),
          child: Center(child: Text(_qty.toString())),
        ),
        GestureDetector(
          onTap: _onAdd,
          child: Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
                border: Border.all(color: kDisabledColor),
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: const Icon(
              Icons.add,
              size: 18,
            ),
          ),
        ),
      ],
    );
  }
}
