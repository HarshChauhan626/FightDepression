import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  final _tabIndex = 0.obs;
  set tabIndex(value) => this._tabIndex.value = value;
  get tabIndex => this._tabIndex.value;

  onItemTapped(int index) {
    this.tabIndex = index; // The set method is accessed this way, you have confused it with methods.
    update();
  }
}