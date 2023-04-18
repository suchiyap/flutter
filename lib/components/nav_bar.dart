import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:temple_dev/constants.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
            padding: const EdgeInsets.only(
                left: 30.0, right: 30, top: 10, bottom: 10),
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
      currentIndex: _selectedIndex,
      selectedItemColor: kPrimaryColor,
      onTap: _onItemTapped,
    );
  }
}
