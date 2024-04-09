import 'package:daily_lancers/OnBoarding/board.dart';
import 'package:daily_lancers/OptionScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Delayed navigation function
    Future<void> navigateToNextPage() async {
      await Future.delayed(const Duration(seconds: 3));
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                const OptionScreen()
        ), // Replace NextPage with your desired page
      );
    }
    //Boarding

    // Call the delayed navigation function
    navigateToNextPage();

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

// Example of the next page
