import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fightdepression/features/doctor/view/doctor_page_view.dart';
import 'package:fightdepression/features/moodtracker/view/mood_tracker_view.dart';
import 'package:fightdepression/features/home/view/homepageview.dart';
import 'package:fightdepression/features/motivation/view/motivation_view.dart';


import 'bottom_navigation_controller.dart';


class NavigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GetBuilder<BottomNavigationController>(
        init: BottomNavigationController(),
        builder: (controller) => IndexedStack(
          index: controller.tabIndex,
          children: [
            HomePage(),
            MotivationPage(),
            MoodTrackerPage(),
            DoctorPage()
          ],
        )
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }
}

class NavigationBar extends StatelessWidget {
  const NavigationBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavigationController>( // init only first time
      builder: (controller) => BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Inicio'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Pesquisa'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Perfil'),
          ),
        ],
        currentIndex: controller.tabIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (index) => controller.onItemTapped(index),
        /* currentIndex: Get.find<ProfileController>().selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: Get.find<ProfileController>().onItemTapped, */
      ),
    );
  }
}



/*
class NavigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavigationController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                HomePage(),
                MotivationPage(),
                MoodTrackerPage(),
                DoctorPage(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.redAccent,
            onTap: Get.find<BottomNavigationController>().onItemTapped,
            currentIndex: controller.tabIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            elevation: 0,
            items: [
              _bottomNavigationBarItem(
                icon: CupertinoIcons.home,
                label: 'Home',
              ),
              _bottomNavigationBarItem(
                icon: CupertinoIcons.sportscourt,
                label: 'News',
              ),
              _bottomNavigationBarItem(
                icon: CupertinoIcons.bell,
                label: 'Alerts',
              ),
              _bottomNavigationBarItem(
                icon: CupertinoIcons.person,
                label: 'Account',
              ),
            ],
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({IconData icon, String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}

*/