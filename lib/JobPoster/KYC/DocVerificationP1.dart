
import 'package:daily_lancers/JobPoster/KYC/selectDocumentPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinput/pinput.dart';

import '../../filters/filter.dart';

class DocVerificationP1 extends StatefulWidget {
  const DocVerificationP1({super.key});

  @override
  State<DocVerificationP1> createState() => _DocVerificationP1State();
}

class _DocVerificationP1State extends State<DocVerificationP1> {
  TextEditingController emailController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    final defaultPinTheme = PinTheme(
        width: mQuery.size.width * 0.2,
        height: mQuery.size.height * 0.065,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Color(0xff524B6B)
          )
        ),
        textStyle: TextStyle(
            fontSize: 26,
            fontFamily: 'RobotoBold'
        )
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xfff9f9f9),
      body: Column(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 149,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
                color: Color(0xff0D0140),
              ),
              child: Stack(
                children: [
                  SvgPicture.asset(
                    "assets/Components/homemain.svg",
                    fit: BoxFit.fill,
                  ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: mQuery.size.height*0.03,),
                  Padding(
                    padding: EdgeInsets.only(
                        left: mQuery.size.width*0.045
                    ),
                    child: SvgPicture.asset("assets/JPImages/kycImages/ArrowBack.svg"),
                  ),
                  Center(
                    child: Text("Document Verification",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'RobotoBold'
                    ),),
                  ),
                  SizedBox(height: mQuery.size.height*0.018,),
                  Center(
                    child: Text("Phase 1",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'RobotoBold'
                    ),),)
                ],
              ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width*0.045
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: mQuery.size.height*0.023,),
                        Text("Email ID*",style: TextStyle(
                          color: Color(0xff150B3D),
                          fontFamily: 'RobotoBold'
                        ),),
                        SizedBox(height: mQuery.size.height*0.012,),
                        Container(
                          width: double.infinity,
                          height: 40,
                          padding: EdgeInsets.only(
                            left: 16
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: TextField(
                            controller: emailController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                            cursorColor: Colors.grey,
                          ),
                        ),
                        SizedBox(height: mQuery.size.height*0.026,),
                        Container(
                          width: double.infinity,
                          height: 50,
                          margin: EdgeInsets.symmetric(
                            horizontal: mQuery.size.width*0.022
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xff130160),
                            borderRadius: BorderRadius.circular(6)
                          ),
                          child: Center(
                            child: Text("SEND OTP",style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'RobotoBold'
                            ),),
                          ),
                        ),
                        SizedBox(height: mQuery.size.height*0.03,),
                        Text("Please Enter The OTP",style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'RobotoMedium',
                        ),),
                        SizedBox(height: mQuery.size.height*0.023,),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: mQuery.size.width*0.022
                          ),
                          child: Pinput(
                            controller: otpController,
                            length: 6,
                            defaultPinTheme: defaultPinTheme,
                          ),
                        ),
                        SizedBox(height: mQuery.size.height*0.023,),
                        Center(
                          child: Text("Wrong OTP Please Enter A Valid Number",style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'RobotoMedium',
                            color: Color(0xffFC4646)
                          ),),
                        ),

                      ],
                    ),
                  ),
                ),
                Expanded(child: SizedBox()),
                Center(
                  child: Text.rich(
                    TextSpan(
                        children: [
                          TextSpan(text: "You have not received the SMS? ",style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'RobotoMedium',
                              color: Colors.black
                          )),
                          TextSpan(text: "Resend",style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'RobotoMedium',
                              color: Color(0xffFF9228),
                            decoration: TextDecoration.underline,
                            decorationColor: Color(0xffFF9228),
                          ))
                        ]
                    ),
                  ),
                ),
                SizedBox(height: mQuery.size.height*0.023,)
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 78,
            color: Colors.white,
            padding: EdgeInsets.symmetric(
                horizontal: mQuery.size.width*0.045
            ),
            child: GestureDetector(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return SelectDocumentPage();
                }));
              },
              child: Container(
                width: double.infinity,
                margin : EdgeInsets.symmetric(
                    horizontal: mQuery.size.width*0.022,
                    vertical: mQuery.size.height*0.018
                ),
                decoration: BoxDecoration(
                    color: Color(0xff130160),
                    borderRadius: BorderRadius.circular(6)
                ),
                child: Center(
                  child: Text("SUBMIT OTP",style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'RobotoBold',
                  ),),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


