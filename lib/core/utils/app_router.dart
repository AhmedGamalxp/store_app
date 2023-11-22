import 'package:go_router/go_router.dart';
import 'package:store_app/features/authentication/presentation/views/forget_password_view.dart';
import 'package:store_app/features/authentication/presentation/views/login_success_view.dart';
import 'package:store_app/features/authentication/presentation/views/otp_view.dart';
import 'package:store_app/features/authentication/presentation/views/signin_view.dart';
import 'package:store_app/features/authentication/presentation/views/signup_view.dart';
import 'package:store_app/features/cart/presentation/views/cart_view.dart';
import 'package:store_app/features/home/presentation/views/home_view.dart';
import 'package:store_app/features/product_describtion/presentation/views/detailes_view.dart';
import 'package:store_app/features/profile/presentation/views/profile_view.dart';
import 'package:store_app/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kSignIn = '/SignIn';
  static const kSignUp = '/SignUp';
  static const kForgetPassword = '/kForgetPassword';
  static const kLoginSuccess = '/LoginSuccess';
  static const kOTPview = '/OTPview';
  static const kDetailesView = '/DetailesView';
  static const kCartView = '/CartView';
  static const kProfileView = '/ProfileView';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      // GoRoute(
      //   path: '/',
      //   builder: (context, state) => const SplashView(),
      // ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kSignIn,
        builder: (context, state) => const SignInView(),
      ),
      GoRoute(
        path: kSignUp,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: kForgetPassword,
        builder: (context, state) => const ForgetPasswordView(),
      ),
      GoRoute(
        path: kLoginSuccess,
        builder: (context, state) => const LoginSuccessView(),
      ),
      GoRoute(
        path: kOTPview,
        builder: (context, state) => const OTPViev(),
      ),
      GoRoute(
        path: kDetailesView,
        builder: (context, state) => const DetailesView(),
      ),
      GoRoute(
        path: kCartView,
        builder: (context, state) => const CartView(),
      ),
      GoRoute(
        path: '/',
        builder: (context, state) => const ProfileView(),
      ),
    ],
  );
}
