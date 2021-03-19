import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'features/onboarding/view/onboarding_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: OnboardingPage(),
    );
  }
}




/*
* import
import 'package:flutter/material.dart';
import 'freelancinglayout/leftmenu_dashboard_layout.dart';
import 'freelancing_step_model.dart';
  import 'package:shared_preferences/shared_preferences.dart';

int initScreen;

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  initScreen = prefs.getInt("initScreen");
  await prefs.setInt("initScreen", 1);
  print('initScreen $initScreen');
  runApp(MyAppLancing());
}
* */

