import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:temple_dev/constants.dart';

final List<String> categoryList = [
  '祈福法会',
  '光明供灯',
  '最新商品',
  '香品蜡烛',
  '视频',
];

final List<Widget> categoryItem = categoryList
    .map((item) => Column(children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              color: kRatingBarColor,
              borderRadius: BorderRadius.circular(50),
            ),
            child: SvgPicture.asset('assets/icons/candlebright.svg'),
          ),
          Text(
            item,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: kTextColor,
            ),
          )
        ]))
    .toList();

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: categoryItem,
        ));
  }
}
