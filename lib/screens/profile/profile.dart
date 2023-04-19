import 'package:flutter/material.dart';
import 'package:temple_dev/constants.dart';

class Profile extends StatefulWidget {
  static String routeName = "/profile-page";
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  // bool _enableNotifications = true;
  String _selectedLanguage = 'English';

  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: kPrimaryColor,
              child: Column(
                children: [
                  const SizedBox(height: 35),
                  const Text(
                    '个人中心',
                    style: TextStyle(
                      fontSize: 18,
                      color: kRatingBarColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const CircleAvatar(
                    radius: 50,
                    // backgroundImage: NetworkImage('https://google.com'), // for dynamic from backend
                    backgroundImage: AssetImage('assets/images/profile/avatar.jpeg'),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/product/Product 1.png'),
                            fit: BoxFit.fill
                        )
                    )
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Wong Oang Phun',
                    style: TextStyle(
                      color: kButtonTextColor,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 56.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)
                      ),
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
                              Image.asset('assets/images/order/to_ship.jpeg', width: 20, height: 20),
                              const Text(
                                '待发货',
                                style: TextStyle(fontSize: 12.0),
                              ),
                            ],
                          )
                        ),
                        Tab(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/order/to_receive.jpeg', width: 20, height: 20),
                              const Text(
                                '待收货',
                                style: TextStyle(fontSize: 12.0),
                              ),
                            ],
                          )
                        ),
                        Tab(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/order/refund_return.jpeg', width: 20, height: 20),
                              const Text(
                                '退款退货',
                                style: TextStyle(fontSize: 12.0),
                              ),
                            ],
                          )
                        ),
                        Tab(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/order/all_order.jpeg', width: 20, height: 20),
                              const Text(
                                '全部订单',
                                style: TextStyle(fontSize: 12.0),
                              ),
                            ],
                          )
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ),
            Container(
              color: const Color(0xFFEFEFEF),
              child: Column(
                children: [
                  const SizedBox(height: 16.0),
                  Card(
                    child: Column(
                      children: [
                        const ListTile(
                          leading: Icon(Icons.person),
                          title: Text('个人资料', style: TextStyle(fontSize: 14)),
                          trailing: Icon(Icons.arrow_forward_ios, size: 18),
                        ),
                        const Divider(),
                        const ListTile(
                          leading: Icon(Icons.lock),
                          title: Text('收货地址', style: TextStyle(fontSize: 14)),
                          trailing: Icon(Icons.arrow_forward_ios, size: 18),
                        ),
                        const Divider(),
                        const ListTile(
                          leading: Icon(Icons.lock),
                          title: Text('更换密码', style: TextStyle(fontSize: 14)),
                          trailing: Icon(Icons.arrow_forward_ios, size: 18),
                        ),
                        const Divider(),
                        const ListTile(
                          leading: Icon(Icons.lock),
                          title: Text('设置', style: TextStyle(fontSize: 14)),
                          trailing: Icon(Icons.arrow_forward_ios, size: 18),
                        ),
                        const Divider(),
                        const ListTile(
                          leading: Icon(Icons.lock),
                          title: Text('退出', style: TextStyle(fontSize: 14)),
                          trailing: Icon(Icons.arrow_forward_ios, size: 18),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
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
                  Card(
                    child: Column(
                      children: [
                        const ListTile(
                          leading: Icon(Icons.notifications),
                          title: Text('更换语言', style: TextStyle(fontSize: 14)),
                          trailing: Icon(Icons.arrow_forward_ios, size: 18),
                        ),
                        const Divider(),
                        const ListTile(
                          leading: Icon(Icons.notifications),
                          title: Text('帮助与反应', style: TextStyle(fontSize: 14)),
                          trailing: Icon(Icons.arrow_forward_ios, size: 18),
                        ),
                        const Divider(),
                        const ListTile(
                          leading: Icon(Icons.notifications),
                          title: Text('关于我们', style: TextStyle(fontSize: 14)),
                          trailing: Icon(Icons.arrow_forward_ios, size: 18),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Card(
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.language),
                          title: const Text('Language', style: TextStyle(fontSize: 14)),
                          trailing: DropdownButton<String>(
                            value: _selectedLanguage,
                            onChanged: (String? value) {
                              setState(() {
                                _selectedLanguage = value!;
                              });
                            },
                            items: <String>['English', 'Chinese', 'Malay', 'Tamil']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
