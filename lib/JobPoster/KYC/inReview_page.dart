import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InReviewPage extends StatefulWidget {
  const InReviewPage({Key? key}) : super(key: key);

  @override
  State<InReviewPage> createState() => _InReviewPageState();
}

class _InReviewPageState extends State<InReviewPage> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
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
                      SizedBox(height: mQuery.size.height * 0.03),
                      Padding(
                        padding:
                            EdgeInsets.only(left: mQuery.size.width * 0.045),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: SvgPicture.asset(
                              "assets/JPImages/kycImages/ArrowBack.svg"),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Document Uploaded",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'RobotoBold',
                          ),
                        ),
                      ),
                      SizedBox(height: mQuery.size.height * 0.018),
                      Center(
                        child: Text(
                          "In Review",
                          style: TextStyle(
                            color: Color(0xffFC4646),
                            fontSize: 20,
                            fontFamily: 'RobotoBold',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width * 0.045),
                  child: Column(
                    children: [
                      SizedBox(
                        height: mQuery.size.height * 0.1,
                      ),
                      Center(
                        child: SvgPicture.asset(
                            "assets/JPImages/kycImages/illustration.svg"),
                      ),
                      SizedBox(
                        height: mQuery.size.height * 0.03,
                      ),
                      Center(
                        child: Text(
                          "In Review",
                          style: TextStyle(
                              color: Color(0xff3A3452),
                              fontSize: 16,
                              fontFamily: 'RobotoBold'),
                        ),
                      ),
                      SizedBox(
                        height: mQuery.size.height * 0.023,
                      ),
                      Center(
                        child: Text(
                          "Congratulations, Documents Uploaded Successfully",
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'RobotoRegular',
                              color: Color(0xff524B6B)),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Please Wait While We Review Your Documents",
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'RobotoRegular',
                              color: Color(0xff524B6B)),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Usually Take 2-3 Business Days",
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'RobotoRegular',
                              color: Color(0xff524B6B)),
                        ),
                      ),
                      SizedBox(
                        height: mQuery.size.height * 0.045,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: mQuery.size.width * 0.065),
                        child: Column(
                          children: [
                            GestureDetector(
                              // onTap: (){
                              //   Navigator.push(context,
                              //             MaterialPageRoute(builder: (context) {
                              //           return DocVerificationP1();
                              //         }));
                              // },
                              child: Container(
                                width: double.infinity,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Color(0xffFFD6AD)),
                                child: Center(
                                  child: Text(
                                    "CONTACT US",
                                    style: TextStyle(
                                        color: Color(0xff130160),
                                        fontFamily: 'RobotoBold'),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: mQuery.size.height * 0.023,
                            ),
                            Container(
                              width: double.infinity,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Color(0xff130160)),
                              child: Center(
                                child: Text(
                                  "RE UPLOAD DOCS",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'RobotoBold'),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
