import 'package:daily_lancers/HomePage/HomePage.dart';
import 'package:daily_lancers/JobPoster/Dashboard/blankDashBoard_page.dart';
import 'package:daily_lancers/JobPoster/Dashboard/dash_page.dart';
import 'package:daily_lancers/JobPoster/Dashboard/followers_page.dart';
import 'package:daily_lancers/JobPoster/Dashboard/totalHiredPerson_page.dart';
import 'package:daily_lancers/JobPoster/KYC/DocVerificationP1.dart';
import 'package:daily_lancers/JobPoster/KYC/congrats_page.dart';
import 'package:daily_lancers/JobPoster/KYC/gstDetailsPage.dart';
import 'package:daily_lancers/JobPoster/Profile/companyProfile_page.dart';
import 'package:daily_lancers/JobPoster/Profile/profile_page.dart';
import 'package:daily_lancers/SplashScreen/splash.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

final store = GetStorage();

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    store.write("ankit", "");
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen()
    );
  }
}
