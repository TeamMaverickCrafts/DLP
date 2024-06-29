import 'package:daily_lancers/BotNav.dart';
import 'package:daily_lancers/JobPoster/AddJob/add_a_job.dart';
import 'package:daily_lancers/JobPoster/Home/JP_Home.dart';
import 'package:daily_lancers/JobPoster/JP_Botnav.dart';
import 'package:daily_lancers/JobPoster/JobPreview/JobPreview.dart';
import 'package:daily_lancers/JobPoster/Notifications.dart';
import 'package:daily_lancers/JobPoster/Profile_View/about_applicant.dart';
import 'package:daily_lancers/Profile/Components/AboutMe.dart';
import 'package:daily_lancers/Profile/profile.dart';
import 'package:daily_lancers/Socials/social.dart';
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

// void main()
// {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    store.write("ankit", "");
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: SplashScreen()
      // home: JobPreview(index: 1,),
      // home: Notifications(),
      // home: AboutApplicant(index: 1,)
      // 
      // home: SplashScreen(),
      // home: AddaJob(),
      // home: SplashScreen()
      // home: AddaJob(),
      // home: BotNav(),
      // home: JP_BotNav(),
      // home: Social(),
      // home: JPHome(),
      home: SplashScreen(),
    );
  }
}
