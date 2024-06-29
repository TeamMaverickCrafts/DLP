import 'package:daily_lancers/JobPoster/JP_Botnav.dart';
import 'package:daily_lancers/OnBoarding/board.dart';
import 'package:daily_lancers/OptionScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

String splash = "";

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _initializeApp();
  }
  _initializeApp() async
  {
    await Future.delayed(Duration(seconds: 2));
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isFirstTime = prefs.getBool('isFirstTime') ?? true;
    if(isFirstTime)
      {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => OptionScreen()),
        );
        await prefs.setBool('isFirstTime', false);
      }
    else {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)
      {
        splash = "SplashPage";
        return JP_BotNav();
      }));
    }
  }

  @override
  Widget build(BuildContext context) {
    // Delayed navigation function
    // Future<void> navigateToNextPage() async {
    //   await Future.delayed(const Duration(seconds: 3));
    //   Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(
    //         builder: (context) =>
    //             const OptionScreen()
    //     ), // Replace NextPage with your desired page
    //   );
    // }
    //Boarding

    // Call the delayed navigation function
    // navigateToNextPage();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 0.7,
            color: const Color(0xFFF4FEFF),
            child: SvgPicture.asset(
              "assets/mainlogo.svg",
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}


