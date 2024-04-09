import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class success extends StatefulWidget {
  const success({super.key});

  @override
  State<success> createState() => _successState();
}

class _successState extends State<success> {
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
                "Successfully",
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
                "Your password has been updated, please change your password regularly to avoid this happening",
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
                height: 50,
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.28,
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: SvgPicture.asset(
                    "assets/success.svg",
                    fit: BoxFit.cover,
                  )),
              const SizedBox(
                height: 8,
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 80,
              ),
              Container(
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
                    'CONTINUE',
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
