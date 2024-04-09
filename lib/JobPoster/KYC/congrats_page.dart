import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CongratsPage extends StatefulWidget {
  const CongratsPage({Key? key}) : super(key: key);

  @override
  State<CongratsPage> createState() => _CongratsPageState();
}

class _CongratsPageState extends State<CongratsPage> {

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 149,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/JPImages/kycImages/purpleBg.jpeg"),
              ),
            ),
            child: Column(
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
                    "Document Uploaded",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'SatoshiBold',
                    ),
                  ),
                ),
                SizedBox(height: mQuery.size.height * 0.018),
                Center(
                  child: Text(
                    "Verified",
                    style: TextStyle(
                      color: Color(0xff71F68E),
                      fontSize: 20,
                      fontFamily: 'SatoshiBold',
                    ),
                  ),
                ),
              ],
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
                      SizedBox(height: mQuery.size.height*0.15,),
                      Center(
                        child: SvgPicture.asset("assets/JPImages/kycImages/illustration.svg"),
                      ),
                      SizedBox(height: mQuery.size.height*0.03,),
                      Center(
                        child: Text("Successful",style: TextStyle(
                            color: Color(0xff3A3452),
                            fontSize: 16,
                            fontFamily: 'SatoshiBold'
                        ),),
                      ),
                      SizedBox(height: mQuery.size.height*0.023,),
                      Center(
                        child: Text("Congratulations, Documents Verified",style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'SatoshiRegular',
                            color: Color(0xff524B6B)
                        ),),
                      ),
                      SizedBox(height: mQuery.size.height*0.075,),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: mQuery.size.width*0.065
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Color(0xffFFD6AD)
                              ),
                              child: Center(
                                child: Text("GO TO HOMEPAGE",style: TextStyle(
                                    color: Color(0xff130160),
                                    fontFamily: 'SatoshiBold'
                                ),),
                              ),
                            ),
                            SizedBox(height: mQuery.size.height*0.023,),
                            Container(
                              width: double.infinity,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Color(0xff130160)
                              ),
                              child: Center(
                                child: Text("CHECK PROFILE",style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'SatoshiBold'
                                ),),
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


