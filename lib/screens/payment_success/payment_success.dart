import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:temple_dev/constants.dart';
import 'dart:ui' as ui;
import 'package:temple_dev/screens/main/main.dart';
import 'package:temple_dev/size_config.dart';

class PaymentSuccess extends StatefulWidget {
  static String routeName = "/payment-success";
  const PaymentSuccess({super.key, required this.title});

  final String title;
  @override
  State<PaymentSuccess> createState() => _PaymentSuccessState();
}

class _PaymentSuccessState extends State<PaymentSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //     automaticallyImplyLeading: false,
        //     title: Row(
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: const [
        //         Icon(
        //           Icons.verified_outlined,
        //           color: kRatingBarColor,
        //         ),
        //         Text('交易成功'),
        //       ],
        //     )),
        body: CustomScrollView(slivers: <Widget>[
      SliverAppBar(
          automaticallyImplyLeading: false,
          pinned: true,
          expandedHeight: 170,
          flexibleSpace: CustomPaint(
            size: Size(
                double.infinity,
                (double.infinity * 0.5651162790697675)
                    .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: RPSCustomPainter(),
          ),
          // title of appbar
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(
                        Icons.verified_outlined,
                        color: kRatingBarColor,
                        size: 34,
                      )),
                  Text(
                    widget.title,
                    style: const TextStyle(
                        fontSize: 26,
                        color: kRatingBarColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    '实付',
                    style: TextStyle(fontSize: 20, color: kRatingBarColor),
                  ),
                  Text(
                    'RM3,349.00',
                    style: TextStyle(fontSize: 20, color: kRatingBarColor),
                  )
                ],
              )
            ],
          )),
      SliverList(
        delegate: SliverChildListDelegate(
          [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/success.png',
                    width: (kIsWeb
                            ? kWebWidth
                            : MediaQuery.of(context).size.width) /
                        2,
                  ),
                  const Text(
                    '支付成功啦！！！',
                    style: TextStyle(
                        fontSize: 26,
                        color: kRatingBarColor,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: kPrimaryBackgroundColor,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                    ),
                    child: const Text('查看订单',
                        style: TextStyle(color: kPrimaryColor, fontSize: 18)),
                  ),
                  ElevatedButton(
                      onPressed: () =>
                          {context.pushReplacementNamed(MainScreen.routeName)},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: kPrimaryColor,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                      ),
                      child: const Text(
                        '返回首页',
                        style: TextStyle(
                            color: kPrimaryBackgroundColor, fontSize: 18),
                      ))
                ],
              ),
            )

            // Body Element
          ],
        ),
      ),
    ]));
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.8398140, size.height * 0.9883457);
    path_0.cubicTo(
        size.width * 0.9749140,
        size.height * 1.041362,
        size.width * 1.036653,
        size.height * 0.8943128,
        size.width * 1.050635,
        size.height * 0.8141605);
    path_0.lineTo(size.width * 1.201816, size.height * -0.3921305);
    path_0.lineTo(size.width * -0.04463977, size.height * -0.8812798);
    path_0.lineTo(size.width * -0.1957284, size.height * 0.3242819);
    path_0.cubicTo(
        size.width * -0.1973547,
        size.height * 0.3183679,
        size.width * -0.1989044,
        size.height * 0.3125996,
        size.width * -0.2003758,
        size.height * 0.3069909);
    path_0.cubicTo(
        size.width * -0.2240477,
        size.height * 0.2050436,
        size.width * -0.2144067,
        size.height * 0.5226872,
        size.width * -0.2154405,
        size.height * 0.4815679);
    path_0.lineTo(size.width * -0.1957284, size.height * 0.3242819);
    path_0.cubicTo(
        size.width * -0.1367716,
        size.height * 0.5386626,
        size.width * 0.02290900,
        size.height * 0.9441111,
        size.width * 0.2060174,
        size.height * 0.8617613);
    path_0.cubicTo(
        size.width * 0.3485907,
        size.height * 0.7976420,
        size.width * 0.4736605,
        size.height * 0.7548025,
        size.width * 0.5260000,
        size.height * 0.7725350);
    path_0.cubicTo(
        size.width * 0.6739651,
        size.height * 0.8306008,
        size.width * 0.7047140,
        size.height * 0.9353251,
        size.width * 0.8398140,
        size.height * 0.9883457);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Colors.black.withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.8398140, size.height * 0.9883457);
    path_1.cubicTo(
        size.width * 0.9749140,
        size.height * 1.041362,
        size.width * 1.036653,
        size.height * 0.8943128,
        size.width * 1.050635,
        size.height * 0.8141605);
    path_1.lineTo(size.width * 1.201816, size.height * -0.3921305);
    path_1.lineTo(size.width * -0.04463977, size.height * -0.8812798);
    path_1.lineTo(size.width * -0.1957284, size.height * 0.3242819);
    path_1.cubicTo(
        size.width * -0.1973547,
        size.height * 0.3183679,
        size.width * -0.1989044,
        size.height * 0.3125996,
        size.width * -0.2003758,
        size.height * 0.3069909);
    path_1.cubicTo(
        size.width * -0.2240477,
        size.height * 0.2050436,
        size.width * -0.2144067,
        size.height * 0.5226872,
        size.width * -0.2154405,
        size.height * 0.4815679);
    path_1.lineTo(size.width * -0.1957284, size.height * 0.3242819);
    path_1.cubicTo(
        size.width * -0.1367716,
        size.height * 0.5386626,
        size.width * 0.02290900,
        size.height * 0.9441111,
        size.width * 0.2060174,
        size.height * 0.8617613);
    path_1.cubicTo(
        size.width * 0.3485907,
        size.height * 0.7976420,
        size.width * 0.4736605,
        size.height * 0.7548025,
        size.width * 0.5260000,
        size.height * 0.7725350);
    path_1.cubicTo(
        size.width * 0.6739651,
        size.height * 0.8306008,
        size.width * 0.7047140,
        size.height * 0.9353251,
        size.width * 0.8398140,
        size.height * 0.9883457);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.5785884, size.height * -63.67037),
        Offset(size.width * 0.3630860, size.height * 1.082835), [
      const Color(0xffF90716).withOpacity(0.63),
      const Color(0xffF90716).withOpacity(1)
    ], [
      0,
      1
    ]);
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
