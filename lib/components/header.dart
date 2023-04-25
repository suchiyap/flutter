import 'package:flutter/material.dart';
import 'package:temple_dev/constants.dart';

class Header extends StatefulWidget {
  const Header({super.key, required this.title});

  final String title;
  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: 50,
      automaticallyImplyLeading: false,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
            // LinearGradient
            gradient: kPrimaryGradientColor),
      ),
      // title of appbar
      title: Center(
          child: Text(
        widget.title,
        style: headingStyle,
      )),
    );
    //   return Expanded(
    //       child: SizedBox(
    //           width: SizeConfig.screenWidth,
    //           child: CustomScrollView(
    //             slivers: <Widget>[
    //               // sliverappbar for gradient widget
    //               SliverAppBar(
    //                 pinned: true,
    //                 expandedHeight: 50,
    //                 flexibleSpace: Container(
    //                   decoration: const BoxDecoration(
    //                       // LinearGradient
    //                       gradient: kPrimaryGradientColor),
    //                 ),
    //                 // title of appbar
    //                 title: Text(
    //                   widget.title,
    //                   style: headingStyle,
    //                 ),
    //               ),
    //               SliverList(
    //                 delegate: SliverChildListDelegate(
    //                   [
    //                     // Body Element
    //                   ],
    //                 ),
    //               ),
    //             ],
    //           )));
    // return Container(
    //         height: 170,
    //         width: double.infinity,
    //         decoration: const BoxDecoration(
    //             // LinearGradient
    //             gradient: kPrimaryGradientColor),
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.center,
    //           mainAxisAlignment: MainAxisAlignment.end,
    //           children: [
    //             Text(
    //               widget.title,
    //               style: headingStyle,
    //             ),
    //             Container(
    //               padding: const EdgeInsets.all(10),
    //               child: const TextField(
    //                 obscureText: true,
    //                 decoration: InputDecoration(
    //                   border: OutlineInputBorder(),
    //                   labelText: 'Search',
    //                 ),
    //               ),
    //             )
    //           ],
    //         ))
    //     // title of appbar
    //     ;
  }
}
