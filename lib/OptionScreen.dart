import 'package:daily_lancers/JobPoster/Board2.dart';
import 'package:daily_lancers/OnBoarding/board.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OptionScreen extends StatefulWidget {
  const OptionScreen({super.key});

  @override
  State<OptionScreen> createState() => _OptionScreenState();
}

class _OptionScreenState extends State<OptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            const Text(
              "Welcome to",
              style: TextStyle(
                color: Color(0xFF0D0140),
                fontSize: 30,
                fontFamily: "RobotoBold",
                height: 1.0,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            const Text(
              "Dailylancer",
              style: TextStyle(
                color: Color(0xFF0D0140),
                fontSize: 30,
                fontFamily: "RobotoBold",
                height: 1.0,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const Text(
              "Connect with hospitality jobs: post openings or",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF524B6B),
                fontSize: 12,
                fontFamily: "RobotoRegular",
                height: 1.0,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.005,
            ),
            const Text(
              "explore opportunities. Start your journey now",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF524B6B),
                fontSize: 12,
                fontFamily: "RobotoRegular",
                height: 1.0,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            SvgPicture.asset("assets/Components/divider.svg"),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Boarding()), // Replace SecondPage with the actual widget representing the second page
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF130160),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x2D99AAC5),
                        blurRadius: 62,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      'APPLY FOR JOB',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'RobotoBold',
                        fontWeight: FontWeight.w700,
                        height: 0,
                        letterSpacing: 0.84,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Boarding2()), // Replace SecondPage with the actual widget representing the second page
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFFFD6AD),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x2D99AAC5),
                        blurRadius: 62,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      'POST A JOB',
                      style: TextStyle(
                        color: Color(0xFF130160),
                        fontSize: 14,
                        fontFamily: 'RobotoBold',
                        fontWeight: FontWeight.w700,
                        height: 0,
                        letterSpacing: 0.84,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
