import 'package:go_router/go_router.dart';
import 'package:temple_dev/screens/address/add_address.dart';
import 'package:temple_dev/screens/address/my_address.dart';

import 'package:temple_dev/screens/cart/cart.dart';
import 'package:temple_dev/screens/checkout/checkout.dart';
import 'package:temple_dev/screens/main/main.dart';
import 'package:temple_dev/screens/payment_success/payment_success.dart';
import 'package:temple_dev/screens/product_details/product_details.dart';
import 'package:temple_dev/screens/splash_screen/splash_screen.dart';
import 'package:temple_dev/screens/profile/profile.dart';
import 'package:temple_dev/screens/profile_edit/profile_edit.dart';
import 'package:temple_dev/screens/password/password_edit.dart';
import 'package:temple_dev/screens/language/language_edit.dart';
import 'package:temple_dev/screens/login/login.dart';

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
        name: PaymentSuccess.routeName,
        path: PaymentSuccess.routeName,
        builder: (context, state) => const PaymentSuccess(
          title: '支付成功',
        ),
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
      GoRoute(
        name: MyAddress.routeName,
        path: MyAddress.routeName,
        builder: (context, state) => const MyAddress(),
      ),
      GoRoute(
        name: AddressForm.routeName,
        path: AddressForm.routeName,
        builder: (context, state) => const AddressForm(),
      ),
      GoRoute(
        name: PasswordEdit.routeName,
        path: PasswordEdit.routeName,
        builder: (context, state) => const PasswordEdit(),
      ),
      GoRoute(
        name: LanguageEdit.routeName,
        path: LanguageEdit.routeName,
        builder: (context, state) => const LanguageEdit(),
      ),
      GoRoute(
        name: LogIn.routeName,
        path: LogIn.routeName,
        builder: (context, state) => const LogIn(),
      ),
    ],
  );
}
