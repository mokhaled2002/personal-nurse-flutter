
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_nursing/features/splash/presentation/splash_view.dart';
void main() {
  runApp(PersonalNurse());
}

class PersonalNurse extends StatelessWidget {
  const PersonalNurse({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
