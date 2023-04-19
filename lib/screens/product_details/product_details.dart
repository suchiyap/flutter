import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:temple_dev/constants.dart';
import 'package:share_plus/share_plus.dart';

class ProductDetails extends StatefulWidget {
  static String routeName = "/product-details";
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

// <img src="/assets/images/product/Detail 1.png">
const htmlData = r"""
  
  <p>清明节配套 拜祖先配套 清明配套 清明祭品 扫墓配套 </p>
<p>注意！注意！注意！每一份配套都包括封条和路票 </p>
<p>配套包括： </p>
<p>小衣箱 *1个 </p>
<p>祖先衣 *2件 </p>
<p>鞋子 *1双 </p>
<p>往生钱 *1包 </p>
<p>开路钱 *1条 </p>
<p>五百万 *1包 </p>
<p>满面祖先金 *3片 </p>
<p>1000亿冥币 *1包 </p>
<p>往生功德金 *1包 </p>
<p>1000万冥币 *3包 </p>
<p>小金砖 *2包 </p>
<p>小银砖 *2包 </p>
<p>金盾 *5包 </p>
<p>银盾 *5包
  </p>
""";

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //   //wrap with PreferredSize
      //   preferredSize: const Size.fromHeight(400), //height of appbar
      //   child: AppBar(
      //     flexibleSpace: Container(
      //       decoration: const BoxDecoration(
      //           image: DecorationImage(
      //               image: AssetImage('assets/images/product/Product 1.png'),
      //               fit: BoxFit.fill)),
      //     ),
      //   ),
      // ),
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          expandedHeight: 400,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/product/Product 1.png'),
                    fit: BoxFit.fill)),
          ),
          // title of appbar
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Column(
                children: [
                  Container(
                      padding: const EdgeInsets.all(8),
                      color: const Color(0xFFEFE9E9),
                      child: Column(children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '清明节配套 拜祖先配套 清明配套 清明祭品 扫墓配套 清明神料 祭祖配套 祭品 男配套 女配套 经济实惠 快捷方便 传统祖先拜料',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Row(
                                  children: [
                                    Container(
                                        padding:
                                            const EdgeInsets.only(right: 3),
                                        child: const Text(
                                          ' RM 148.00',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: kErrorColor),
                                        )),
                                    const Text(
                                      'RM 150.00',
                                      style: TextStyle(
                                          color: kDisabledColor,
                                          decoration:
                                              TextDecoration.lineThrough),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                            'assets/icons/Rating.svg'),
                                        SvgPicture.asset(
                                            'assets/icons/Rating.svg'),
                                        SvgPicture.asset(
                                            'assets/icons/Rating.svg'),
                                        SvgPicture.asset(
                                            'assets/icons/Rating.svg'),
                                        SvgPicture.asset(
                                            'assets/icons/Rating.svg')
                                      ],
                                    ),
                                    SizedBox(
                                      height: 38,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            padding:
                                                const EdgeInsets.only(right: 5),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                SvgPicture.asset(
                                                    'assets/icons/Love.svg'),
                                                const Text('收藏',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ))
                                              ],
                                            ),
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              TextButton(
                                                style: TextButton.styleFrom(
                                                  padding: EdgeInsets.zero,
                                                  minimumSize: const Size(20,20),
                                                  tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                                                onPressed: () {
                                                  Share.share("https://google.com");
                                                },
                                                child: SvgPicture.asset(
                                                      'assets/icons/Share.svg'), 
                                              ),
                                              const Text('分享',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                )
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ]),
                        ),
                        // Image.asset('assets/images/product/Product 1.png'),
//                         Container(
//                             height: 1100,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(10),
//                               color: Colors.white,
//                             ),
//                             padding: const EdgeInsets.all(10),
//                             child: Column(children: [
//                               Image.asset('assets/images/product/Detail 1.png'),
//                               const Flexible(
//                                   child: HtmlWidget(
//                                 """<p>清明节配套 拜祖先配套 清明配套 清明祭品 扫墓配套 </p>
// <p>注意！注意！注意！每一份配套都包括封条和路票 </p>
// <p>配套包括： </p>
// <p>小衣箱 *1个 </p>
// <p>祖先衣 *2件 </p>
// <p>鞋子 *1双 </p>
// <p>往生钱 *1包 </p>
// <p>开路钱 *1条 </p>
// <p>五百万 *1包 </p>
// <p>满面祖先金 *3片 </p>
// <p>1000亿冥币 *1包 </p>
// <p>往生功德金 *1包 </p>
// <p>1000万冥币 *3包 </p>
// <p>小金砖 *2包 </p>
// <p>小银砖 *2包 </p>
// <p>金盾 *5包 </p>
// <p>银盾 *5包
//   </p>""",
//                               ))
//                             ])),
                      ]))
                ],
              )

              // Body Element
            ],
          ),
        ),
      ]),
      // bottomNavigationBar: BottomNavigationBar(
      //     backgroundColor: Colors.white,
      //     fixedColor: kTextColor,
      //     items: <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(
      //         icon: SvgPicture.asset(
      //           "assets/icons/Cart.svg",
      //           colorFilter:
      //               const ColorFilter.mode(kPrimaryColor, BlendMode.srcIn),
      //         ),
      //         activeIcon: SvgPicture.asset(
      //           "assets/icons/Cart.svg",
      //           colorFilter:
      //               const ColorFilter.mode(kPrimaryColor, BlendMode.srcIn),
      //         ),
      //         label: '购物车',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: SvgPicture.asset(
      //           "assets/icons/Home.svg",
      //           colorFilter:
      //               const ColorFilter.mode(kPrimaryColor, BlendMode.srcIn),
      //         ),
      //         activeIcon: SvgPicture.asset(
      //           "assets/icons/Home.svg",
      //           colorFilter:
      //               const ColorFilter.mode(kPrimaryColor, BlendMode.srcIn),
      //         ),
      //         label: '',
      //       )
      //     ]),
    );
  }
}
