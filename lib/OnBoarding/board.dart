import 'package:daily_lancers/Auth/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Boarding extends StatefulWidget {
  const Boarding({Key? key}) : super(key: key);

  @override
  _BoardingState createState() => _BoardingState();
}

class _BoardingState extends State<Boarding> with TickerProviderStateMixin {
  late AnimationController _leftToRightController;
  late Animation<Offset> _leftToRightAnimation;

  late AnimationController _rightToLeftController;
  late Animation<Offset> _rightToLeftAnimation;

  @override
  void initState() {
    super.initState();

    // Animation for left to right
    _leftToRightController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    );
    _leftToRightAnimation = Tween<Offset>(
      begin: Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _leftToRightController,
      curve: Curves.easeInOut,
    ));

    // Animation for right to left
    _rightToLeftController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    );
    _rightToLeftAnimation = Tween<Offset>(
      begin: Offset(1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _rightToLeftController,
      curve: Curves.easeInOut,
    ));

    // Start the animations
    _leftToRightController.forward();
    _rightToLeftController.forward();
  }

  @override
  void dispose() {
    _leftToRightController.dispose();
    _rightToLeftController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFF9F9F9),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SlideTransition(
                  position: _leftToRightAnimation,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                ),
                SlideTransition(
                  position: _rightToLeftAnimation,
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.35,
                    child: SvgPicture.asset("assets/board.svg"),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                SlideTransition(
                  position: _leftToRightAnimation,
                  child: const Text(
                    "Find Your",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontFamily: "default",
                      fontWeight: FontWeight.w700,
                      height: 1.0,
                    ),
                  ),
                ),
                SlideTransition(
                  position: _rightToLeftAnimation,
                  child: const Text(
                    "Dream Job",
                    style: TextStyle(
                      color: Color(0xFFFCA34D),
                      fontSize: 40,
                      height: 1.0,
                      fontFamily: "RobotoBold",
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xFFFCA34D),
                    ),
                  ),
                ),
                SlideTransition(
                  position: _leftToRightAnimation,
                  child: const SizedBox(
                    height: 5,
                  ),
                ),
                SlideTransition(
                  position: _rightToLeftAnimation,
                  child: const Text(
                    "Here!",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      height: 1.0,
                      fontFamily: "RobotoBold",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SlideTransition(
                  position: _leftToRightAnimation,
                  child: const SizedBox(
                    height: 20,
                  ),
                ),
                SlideTransition(
                  position: _rightToLeftAnimation,
                  child: const Text(
                    'Explore all the most exciting job roles based on your interest and study major.',
                    style: TextStyle(
                      color: Color(0xFF514A6B),
                      fontSize: 14,
                      fontFamily: "RobotoMedium",
                      height: 1.5,
                    ),
                  ),
                ),
                SlideTransition(
                  position: _leftToRightAnimation,
                  child: const SizedBox(
                    height: 80,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SlideTransition(
                      position: _rightToLeftAnimation,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Signup(),
                            ),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.39,
                          height: MediaQuery.of(context).size.width * 0.12,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF130160),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Center(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'LOGIN / SIGN UP',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: "RobotoBold",
                                    height: 0,
                                    letterSpacing: 0.60,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_rounded,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
