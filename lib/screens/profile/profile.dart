import 'package:flutter/material.dart';
import 'package:temple_dev/constants.dart';
import 'package:badges/badges.dart' as badge;
import 'package:go_router/go_router.dart';
import 'package:temple_dev/screens/address/my_address.dart';
import 'package:temple_dev/screens/profile_edit/profile_edit.dart';
import 'package:temple_dev/screens/password/password_edit.dart';
import 'package:temple_dev/screens/language/language_edit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatefulWidget {
  static String routeName = "/profile-page";
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  // bool _enableNotifications = true;
  // String _selectedLanguage = 'English';
  bool loggedIn = false;
  var sessionManager = SessionManager();
  bool isLoggedIn = false;

  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    checkLogin();
  }

  // void checkLogin() {
  //   checkIsLogin().then((isLogin) {
  //     if (isLogin) {
  //       setState(() {
  //         loggedIn = isLogin;
  //       });
  //       sessionManager.set("isLoggedIn", true);
  //     }
  //   });
  // }

  void checkLogin() async {
    bool isLogin = await checkIsLogin();
    if (isLogin) {
      setState(() {
        loggedIn = isLogin;
      });
      sessionManager.set("isLoggedIn", true);
    }
  }

  checkIsLogin() async {
    await sessionManager.set("isLoggedIn", true); // only for testing..set after login successful
    return await sessionManager.get("isLoggedIn");

    // SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    // if (sharedPreferences.containsKey('isLogin')) {
    //   return sharedPreferences.getBool("isLogin");
    // }
    // return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      const SizedBox(height: 10),
                      const Text(
                        '个人中心',
                        style: TextStyle(
                          fontSize: 18,
                          color: kRatingBarColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // const CircleAvatar(
                      //   radius: 50,
                      //   // backgroundImage: NetworkImage('https://google.com'), // for dynamic from backend
                      //   backgroundImage: AssetImage('assets/images/profile/avatar.jpeg'),
                      // ),
                      Column(
                        children: (loggedIn)
                        ? [
                          const SizedBox(height: 10),
                          Container(
                            height: 70.0,
                            width: 70.0,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                  // image: NetworkImage('https://google.com'), // for dynamic from backend
                                  image: AssetImage(
                                      'assets/images/profile/avatar.jpeg'),
                                  fit: BoxFit.cover),
                              border: Border.all(
                                color: kPrimaryBackgroundColor,
                                width: 8,
                              ),
                              borderRadius: BorderRadius.circular(12),
                              // shape: BoxShape.circle,
                              color: kPrimaryBackgroundColor,
                            )),
                            const SizedBox(height: 5),
                            const Text(
                              'Wong Oang Phun',
                              style: TextStyle(
                                color: kButtonTextColor,
                              ),
                            ),
                        ]
                        : [
                          const SizedBox()
                        ]
                      ),
                      Column(
                        children: (loggedIn) 
                        ? [
                          const SizedBox(height: 20),
                          Container(
                            height: 70.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: TabBar(
                              controller: _tabController,
                              indicatorColor: kButtonTextColor,
                              labelColor: kTextColor,
                              unselectedLabelColor: kTextColor,
                              tabs: [
                                Tab(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      badge.Badge(
                                        badgeContent: const Text('20',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10)),
                                        badgeStyle: const badge.BadgeStyle(
                                          badgeColor: kRatingBarColor,
                                        ),
                                        showBadge: true, // false
                                        position:
                                            badge.BadgePosition.topEnd(end: -15),
                                        child: Image.asset(
                                            'assets/images/order/to_ship.jpeg',
                                            width: 25,
                                            height: 25),
                                      ),
                                      const SizedBox(height: 2),
                                      const Text(
                                        '待发货',
                                        style: TextStyle(fontSize: 13.0),
                                      ),
                                    ],
                                  )
                                ),
                                Tab(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    badge.Badge(
                                      badgeContent: const Text('10',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10)),
                                      badgeStyle: const badge.BadgeStyle(
                                        badgeColor: kRatingBarColor,
                                      ),
                                      showBadge: true, // false
                                      position:
                                          badge.BadgePosition.topEnd(end: -15),
                                      child: Image.asset(
                                          'assets/images/order/to_receive.jpeg',
                                          width: 25,
                                          height: 25),
                                    ),
                                    const SizedBox(height: 2),
                                    const Text(
                                      '待收货',
                                      style: TextStyle(fontSize: 13.0),
                                    ),
                                  ],
                                )),
                                Tab(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    badge.Badge(
                                      badgeContent: const Text('15',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10)),
                                      badgeStyle: const badge.BadgeStyle(
                                        badgeColor: kRatingBarColor,
                                      ),
                                      showBadge: false, // false
                                      position:
                                          badge.BadgePosition.topEnd(end: -15),
                                      child: Image.asset(
                                          'assets/images/order/refund_return.jpeg',
                                          width: 25,
                                          height: 25),
                                    ),
                                    const SizedBox(height: 2),
                                    const Text(
                                      '退款退货',
                                      style: TextStyle(fontSize: 13.0),
                                    ),
                                  ],
                                )),
                                Tab(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    badge.Badge(
                                      // badgeContent: const Text('15', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10)),
                                      badgeStyle: const badge.BadgeStyle(
                                        badgeColor: kRatingBarColor,
                                      ),
                                      showBadge: true, // false
                                      position:
                                          badge.BadgePosition.topEnd(end: -15),
                                      child: Image.asset(
                                          'assets/images/order/all_order.jpeg',
                                          width: 25,
                                          height: 25),
                                    ),
                                    const SizedBox(height: 2),
                                    const Text(
                                      '全部订单',
                                      style: TextStyle(fontSize: 13.0),
                                    ),
                                  ],
                                )),
                              ],
                            ),
                          ),
                        ] : [
                          const SizedBox(height: 15)
                        ],
                      ),
                    ],
                  )
                ),
                Container(
                  color: const Color(0xFFEFEFEF),
                  child: Column(
                    children: (loggedIn) 
                          ? [
                      const SizedBox(height: 16.0),
                      Card(
                        child: Column(
                          children: [
                            ListTile(
                              leading: SvgPicture.asset(
                                  'assets/icons/Useredit.svg'),
                              title: const Text('个人资料',
                                  style: TextStyle(fontSize: 14)),
                              trailing: const Icon(Icons.arrow_forward_ios,
                                  size: 18),
                              onTap: () => {
                                context.pushNamed(ProfileEdit.routeName)
                              },
                            ),
                            const Divider(),
                            ListTile(
                              leading: SvgPicture.asset(
                                  'assets/icons/Location_Outline.svg'),
                              title: const Text('收货地址',
                                  style: TextStyle(fontSize: 14)),
                              trailing: const Icon(Icons.arrow_forward_ios,
                                  size: 18),
                              onTap: () =>
                                  {context.pushNamed(MyAddress.routeName)},
                            ),
                            const Divider(),
                            ListTile(
                              leading: SvgPicture.asset(
                                  'assets/icons/ChangePw.svg'),
                              title: const Text('更换密码',
                                  style: TextStyle(fontSize: 14)),
                              trailing: const Icon(Icons.arrow_forward_ios,
                                  size: 18),
                              onTap: () => {
                                context.pushNamed(PasswordEdit.routeName)
                              },
                            ),
                            const Divider(),
                            ListTile(
                              leading: SvgPicture.asset(
                                  'assets/icons/Setting.svg'),
                              title: const Text('设置',
                                  style: TextStyle(fontSize: 14)),
                              trailing: const Icon(Icons.arrow_forward_ios,
                                  size: 18),
                              onTap: () {
                                //
                              },
                            ),
                            const Divider(),
                            ListTile(
                              leading:
                                  SvgPicture.asset('assets/icons/Logout.svg'),
                              title: const Text('退出',
                                  style: TextStyle(fontSize: 14)),
                              trailing: const Icon(Icons.arrow_forward_ios,
                                  size: 18),
                              onTap: () {
                                sessionManager.set("isLoggedIn", false);
                                setState(() {
                                  loggedIn = false;
                                });
                              },
                            ),
                          ]
                        ),
                      ),
                      // Card(
                      //   child: Column(
                      //     children: [
                      //       ListTile(
                      //         leading: const Icon(Icons.notifications),
                      //         title: const Text('Notifications', style: TextStyle(fontSize: 14)),
                      //         trailing: Switch(
                      //           value: _enableNotifications,
                      //           onChanged: (bool value) {
                      //             setState(() {
                      //               _enableNotifications = value;
                      //             });
                      //           },
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      const SizedBox(height: 10.0),
                    ] : [
                      const SizedBox(),
                    ],
                  ),
                ),
                Container(
                  color: const Color(0xFFEFEFEF),
                  child: Card(
                    child: Column(
                      children: [
                        (!loggedIn) 
                        ? Column(
                          children: [
                            ListTile(
                              leading: SvgPicture.asset(
                                  'assets/icons/Useredit.svg'),
                              title: const Text('登入',
                                  style: TextStyle(fontSize: 14)),
                              trailing: const Icon(Icons.arrow_forward_ios,
                                  size: 18),
                              onTap: () => {
                                context.pushNamed(ProfileEdit.routeName)
                              },
                            ), const Divider()
                          ]
                        ) 
                        : const SizedBox(),
                        ListTile(
                          leading: SvgPicture.asset(
                              'assets/icons/Language.svg'),
                          title: const Text('更换语言',
                              style: TextStyle(fontSize: 14)),
                          trailing: const Icon(Icons.arrow_forward_ios,
                              size: 18),
                          onTap: () => {
                            context.pushNamed(LanguageEdit.routeName)
                          },
                        ),
                        const Divider(),
                        ListTile(
                          leading: SvgPicture.asset(
                              'assets/icons/Musicplay.svg'),
                          title: const Text('帮助与反应',
                              style: TextStyle(fontSize: 14)),
                          trailing: const Icon(Icons.arrow_forward_ios,
                              size: 18),
                        ),
                        const Divider(),
                        ListTile(
                          leading: SvgPicture.asset(
                              'assets/icons/Infocircle.svg'),
                          title: const Text('关于我们',
                              style: TextStyle(fontSize: 14)),
                          trailing: const Icon(Icons.arrow_forward_ios,
                              size: 18),
                        ),
                      ],
                    ),
                  ),
                      // const SizedBox(height: 16.0),
                      // Card(
                      //   child: Column(
                      //     children: [
                      //       ListTile(
                      //         leading: const Icon(Icons.language),
                      //         title: const Text('Language',
                      //             style: TextStyle(fontSize: 14)),
                      //         trailing: DropdownButton<String>(
                      //           value: _selectedLanguage,
                      //           onChanged: (String? value) {
                      //             setState(() {
                      //               _selectedLanguage = value!;
                      //             });
                      //           },
                      //           items: <String>[
                      //             'English',
                      //             'Chinese',
                      //             'Malay',
                      //             'Tamil'
                      //           ].map<DropdownMenuItem<String>>(
                      //               (String value) {
                      //             return DropdownMenuItem<String>(
                      //               value: value,
                      //               child: Text(value),
                      //             );
                      //           }).toList(),
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
