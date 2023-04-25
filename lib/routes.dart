import 'package:go_router/go_router.dart';

import 'package:temple_dev/screens/cart/cart.dart';
import 'package:temple_dev/screens/checkout/checkout.dart';
import 'package:temple_dev/screens/main/main.dart';
import 'package:temple_dev/screens/product_details/product_details.dart';
import 'package:temple_dev/screens/splash_screen/splash_screen.dart';
import 'package:temple_dev/screens/profile/profile.dart';
import 'package:temple_dev/screens/profile_edit/profile_edit.dart';

class AppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: Cart.routeName,
        path: Cart.routeName,
        builder: (context, state) => const Cart(),
      ),
      GoRoute(
        name: Checkout.routeName,
        path: Checkout.routeName,
        builder: (context, state) => const Checkout(),
      ),
      GoRoute(
        name: MainScreen.routeName,
        path: MainScreen.routeName,
        builder: (context, state) => const MainScreen(),
      ),
      GoRoute(
        name: ProductDetails.routeName,
        path: ProductDetails.routeName,
        builder: (context, state) => const ProductDetails(),
      ),
      GoRoute(
        name: SplashScreen.routeName,
        path: SplashScreen.routeName,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        name: Profile.routeName,
        path: Profile.routeName,
        builder: (context, state) => const Profile(),
      ),
      GoRoute(
        name: ProfileEdit.routeName,
        path: ProfileEdit.routeName,
        builder: (context, state) => const ProfileEdit(),
      ),
    ],
  );
}
