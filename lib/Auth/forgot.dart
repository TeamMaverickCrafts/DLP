import 'package:daily_lancers/Auth/forgot_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class forgot extends StatefulWidget {
  const forgot({super.key});

  @override
  State<forgot> createState() => _forgotState();
}

class _forgotState extends State<forgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color(0xFFF9F9F9),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                "Forgot Password?",
                style: const TextStyle(
                  fontFamily: "default",
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff0d0140),
                  height: 39 / 30,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "To reset your password, you need your mobile number that can be authenticated",
                style: TextStyle(
                  fontFamily: "default",
                  fontSize: 12,
                  // height: 0.9,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff514a6b),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              SvgPicture.asset("assets/forgot.svg"),
              const SizedBox(
                height: 8,
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    "Phone Number",
                    style: TextStyle(
                      fontFamily: "default",
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
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
                    hintText: '+91-236548',
                    hintStyle: TextStyle(
                      fontFamily: "default",
                    ),
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
              const SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const email()), // Replace SecondPage with the actual widget representing the second page
                  );
                },
                child: Container(
                  width: double.infinity,
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
                      'RESET PASSWORD',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'default',
                        fontWeight: FontWeight.w700,
                        height: 0,
                        letterSpacing: 0.84,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFFED5AD),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 120,
                      top: 17,
                      child: SizedBox(
                        width: 179,
                        child: Text(
                          'BACK TO LOGIN',
                          style: TextStyle(
                            color: Color(0xFF130160),
                            fontSize: 14,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w700,
                            height: 0,
                            letterSpacing: 0.84,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
