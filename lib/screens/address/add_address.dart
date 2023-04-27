import 'dart:math';

import 'package:flutter/material.dart';
import 'package:temple_dev/constants.dart';

class AddressForm extends StatefulWidget {
  static String routeName = '/address-form';
  const AddressForm({super.key});

  @override
  State<AddressForm> createState() => _AddressFormState();
}

class _AddressFormState extends State<AddressForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _selectedMobilePrefix = '+60';
  final _mobilePrefixList = ['+60', '+65', '+886', '+957', '+881'];
  String _selectedState = 'Selangor';
  final _stateList = [
    'Selangor',
    'Negeri Sembilan',
    'Kuala Lumpur',
    'Johor',
    'Penang',
    'Melaka'
  ];
  TextEditingController? _mobileNoController;
  bool isChecked = false;

  @override
  void initState() {
    super.initState();
    _mobileNoController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
        MaterialState.selected
      };
      if (states.any(interactiveStates.contains)) {
        return kPrimaryColor;
      }
      return kTextColor;
    }

    return Scaffold(
        appBar: AppBar(
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                  // LinearGradient
                  gradient: kPrimaryGradientColor),
            ),
            title: const Text(
              '添加新地址',
              style: TextStyle(
                  color: kRatingBarColor, fontWeight: FontWeight.bold),
            )),
        body: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(20), right: Radius.circular(20)),
              color: kPrimaryBackgroundColor),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 15),
                    hintText: '黎玉兰',
                    labelText: '收货人',
                    labelStyle: TextStyle(fontSize: 20, color: kSubTextColor),
                    hintStyle: TextStyle(fontSize: 14, color: kSubTextColor),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InputDecorator(
                      decoration: const InputDecoration(
                        labelText: '联络号码',
                        labelStyle:
                            TextStyle(fontSize: 20, color: kSubTextColor),
                        contentPadding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                        // border: UnderlineInputBorder(),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                      child: Row(
                        children: [
                          DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: _selectedMobilePrefix,
                              items: _mobilePrefixList.map((String prefix) {
                                return DropdownMenuItem<String>(
                                  value: prefix,
                                  child: Text(prefix),
                                );
                              }).toList(),
                              onChanged: (String? prefix) {
                                setState(() {
                                  _selectedMobilePrefix = prefix ?? '';
                                });
                              },
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: TextFormField(
                              controller: _mobileNoController,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.fromLTRB(8, 5, 0, 0),
                                hintText: '123456789',
                                hintStyle: TextStyle(
                                    fontSize: 14, color: kSubTextColor),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(vertical: 16.0),
                //   child: ElevatedButton(
                //     onPressed: () {
                //       // Validate will return true if the form is valid, or false if
                //       // the form is invalid.
                //       if (_formKey.currentState!.validate()) {
                //         // Process data.
                //       }
                //     },
                //     child: const Text('Submit'),
                //   ),
                // ),
                TextFormField(
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(0, 20, 0, 15),
                    hintText: '如门牌号，路名，单元号码',
                    labelText: '详细地址',
                    labelStyle: TextStyle(fontSize: 20, color: kSubTextColor),
                    hintStyle: TextStyle(fontSize: 14, color: kSubTextColor),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(0, 20, 0, 15),
                    hintText: '471092',
                    labelText: '邮政编码',
                    labelStyle: TextStyle(fontSize: 20, color: kSubTextColor),
                    hintStyle: TextStyle(fontSize: 14, color: kSubTextColor),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(0, 20, 0, 15),
                    hintText: 'Petaling Jaya',
                    labelText: '城市',
                    labelStyle: TextStyle(fontSize: 20, color: kSubTextColor),
                    hintStyle: TextStyle(fontSize: 14, color: kSubTextColor),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                InputDecorator(
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                    // border: UnderlineInputBorder(),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                    labelText: '州属',
                    labelStyle: TextStyle(fontSize: 20, color: kSubTextColor),
                    hintText: '请选择',
                    hintStyle: TextStyle(fontSize: 14, color: kSubTextColor),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: _selectedState,
                      items: _stateList.map((value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        setState(() {
                          _selectedState = value ?? '';
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '标签为',
                    style: TextStyle(fontSize: 16, color: kSubTextColor),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        child: CheckboxListTile(
                      title: const Text("住家"),
                      value: isChecked,
                      activeColor: kPrimaryColor,
                      onChanged: (newValue) {
                        setState(() {
                          isChecked = newValue!;
                        });
                      },
                      controlAffinity: ListTileControlAffinity
                          .leading, //  <-- leading Checkbox
                    )),
                    Expanded(
                        child: CheckboxListTile(
                      title: const Text("公司"),
                      value: isChecked,
                      activeColor: kPrimaryColor,
                      onChanged: (newValue) {
                        setState(() {
                          isChecked = newValue!;
                        });
                      },
                      controlAffinity: ListTileControlAffinity
                          .leading, //  <-- leading Checkbox
                    ))
                  ],
                ),
                Center(
                  child: Container(
                    width: 200,
                    height: 50,
                    margin: const EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          // minimumSize:,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          backgroundColor: kPrimaryColor,
                          textStyle: const TextStyle(fontSize: 16)),
                      onPressed: () {
                        const snackBar = SnackBar(content: Text('地址添加成功'));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        Navigator.pop(context, true);
                      },
                      child: const Text('保存'),
                    ),
                  ),
                )

                // Checkbox(
                //   checkColor: Colors.white,
                //   fillColor: MaterialStateProperty.resolveWith(getColor),
                //   v
                //   value: isChecked,
                //   onChanged: (bool? value) {
                //     setState(() {
                //       isChecked = value!;
                //     });
                //   },
                // )
              ],
            ),
          ),
        ));
  }
}
