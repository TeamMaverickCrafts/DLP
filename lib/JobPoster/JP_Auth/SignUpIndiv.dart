import 'package:daily_lancers/Auth/SignUp.dart';
import 'package:daily_lancers/Auth/forgot.dart';
import 'package:daily_lancers/HomePage/HomePage.dart';
import 'package:daily_lancers/JobPoster/JP_Auth/login.dart';

import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

class SignUpIndiv extends StatefulWidget {
  const SignUpIndiv({super.key});

  @override
  State<SignUpIndiv> createState() => _SignUpIndivState();
}

class _SignUpIndivState extends State<SignUpIndiv> {
  bool _isObscured = true;
  bool _isColorChanged = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color(0xFFF9F9F9),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(children: [
              const SizedBox(
                height: 80,
              ),
              const Text(
                "Individual Details",
                style: TextStyle(
                  fontFamily: "RobotoBold",
                  fontSize: 30,
                  color: Color(0xff0d0140),
                  height: 39 / 30,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Provide essential details to create your company profile for better visibility and credibility.",
                style: TextStyle(
                  fontFamily: "RobotoMedium",
                  fontSize: 13,
                  height: 1.4,
                  color: Color(0xff514a6b),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const Row(
                children: [
                  Text(
                    "Full name",
                    style: TextStyle(
                      fontFamily: "RobotoBold",
                      fontSize: 14,
                      color: Color(0xff0d0140),
                      height: 16 / 12,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff99ABC6).withOpacity(0.18),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Hritik Chauhan',
                    hintStyle: TextStyle(
                        fontFamily: "RobotoMedium",
                        color: Colors.grey,
                        fontSize: 14.0),
                    labelStyle: TextStyle(color: Color(0xff6E678C)),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const Row(
                children: [
                  Text(
                    "Email",
                    style: TextStyle(
                      fontFamily: "RobotoBold",
                      fontSize: 14,
                      color: Color(0xff0d0140),
                      height: 16 / 12,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff99ABC6).withOpacity(0.18),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'maverickcrafts@gmail.com ',
                    hintStyle: TextStyle(
                        fontFamily: "RobotoMedium",
                        color: Colors.grey,
                        fontSize: 14.0),
                    labelStyle: TextStyle(color: Color(0xff6E678C)),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const Row(
                children: [
                  Text(
                    "Contact Number",
                    style: TextStyle(
                      fontFamily: "RobotoBold",
                      fontSize: 14,
                      color: Color(0xff0d0140),
                      height: 16 / 12,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff99ABC6).withOpacity(0.18),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: '1234567890',
                    hintStyle: TextStyle(
                        fontFamily: "RobotoMedium",
                        color: Colors.grey,
                        fontSize: 14.0),
                    labelStyle: TextStyle(color: Color(0xff6E678C)),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const Row(
                children: [
                  Text(
                    "Password",
                    style: TextStyle(
                      fontFamily: "RobotoBold",
                      fontSize: 14,
                      color: Color(0xff0d0140),
                      height: 16 / 12,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff99ABC6).withOpacity(0.18),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: TextField(
                  obscureText: _isObscured,
                  decoration: InputDecoration(
                    hintText: 'Enter Password',
                    hintStyle: const TextStyle(
                        fontFamily: "RobotoMedium",
                        color: Colors.grey,
                        fontSize: 14.0),
                    labelStyle: const TextStyle(color: Color(0xff6E678C)),
                    filled: true,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _isObscured = !_isObscured;
                        });
                      },
                      child: Icon(
                        _isObscured
                            ? Icons.visibility_off_outlined
                            : Icons.remove_red_eye_outlined,
                        color: Colors.grey,
                      ),
                    ),
                    fillColor: Colors.white,
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const SizedBox(
                height: 25,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle between two colors
                          _isColorChanged = !_isColorChanged;
                        });
                      },
                      child: Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          color: _isColorChanged
                              ? const Color(0xffFFD6AD)
                              : const Color.fromARGB(65, 170, 166, 185),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "Remember me",
                      style: TextStyle(
                        fontFamily: "RobotoRegular",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffaaa6b9),
                        height: 16 / 12,
                      ),
                      textAlign: TextAlign.left,
                    )
                  ],
                ),
                // GestureDetector(
                //   onTap: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) =>
                //               const forgot()), // Replace SecondPage with the actual widget representing the second page
                //     );
                //   },
                //   child: const Text(
                //     "Forgot Password ?",
                //     style: TextStyle(
                //       fontFamily: "RobotoRegular",
                //       fontSize: 12,
                //       color: Color(0xff0d0140),
                //       height: 16 / 12,
                //     ),
                //     textAlign: TextAlign.left,
                //   ),
                // )
              ]),
              const SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Home()), // Replace SecondPage with the actual widget representing the second page
                  );
                },
                child: Container(
                  width: 266,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF130160),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    shadows: [
                      const BoxShadow(
                        color: Color(0x2D99AAC5),
                        blurRadius: 62,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      'SIGN UP',
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already Have An Account?",
                    style: TextStyle(
                      color: Color(0xFF514A6B),
                      fontSize: 12,
                      fontFamily: 'RobotoRegular',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  SizedBox(width: 5.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const JpLogin()), // Replace SecondPage with the actual widget representing the second page
                      );
                    },
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                        color: Color(0xFFFF9228),
                        fontSize: 12,
                        fontFamily: 'RobotoRegular',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xFFFF9228),
                        height: 0,
                      ),
                    ),
                  )
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
