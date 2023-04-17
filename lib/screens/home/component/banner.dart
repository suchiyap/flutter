import 'package:flutter/material.dart';
import 'package:temple_dev/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:temple_dev/size_config.dart';

final List<String> imgList = [
  'assets/images/banner/banner1.png',
  'assets/images/banner/banner2.png',
  'assets/images/banner/banner3.png',
  'assets/images/banner/banner4.png',
];

class HomeBanner extends StatefulWidget {
  const HomeBanner({super.key});

  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

final List<Widget> imageSliders = imgList
    .map((item) => ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: <Widget>[
            Image.asset(item),
          ],
        )))
    .toList();

class _HomeBannerState extends State<HomeBanner> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 220,
        width: SizeConfig.screenWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  '最新资讯',
                  style: titleStyle,
                  textAlign: TextAlign.left,
                )),
            Expanded(
                child: SizedBox(
              width: SizeConfig.screenWidth,
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 2.54,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.25,
                  enableInfiniteScroll: false,
                  initialPage: 1,
                  autoPlay: true,
                ),
                items: imageSliders,
              ),
            ))
          ],
        ));
  }
}
