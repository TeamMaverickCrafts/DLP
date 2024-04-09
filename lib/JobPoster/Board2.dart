import 'package:daily_lancers/Auth/SignUp.dart';
import 'package:daily_lancers/JobPoster/optionscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Boarding2 extends StatefulWidget {
  const Boarding2({Key? key}) : super(key: key);

  @override
  _Boarding2State createState() => _Boarding2State();
}

class _Boarding2State extends State<Boarding2> with TickerProviderStateMixin {
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
                    "Hire",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: "default",
                      fontWeight: FontWeight.w700,
                      height: 1.0,
                    ),
                  ),
                ),
                SlideTransition(
                  position: _rightToLeftAnimation,
                  child: const Text(
                    "On-Demand",
                    style: TextStyle(
                      color: Color(0xFFFCA34D),
                      fontSize: 30,
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
                    "Talent!",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
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
                    'Reach qualified candidates quickly and easily. Start hiring the best candidates today!.',
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
                              builder: (context) => const OptionScreenJP(),
                            ),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.width * 0.15,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF130160),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          child: const Center(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.arrow_forward_rounded,
                                  color: Colors.white,
                                  size: 30,
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
