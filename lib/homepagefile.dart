import 'package:fightdepression/features/doctor/controller/doctor_page_controller.dart';
import 'package:fightdepression/features/doctor/view/doctor_page_view.dart';
import 'package:fightdepression/features/moodtracker/view/mood_tracker_view.dart';
import 'package:fightdepression/features/motivation/view/motivation_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'features/home/view/homepageview.dart';
import 'features/doctor/controller/doctor_page_controller.dart';
import 'features/moodtracker/controller/mood_tracker_controller.dart';
import 'features/home/controller/home_page_controller.dart';
import 'features/motivation/controller/motivation_controller.dart';
class NavigationBinding extends Bindings
{
  @override
  void dependencies() {
    Get.put(NavController());
    Get.put(HomeController());
    Get.put(MotivationController());
    Get.put(MoodTrackerController());
    Get.put(DoctorController());
  }
}


class MyHomePage extends StatelessWidget {
  final NavController navController = Get.put(NavController());
  final homeController=Get.put(HomeController());
  final motivationcontroller=Get.put(MotivationController());
  final moodtrackerController=Get.put(MoodTrackerController());
  final doctorController=Get.put(DoctorController());
  final List<Widget> bodyContent = [
    HomePage(),
    DoctorPage(),
    MotivationPage(),
    MoodTrackerPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("getxNav"),
      ),
      body: Obx(
            () => Center(
          child: bodyContent.elementAt(navController.selectedIndex),
        ),
      ),
      bottomNavigationBar: Obx(
            () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contacts),
              label: "Contacts",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: "Messages",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: "Info",
            ),
          ],
          currentIndex: navController.selectedIndex,
          onTap: (index) => navController.selectedIndex = index,
        ),
      ),
    );
  }
}

class NavController extends GetxController {
  final _selectedIndex = 0.obs;

  get selectedIndex => this._selectedIndex.value;
  set selectedIndex(index) => this._selectedIndex.value = index;
}