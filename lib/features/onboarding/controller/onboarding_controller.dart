import 'package:fightdepression/features/bottomnavigation/bottom_navigation_view.dart';
import 'package:fightdepression/features/home/view/homepageview.dart';
import 'package:fightdepression/homepagefile.dart';
import 'package:flutter/material.dart';
import 'package:fightdepression/core/model/onboarding_model.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  var pageController = PageController();

  forwardAction() {
    if (isLastPage) {
      Get.off(MyHomePage());
      //go to home page
    } else
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo('assets/order.png', 'Order Your Food',
        'Now you can order food any time  right from your mobile.'),
    OnboardingInfo('assets/cook.png', 'Cooking Safe Food',
        'We are maintain safty and We keep clean while making food.'),
    OnboardingInfo('assets/deliver.png', 'Quick Delivery',
        'Orders your favorite meals will be  immediately deliver')
  ];
}