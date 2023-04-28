import 'package:flutter/material.dart';
import 'package:temple_dev/constants.dart';

import 'login_top.dart';

class LogIn extends StatefulWidget {
  static String routeName = "/login-page";
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController? _emailController;
  TextEditingController? _pwController;
  late bool _passwordInvisible;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _pwController = TextEditingController();
    _passwordInvisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: const LogInTop(),
        body: SingleChildScrollView(
          child: Container(
            color: kPrimaryColor,
            child: Column(
              children: [
                const SizedBox(height: 20),
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
                            const SizedBox(height: 10),
                            const Align(
                              alignment: Alignment.centerLeft, 
                              child: Text(
                                '密码',
                                style: TextStyle(fontSize: 16, color: kSubTextColor),
                              ),
                            ),
                            TextFormField(
                              controller: _pwController,
                              obscureText: _passwordInvisible,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.fromLTRB(8, 10, 0, 0),
                                hintText: '请输入您的密码',
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
                      const SizedBox(height: 16),
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
                              content: Text('登入成功'));
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                            Navigator.pop(context, true);
                          },
                          child: const Text('登入'),
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
