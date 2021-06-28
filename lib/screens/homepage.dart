import 'package:breaking_bad_quote_app/contollers/character_controller.dart';
import 'package:breaking_bad_quote_app/contollers/homepage_controller.dart';
import 'package:breaking_bad_quote_app/screens/episodes_screen.dart';
import 'package:breaking_bad_quote_app/screens/qoutes_screen.dart';
import 'package:breaking_bad_quote_app/widgets/grid_view.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:iphone_has_notch/iphone_has_notch.dart';

class HomePage extends StatelessWidget {
  final CharacterController characterController = Get.put(
      CharacterController());
  final HomePageController homePageController = Get.put(
      HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: RichText(text: TextSpan(
          children: [
            TextSpan(
              text: 'Br',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,),),
            TextSpan(
              text: 'eaking ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.sp,),),
            TextSpan(
              text: 'Ba',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,),),
            TextSpan(
              text: 'd',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.sp,),),
          ]
        )),
        elevation: 0,
        centerTitle: true,
      ),
      body: SizedBox.expand(
        child: PageView(
          children: [
            CharacterGridView(),
            EpisodesScreen(),
            QuotesScreen(),
          ],
          controller: homePageController.pageController,
        ),
      ),
      bottomNavigationBar: Obx(() =>
          FancyBottomNavigation(
          tabs: [
            TabData(iconData: Icons.home, title: 'Home'),
            TabData(iconData: Icons.tv_sharp, title: 'Episodes'),
            TabData(iconData: Icons.format_quote_outlined, title: 'Quotes'),
          ],
          onTabChangedListener: (position) {
            homePageController.currentIndex.value = position;
            homePageController.pageController.jumpToPage(position);
          },
          initialSelection: homePageController.currentIndex.value,
          key: homePageController.bottomNavKey,
          inactiveIconColor: Colors.black,
          activeIconColor: Colors.green,
          barBackgroundColor: Colors.amber,
          textColor: Colors.black,
        ),
      ),
    );
  }
}
