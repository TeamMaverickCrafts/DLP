import 'package:daily_lancers/HomePage/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppliedSuccessful extends StatefulWidget {
  const AppliedSuccessful({super.key});

  @override
  State<AppliedSuccessful> createState() => _AppliedSuccessfulState();
}

class _AppliedSuccessfulState extends State<AppliedSuccessful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_rounded),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            SvgPicture.asset(
              "assets/applieds.svg",
              width: 230,
              height: 230,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            const Text(
              "Successful",
              style: TextStyle(
                color: Color(0xff150B3D),
                fontSize: 18,
                fontFamily: "RobotoBold",
                height: 1.0,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const Text(
              "Congratulations, your application has been sent",
              style: TextStyle(
                color: Color(0xff524B6B),
                fontSize: 12.5,
                fontFamily: "RobotoRegular",
                height: 1.0,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Home()), // Replace SecondPage with the actual widget representing the second page
                );
              },
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: const Color(0xFFFFD6AD), // Background color
                minimumSize: Size(MediaQuery.of(context).size.width * 0.8,
                    56), // Set the width and height
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(8), // Adjust the radius as needed
                ),
              ),
              child: const Text(
                'GO TO HOMEPAGE',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF130160),
                  fontFamily: 'RobotoBold',
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: const Color(0xFF130160), // Background color
                minimumSize: Size(MediaQuery.of(context).size.width * 0.8,
                    56), // Set the width and height
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(8), // Adjust the radius as needed
                ),
              ),
              child: const Text(
                'CHECK APPLICATION STATUS',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontFamily: 'RobotoBold',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
