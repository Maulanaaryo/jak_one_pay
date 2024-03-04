import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jak_one_pay/pages/bottom_navbar.dart';
import 'package:jak_one_pay/pages/home_page.dart';
import 'package:jak_one_pay/pages/onboard_page.dart';
import 'package:jak_one_pay/pages/profile_page.dart';
import 'package:jak_one_pay/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Jak One Pay',
      debugShowCheckedModeBanner: false,
      routerConfig: GoRouter(
        initialLocation: SplashScreen.routeName,
        routes: [
          GoRoute(
            path: SplashScreen.routeName,
            builder: (context, state) => const SplashScreen(),
          ),
          GoRoute(
            path: OnBoardingPage.routeName,
            builder: (context, state) => const OnBoardingPage(),
          ),
          GoRoute(
            path: BottomNavigation.routeName,
            builder: (context, state) => const BottomNavigation(),
          ),
          GoRoute(
            path: HomePage.routeName,
            builder: (context, state) => const HomePage(),
          ),
          GoRoute(
            path: ProfilePage.routeName,
            builder: (context, state) => const ProfilePage(),
          ),
        ],
      ),
      // home: SplashScreen(),
    );
  }
}
