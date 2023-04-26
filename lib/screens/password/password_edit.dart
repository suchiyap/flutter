import 'package:flutter/material.dart';
import 'package:temple_dev/constants.dart';

import 'password_top.dart';

class PasswordEdit extends StatefulWidget {
  static String routeName = "/password-edit-page";
  const PasswordEdit({super.key});

  @override
  State<PasswordEdit> createState() => _PasswordEditState();
}

class _PasswordEditState extends State<PasswordEdit> {
  TextEditingController? _oldPwController;
  TextEditingController? _newPwController;
  TextEditingController? _retypeNewPwController;
  late bool _oldPasswordVisible;
  late bool _newPasswordVisible;
  late bool _retypeNewPasswordVisible;

  @override
  void initState() {
    super.initState();
    _oldPwController = TextEditingController();
    _newPwController = TextEditingController();
    _retypeNewPwController = TextEditingController();
    _oldPasswordVisible = true;
    _newPasswordVisible = true;
    _retypeNewPasswordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: const PasswordTop(),
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
                                        '旧密码',
                                        style: TextStyle(fontSize: 16, color: kSubTextColor),
                                      ),
                                    ),
                                    TextFormField(
                                      controller: _oldPwController,
                                      obscureText: _oldPasswordVisible,
                                      decoration: InputDecoration(
                                        contentPadding: const EdgeInsets.fromLTRB(8, 10, 0, 0),
                                        hintText: '请输入您的旧密码',
                                        hintStyle: const TextStyle(fontSize: 14, color: kSubTextColor),
                                        // border: const UnderlineInputBorder(),
                                        enabledBorder: const UnderlineInputBorder(      
                                          borderSide: BorderSide(),
                                        ),
                                        focusedBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(),
                                        ),
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                            // Based on passwordVisible state choose the icon
                                            _oldPasswordVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                            color: kTextColor,
                                          ),
                                          onPressed: () {
                                            // Update the state i.e. toogle the state of passwordVisible variable
                                            setState(() {
                                                _oldPasswordVisible = !_oldPasswordVisible;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    const Align(
                                      alignment: Alignment.centerLeft, 
                                      child: Text(
                                        '输入新密码',
                                        style: TextStyle(fontSize: 16, color: kSubTextColor),
                                      ),
                                    ),
                                    TextFormField(
                                      controller: _newPwController,
                                      obscureText: _newPasswordVisible,
                                      decoration: InputDecoration(
                                        contentPadding: const EdgeInsets.fromLTRB(8, 10, 0, 0),
                                        hintText: '请输入不少与6位数子或字母的密码',
                                        hintStyle: const TextStyle(fontSize: 14, color: kSubTextColor),
                                        // border: const UnderlineInputBorder(),
                                        enabledBorder: const UnderlineInputBorder(      
                                          borderSide: BorderSide(),
                                        ),
                                        focusedBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(),
                                        ),
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                            // Based on passwordVisible state choose the icon
                                            _newPasswordVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                            color: kTextColor,
                                          ),
                                          onPressed: () {
                                            // Update the state i.e. toogle the state of passwordVisible variable
                                            setState(() {
                                                _newPasswordVisible = !_newPasswordVisible;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    const Align(
                                      alignment: Alignment.centerLeft, 
                                      child: Text(
                                        '确认新密码',
                                        style: TextStyle(fontSize: 16, color: kSubTextColor),
                                      ),
                                    ),
                                    TextFormField(
                                      controller: _retypeNewPwController,
                                      obscureText: _retypeNewPasswordVisible,
                                      decoration: InputDecoration(
                                        contentPadding: const EdgeInsets.fromLTRB(8, 10, 0, 0),
                                        hintText: '请再次输入新密码',
                                        hintStyle: const TextStyle(fontSize: 14, color: kSubTextColor),
                                        // border: const UnderlineInputBorder(),
                                        enabledBorder: const UnderlineInputBorder(      
                                          borderSide: BorderSide(),
                                        ),
                                        focusedBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(),
                                        ),
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                            // Based on passwordVisible state choose the icon
                                            _retypeNewPasswordVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                            color: kTextColor,
                                          ),
                                          onPressed: () {
                                            // Update the state i.e. toogle the state of passwordVisible variable
                                            setState(() {
                                                _retypeNewPasswordVisible = !_retypeNewPasswordVisible;
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
                                      content: Text('密码修改成功'));
                                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                    Navigator.pop(context, true);
                                  },
                                  child: const Text('修改密码'),
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
