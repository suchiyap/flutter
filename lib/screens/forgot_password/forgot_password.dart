import 'package:flutter/material.dart';
import 'package:temple_dev/constants.dart';

import 'forgot_password_top.dart';

class ForgotPassword extends StatefulWidget {
  static String routeName = "/forgot-password-page";
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController? _emailController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: const ForgotPasswordTop(),
        body: SingleChildScrollView(
          child: Container(
            color: kPrimaryColor,
            child: Column(
              children: [
                const SizedBox(height: 10),
                Container(
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
                                '电子邮件',
                                style: TextStyle(fontSize: 16, color: kSubTextColor),
                              ),
                            ),
                            TextFormField(
                              controller: _emailController,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.fromLTRB(8, 10, 0, 0),
                                hintText: '请输入您的电子邮件',
                                hintStyle: TextStyle(fontSize: 14, color: kSubTextColor),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(),
                                ),
                              ),
                            ),
                          ]
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 200,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            backgroundColor: kPrimaryColor,
                            textStyle: const TextStyle(fontSize: 16)
                          ),
                          onPressed: () {
                            const snackBar = SnackBar(
                              content: Text('重置密码成功，请检查您的电子邮件以重设密码'));
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                            Navigator.pop(context, true);
                          },
                          child: const Text('重置密码'),
                        ),
                      ),
                      const SizedBox(height: 25),
                    ],
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
