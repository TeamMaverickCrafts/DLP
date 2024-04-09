import 'package:daily_lancers/Auth/SignUp.dart';
import 'package:daily_lancers/Auth/update.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

Color errors = Colors.red;
String otpFinal = '';
bool isOtp = false;

class email extends StatefulWidget {
  const email({super.key});

  @override
  State<email> createState() => _emailState();
}

class _emailState extends State<email> {
  OtpFieldController otpController = OtpFieldController();
  String otpFinal = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
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
                const Text(
                  "Check Your Message",
                  style: TextStyle(
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
                  "We have sent the reset password OTP to you phone number +91-236548",
                  style: TextStyle(
                    fontFamily: "default",
                    fontSize: 12,
                    // height: 0.9,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff514a6b),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                SvgPicture.asset("assets/email.svg"),
                const SizedBox(
                  height: 8,
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 25,
                ),
                OTPTextField(
                    controller: otpController,
                    length: 6,
                    width: MediaQuery.of(context).size.width,
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldWidth: 45,
                    fieldStyle: FieldStyle.box,
                    outlineBorderRadius: 15,
                    style: const TextStyle(fontSize: 17),
                    onChanged: (pin) {
                      // ignore: avoid_print
                      print("Changed: $pin");
                    },
                    onCompleted: (pin) {
                      // ignore: avoid_print
                      print("Completed: $pin");
                      otpFinal = pin;
                    }),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'Wrong OTP Please Enter A Valid Number',
                  style:
                      TextStyle(color: isOtp == true ? errors : Colors.white),
                ),
                SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    print(otpFinal);
                    if (otpFinal == '123456') {
                      setState(() {
                        isOtp = false;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                updatePassword()), // Replace SecondPage with the actual widget representing the second page
                      );
                    } else {
                      setState(() {
                        isOtp = true;
                      });
                    }
                  },
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
                        'Submit OTP',
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
                const SizedBox(
                  height: 20,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text(
                    "You have not received the SMS?   ",
                    style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 12,
                      fontFamily: 'default',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const Signup()), // Replace SecondPage with the actual widget representing the second page
                      );
                    },
                    child: const Text(
                      "Resend",
                      style: TextStyle(
                        color: Color(0xFFFF9228),
                        fontSize: 12,
                        fontFamily: 'default',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xFFFF9228),
                        height: 0,
                      ),
                    ),
                  ),
                ]),
              ]),
            ),
          ),
        ));
  }
}
