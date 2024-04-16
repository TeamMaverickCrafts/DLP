import 'package:daily_lancers/JobPoster/JobPreview/JobPreview.dart';
import 'package:daily_lancers/Profile/profile.dart';
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
        debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
