
import 'package:daily_lancers/JobPoster/KYC/gstDetailsPage.dart';
import 'package:daily_lancers/JobPoster/KYC/inReview_page.dart';
import 'package:daily_lancers/JobPoster/KYC/panDetailsPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectDocumentPage extends StatefulWidget {
  const SelectDocumentPage({Key? key}) : super(key: key);

  @override
  State<SelectDocumentPage> createState() => _SelectDocumentPageState();
}

class _SelectDocumentPageState extends State<SelectDocumentPage> {
  int selectedIndex = -1; // Initially no container is selected

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
                        padding: EdgeInsets.only(left: mQuery.size.width * 0.045),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: SvgPicture.asset("assets/JPImages/kycImages/ArrowBack.svg"),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Document Verification",
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
                          "Phase 2",
                          style: TextStyle(
                            color: Colors.white,
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
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width * 0.045),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: mQuery.size.height * 0.045),
                        Center(
                          child: Text(
                            "Please Select Any One ",
                            style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'RobotoBold',
                                color: Color(0xff130160)),
                          ),
                        ),
                        Center(
                          child: Text(
                            "Document To Upload",
                            style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'RobotoBold',
                                color: Color(0xff130160)),
                          ),
                        ),
                        SizedBox(height: mQuery.size.height * 0.03),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: mQuery.size.width * 0.045,
                          ),
                          child: Column(
                            children: [
                              buildDocumentContainer("GST", 0, mQuery),
                              SizedBox(height: mQuery.size.height * 0.03),
                              buildDocumentContainer("PAN", 1, mQuery),
                              SizedBox(height: mQuery.size.height * 0.03),
                              buildDocumentContainer("OTHERS", 2, mQuery),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDocumentContainer(
      String text, int index, MediaQueryData mQuery) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
        if (text == "GST") {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GSTDetailsPage(),
            ),
          );
        }
        else if (text == "PAN") {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PANDetailsPage(),
            ),
          );
        }
        else if(text == "OTHERS") {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => InReviewPage(),
            ),
          );
        }
      },
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: selectedIndex == index
              ? Color(0xff130160) // Selected container style
              : Color(0xffD6CDFE), // Unselected container style
          borderRadius: BorderRadius.circular(6),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: selectedIndex == index ? Colors.white : Color(0xff130160),
              fontFamily: 'RobotoBold',
            ),
          ),
        ),
      ),
    );
  }
}


