import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:temple_dev/constants.dart';

class NavBar extends StatefulWidget {
  const NavBar(
      {super.key, required this.selectedIndex, required this.onItemTapped});

  final int selectedIndex;
  final Function(int) onItemTapped;

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 12.0,
      unselectedFontSize: 12.0,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      backgroundColor: Colors.white,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/Home.svg",
            colorFilter: const ColorFilter.mode(kPrimaryColor, BlendMode.srcIn),
          ),
          activeIcon: SvgPicture.asset(
            "assets/icons/Home.svg",
            colorFilter: const ColorFilter.mode(kPrimaryColor, BlendMode.srcIn),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/Search.svg",
            colorFilter: const ColorFilter.mode(kPrimaryColor, BlendMode.srcIn),
          ),
          activeIcon: SvgPicture.asset(
            "assets/icons/Search.svg",
            colorFilter: const ColorFilter.mode(kPrimaryColor, BlendMode.srcIn),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Container(
            width: 80,
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(72),
              gradient: kPrimaryGradientColor,
            ),
            child: SvgPicture.asset(
              "assets/icons/Cart.svg",
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/Notification.svg",
            colorFilter: const ColorFilter.mode(kPrimaryColor, BlendMode.srcIn),
          ),
          activeIcon: SvgPicture.asset(
            "assets/icons/Notification.svg",
            colorFilter: const ColorFilter.mode(kPrimaryColor, BlendMode.srcIn),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/User Rounded.svg",
            colorFilter: const ColorFilter.mode(kPrimaryColor, BlendMode.srcIn),
          ),
          activeIcon: SvgPicture.asset(
            "assets/icons/User Rounded.svg",
            colorFilter: const ColorFilter.mode(kPrimaryColor, BlendMode.srcIn),
          ),
          label: '',
        ),
      ],
      currentIndex: widget.selectedIndex,
      selectedItemColor: kPrimaryColor,
      onTap: widget.onItemTapped,
    );
  }
}
