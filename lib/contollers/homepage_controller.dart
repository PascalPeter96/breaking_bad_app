
import 'package:breaking_bad_quote_app/models/character_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:breaking_bad_quote_app/contollers/character_controller.dart';

class HomePageController extends GetxController{
  late PageController pageController;
  var currentIndex = 0.obs;
  GlobalKey bottomNavKey = GlobalKey();


  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
    update();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    pageController.dispose();
  }
}