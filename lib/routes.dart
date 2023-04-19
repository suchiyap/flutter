import 'package:flutter/widgets.dart';
import 'package:temple_dev/screens/cart/cart.dart';
import 'package:temple_dev/screens/main/main.dart';
import 'package:temple_dev/screens/product_details/product_details.dart';
import 'package:temple_dev/screens/splash_screen/splash_screen.dart';
import 'package:temple_dev/screens/profile/profile.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  MainScreen.routeName: (context) => const MainScreen(),
  ProductDetails.routeName: (context) => const ProductDetails(),
  Cart.routeName: (context) => const Cart(),
  Profile.routeName: (context) => const Profile(),
};
