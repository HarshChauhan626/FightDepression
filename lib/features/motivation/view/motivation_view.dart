import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:fightdepression/features/home/controller/home_page_controller.dart';

class MotivationPage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          controller.title,
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Center(
          child: Text(
            "Motivation Page",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}