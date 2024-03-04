import 'dart:core';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jak_one_pay/pages/bottom_navbar.dart';

class OnBoardingPage extends StatefulWidget {
  static const routeName = '/onboarding';
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;
  CarouselController carouselController = CarouselController();

  List<String> titles = [
    'Monumen Nasional',
    '?',
    '?',
  ];

  List<String> subtitles = [
    'Explore Jakarta with Jakarta Tourist Pass',
    'Explore Jakarta with Jakarta Tourist Pass',
    'Explore Jakarta with Jakarta Tourist Pass',
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
    );
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 4),
                      height: 30,
                      width: 65,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Image.asset(
                              'assets/indo.png',
                              width: 24,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Image.asset(
                              'assets/ing.png',
                              width: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 61,
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(Icons.credit_card_rounded, size: 22),
                          Image.asset(
                            'assets/jackcard.png',
                            height: 24,
                            width: 30,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 70.0,
                ),
                CarouselSlider(
                  items: [
                    buildCarouselItem(
                      'assets/monas.png',
                      titles[0],
                    ),
                    buildCarouselItem('assets/monas.png', titles[0]),
                    buildCarouselItem('assets/monas.png', titles[0]),
                  ],
                  options: CarouselOptions(
                    height: 400,
                    viewportFraction: 1,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                  carouselController: carouselController,
                ),
                GestureDetector(
                  onTap: () {
                    context.push(BottomNavigation.routeName);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 6.5, horizontal: 38.5),
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFFFE5F5F), Color(0xFFFC9842)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        border: Border.all(color: const Color(0xFFFFF84B)),
                        borderRadius: BorderRadius.circular(100)),
                    child: Text(
                      'Continue As a Guest',
                      style: GoogleFonts.nunito(
                        textStyle: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                GestureDetector(
                  onTap: () {
                    context.push(BottomNavigation.routeName);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 6.5, horizontal: 38.5),
                    decoration: BoxDecoration(
                        // color: Colors,
                        border: Border.all(color: const Color(0xFFFE5F5F)),
                        borderRadius: BorderRadius.circular(100)),
                    child: Text(
                      'Continue As a Guest',
                      style: GoogleFonts.nunito(
                        textStyle: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFE5F5F),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            right: 10,
            child: Image.asset(
              'assets/help.png',
              width: 90,
              height: 99,
            ),
          ),
        ],
      )),
    );
  }

  Widget buildCarouselItem(String imagePath, String title) {
    return Column(
      children: [
        Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color(0xFFFC9842),
                  ),
                  child: Text(
                    title,
                    style: GoogleFonts.nunito(
                      textStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 16),
          child: Text(subtitles[currentIndex]),
        ),
        Container(
          margin: const EdgeInsets.only(top: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: index == currentIndex ? 8 : 6,
                height: 22,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: index == currentIndex
                      ? const Color(0xFFFC9842)
                      : Colors.grey,
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
