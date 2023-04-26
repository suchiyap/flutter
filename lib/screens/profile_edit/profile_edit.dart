import 'package:flutter/material.dart';
import 'package:temple_dev/constants.dart';
import 'package:intl/intl.dart';

import 'profile_top.dart';
import 'profile_pic.dart';

class ProfileEdit extends StatefulWidget {
  static String routeName = "/profile-edit-page";
  const ProfileEdit({super.key});

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  // bool _enableNotifications = true;
  String _selectedGender = '男性';
  String _selectedZodiac = '猪';
  String _selectedMobilePrefix = '+60';
  final _genderList = ['男性', '女性', '其他'];
  final _zodiacList = ['猪', '老虎', '龙', '狗', '兔子'];
  final _mobilePrefixList = ['+60', '+65', '+886', '+957', '+881'];

  TextEditingController? _nameController;
  TextEditingController? _emailController;
  TextEditingController? _mobileNoController;
  TextEditingController? _birthDateController;
  DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _mobileNoController = TextEditingController();
    _birthDateController = TextEditingController();
    _selectedDate = DateTime.now();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _selectedDate as DateTime,
        firstDate: DateTime(1900),
        lastDate: DateTime.now()) as DateTime;

    if (picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _birthDateController?.text = DateFormat('yyyy-MM-dd').format(_selectedDate as DateTime);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: const ProfileTop(),
        body: SingleChildScrollView(
          child: Container(
            color: kPrimaryColor,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: kPrimaryColor,
                    child: Column(
                      children: [
                        // const SizedBox(height: 10),
                        // const Text(
                        //   '修改个人资料',
                        //   style: TextStyle(
                        //     fontSize: 18,
                        //     color: kRatingBarColor,
                        //     fontWeight: FontWeight.bold,
                        //   ),
                        // ),
                        // const SizedBox(height: 10),
                        // const CircleAvatar(
                        //   radius: 50,
                        //   // backgroundImage: NetworkImage('https://google.com'), // for dynamic from backend
                        //   backgroundImage: AssetImage('assets/images/profile/avatar.jpeg'),
                        // ),
                        const ProfilePic(),
                        const SizedBox(height: 20),
                        Container(
                          // height: 70.0,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(height: 20),
                              Container(
                                padding: const EdgeInsets.only(left: 16, right: 16),
                                child: Column(
                                  children: [
                                    const Align(
                                      alignment: Alignment.centerLeft, 
                                      child: Text(
                                        '姓名',
                                        style: TextStyle(fontSize: 16, color: kSubTextColor),
                                      ),
                                    ),
                                    TextFormField(
                                      controller: _nameController,
                                      decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.fromLTRB(8, 10, 0, 0),
                                        hintText: '输入您的姓名',
                                        hintStyle: TextStyle(fontSize: 14, color: kSubTextColor),
                                        // border: const UnderlineInputBorder(),
                                        enabledBorder: UnderlineInputBorder(      
                                          borderSide: BorderSide(),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    const Align(
                                      alignment: Alignment.centerLeft, 
                                      child: Text(
                                        '电子邮件',
                                        style: TextStyle(fontSize: 16, color: kSubTextColor),
                                      ),
                                    ),
                                    TextFormField(
                                      controller: _emailController,
                                      decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.fromLTRB(8, 10, 0, 0),
                                        hintText: '输入您的电子邮件',
                                        hintStyle: TextStyle(fontSize: 14, color: kSubTextColor),
                                        // border: const UnderlineInputBorder(),
                                        enabledBorder: UnderlineInputBorder(      
                                          borderSide: BorderSide(),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    // const Align(
                                    //   alignment: Alignment.centerLeft, 
                                    //   child: Text(
                                    //     '手机号码',
                                    //     style: TextStyle(fontSize: 16, color: kSubTextColor),
                                    //   ),
                                    // ),
                                    // TextFormField(
                                    //   controller: _mobileNoController,
                                    //   decoration: const InputDecoration(
                                    //     contentPadding: EdgeInsets.fromLTRB(8, 10, 0, 0),
                                    //     hintText: '输入您的手机号码',
                                    //     hintStyle: TextStyle(fontSize: 14, color: kSubTextColor),
                                    //     // border: const UnderlineInputBorder(),
                                    //     enabledBorder: UnderlineInputBorder(      
                                    //       borderSide: BorderSide(),
                                    //     ),
                                    //     focusedBorder: UnderlineInputBorder(
                                    //       borderSide: BorderSide(),
                                    //     ),
                                    //   ),
                                    // ),
                                    // const SizedBox(height: 10),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          '手机号码',
                                          style: TextStyle(fontSize: 16, color: kSubTextColor),
                                        ),
                                        const SizedBox(height: 8),
                                        InputDecorator(
                                          decoration: const InputDecoration(
                                            contentPadding: EdgeInsets.fromLTRB(8, 8, 0, 0),
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
                                                    hintText: '输入您的手机号码',
                                                    hintStyle: TextStyle(fontSize: 14, color: kSubTextColor),
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
                                    const SizedBox(height: 10),
                                    const Align(
                                      alignment: Alignment.centerLeft, 
                                      child: Text(
                                        '性别',
                                        style: TextStyle(fontSize: 16, color: kSubTextColor),
                                      ),
                                    ),
                                    InputDecorator(
                                      decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.fromLTRB(8, 10, 0, 0),
                                        // border: UnderlineInputBorder(),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(),
                                        ),
                                      ),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton<String>(
                                          value: _selectedGender,
                                          // items: <String>['男性', '女性', '其他']
                                          //   .map<DropdownMenuItem<String>>((String value) {
                                          //   return DropdownMenuItem<String>(
                                          //     value: value,
                                          //     child: Text(value),
                                          //   );
                                          // }).toList(),
                                          items: _genderList.map((value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                          onChanged: (String? value) {
                                            setState(() {
                                              _selectedGender = value ?? '';
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    const Align(
                                      alignment: Alignment.centerLeft, 
                                      child: Text(
                                        '生日日期',
                                        style: TextStyle(fontSize: 16, color: kSubTextColor),
                                      ),
                                    ),
                                    InputDecorator(
                                      decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.fromLTRB(8, 10, 0, 0),
                                        // border: UnderlineInputBorder(),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(),
                                        ),
                                      ),
                                      child: GestureDetector(
                                        onTap: () {
                                          _selectDate(context);
                                        },
                                        child: AbsorbPointer(
                                          child: TextFormField(
                                            controller: _birthDateController,
                                            decoration: const InputDecoration(
                                              contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                              enabledBorder: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              hintText: '请选生日日期',
                                              suffixIcon: Icon(Icons.calendar_today),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    const Align(
                                      alignment: Alignment.centerLeft, 
                                      child: Text(
                                        '生肖',
                                        style: TextStyle(fontSize: 16, color: kSubTextColor),
                                      ),
                                    ),
                                    InputDecorator(
                                      decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.fromLTRB(8, 10, 0, 0),
                                        // border: UnderlineInputBorder(),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(),
                                        ),
                                      ),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton<String>(
                                          value: _selectedZodiac,
                                          // items: <String>['猪', '老虎', '龙', '狗', '兔子']
                                          //   .map<DropdownMenuItem<String>>((String value) {
                                          //   return DropdownMenuItem<String>(
                                          //     value: value,
                                          //     child: Text(value),
                                          //   );
                                          // }).toList(),
                                          items: _zodiacList.map((value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                          onChanged: (String? value) {
                                            setState(() {
                                              _selectedZodiac = value ?? '';
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ]
                                ),
                              ),
                              const SizedBox(height: 16),
                              SizedBox(
                                width: 200,
                                height: 50,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    // minimumSize:,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    backgroundColor: kPrimaryColor,
                                    textStyle: const TextStyle(fontSize: 16)
                                  ),
                                  onPressed: () {
                                    const snackBar = SnackBar(
                                      content: Text('update successful'));
                                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                    Navigator.pop(context, true);
                                  },
                                  child: const Text('保存资料'),
                                ),
                              ),
                              const SizedBox(height: 25),
                            ],
                          )
                        ),
                      ],
                    )
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
