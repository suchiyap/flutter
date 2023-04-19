import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:temple_dev/constants.dart';

class ProductContent extends StatefulWidget {
  const ProductContent({super.key});

  @override
  State<ProductContent> createState() => _ProductContentState();
}

class _ProductContentState extends State<ProductContent> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
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
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Row(
                              children: [
                                Container(
                                    padding: const EdgeInsets.only(right: 3),
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
                                      decoration: TextDecoration.lineThrough),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset('assets/icons/Rating.svg'),
                                    SvgPicture.asset('assets/icons/Rating.svg'),
                                    SvgPicture.asset('assets/icons/Rating.svg'),
                                    SvgPicture.asset('assets/icons/Rating.svg'),
                                    SvgPicture.asset('assets/icons/Rating.svg')
                                  ],
                                ),
                                SizedBox(
                                  height: 38,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding:
                                            const EdgeInsets.only(right: 5),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SvgPicture.asset(
                                                'assets/icons/Love.svg'),
                                            const Text('收藏',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ))
                                          ],
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SvgPicture.asset(
                                              'assets/icons/Share.svg'),
                                          const Text('分享',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ))
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
                    Container(
                        height: 800,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Column(children: [
                          Image.asset('assets/images/product/Detail 1.png'),
                          const Flexible(
                            child: Text(
                              """清明节配套 拜祖先配套 清明配套 清明祭品 扫墓配套 
注意！注意！注意！每一份配套都包括封条和路票 
配套包括： 
小衣箱 *1个 
祖先衣 *2件 
鞋子 *1双 
往生钱 *1包 
开路钱 *1条 
五百万 *1包 
满面祖先金 *3片 
1000亿冥币 *1包 
往生功德金 *1包 
1000万冥币 *3包 
小金砖 *2包 
小银砖 *2包 
金盾 *5包 
银盾 *5包""",
                            ),
                          )
                        ])),
                  ]))
            ],
          )

          // Body Element
        ],
      ),
    );
  }
}
