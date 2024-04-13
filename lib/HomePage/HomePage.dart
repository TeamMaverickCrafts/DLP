import 'package:daily_lancers/BottomNav/BottomNav.dart';
import 'package:daily_lancers/Chat/UserChat.dart';
import 'package:daily_lancers/HomePage/listview.dart';
import 'package:daily_lancers/JobPoster/KYC/DocVerificationP1.dart';
import 'package:daily_lancers/Profile/profile.dart';
import 'package:daily_lancers/DemoAPIData/demodata.dart';
import 'package:daily_lancers/filters/filter.dart';
import 'package:daily_lancers/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

List<Map<String, dynamic>> filteredList = [];

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    filteredList.clear();
    filteredList.addAll(demoData);
  }

  void filterData(String query) {
    filteredList.clear();
    if (query.isNotEmpty) {
      demoData.forEach((item) {
        if (item['title'].toLowerCase().contains(query.toLowerCase()) ||
            item['location'].toLowerCase().contains(query.toLowerCase())) {
          filteredList.add(item);
        }
      });
    } else {
      filteredList.addAll(demoData);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // (store.read("ankit") == "signup") ? Center(
                  //   child: Column(
                  //     children: [
                  //       SizedBox(height: mQuery.size.height*0.45),
                  //       SvgPicture.asset("assets/JPImages/dashboardImages/empty.svg"),
                  //       SizedBox(height: mQuery.size.height*0.06,),
                  //       GestureDetector(
                  //         onTap: () {
                  //           Navigator.push(context, MaterialPageRoute(builder: (context){
                  //             return DocVerificationP1();
                  //           }));
                  //         },
                  //         child: Container(
                  //           width: double.infinity,
                  //           height: 45,
                  //           margin: EdgeInsets.symmetric(
                  //               horizontal: mQuery.size.width*0.16
                  //           ),
                  //           decoration: BoxDecoration(
                  //               color: Color(0xffFFD6AD),
                  //               borderRadius: BorderRadius.circular(6)
                  //           ),
                  //           child: Center(
                  //             child: Text("Please complete your kyc",
                  //               style: TextStyle(
                  //                   color: Color(0xff130160),
                  //                   fontFamily: 'RobotoBold'
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // ) : (store.read("ankit") == "signin") ? Demo() : Container(),
                  // (store.read("ankit") == "signupIndv") ? Center(
                  //   child: Column(
                  //     children: [
                  //       SizedBox(height: mQuery.size.height*0.45),
                  //       SvgPicture.asset("assets/JPImages/dashboardImages/empty.svg"),
                  //       SizedBox(height: mQuery.size.height*0.06,),
                  //       GestureDetector(
                  //         onTap: () {
                  //           Navigator.push(context, MaterialPageRoute(builder: (context){
                  //             return DocVerificationP1();
                  //           }));
                  //         },
                  //         child: Container(
                  //           width: double.infinity,
                  //           height: 45,
                  //           margin: EdgeInsets.symmetric(
                  //               horizontal: mQuery.size.width*0.16
                  //           ),
                  //           decoration: BoxDecoration(
                  //               color: Color(0xffFFD6AD),
                  //               borderRadius: BorderRadius.circular(6)
                  //           ),
                  //           child: Center(
                  //             child: Text("Please complete your kyc",
                  //               style: TextStyle(
                  //                   color: Color(0xff130160),
                  //                   fontFamily: 'RobotoBold'
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // ) : (store.read("ankit") == "signinIndv") ? Demo() : Demo()

                  (store.read("ankit") == "signin" || store.read("ankit") == "signup") ? Center(
                    child: Column(
                      children: [
                        SizedBox(height: mQuery.size.height*0.45),
                        SvgPicture.asset("assets/JPImages/dashboardImages/empty.svg"),
                        SizedBox(height: mQuery.size.height*0.06,),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return DocVerificationP1();
                            }));
                          },
                          child: Container(
                            width: double.infinity,
                            height: 45,
                            margin: EdgeInsets.symmetric(
                                horizontal: mQuery.size.width*0.16
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xffFFD6AD),
                                borderRadius: BorderRadius.circular(6)
                            ),
                            child: Center(
                              child: Text("Please complete your kyc",
                                style: TextStyle(
                                    color: Color(0xff130160),
                                    fontFamily: 'RobotoBold'
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ) : (store.read("ankit") == "signinIndv" || store.read("ankit") == "signupIndv") ? Center(
                    child: Column(
                      children: [
                        SizedBox(height: mQuery.size.height*0.45),
                        SvgPicture.asset("assets/JPImages/dashboardImages/empty.svg"),
                        SizedBox(height: mQuery.size.height*0.06,),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return DocVerificationP1();
                            }));
                          },
                          child: Container(
                            width: double.infinity,
                            height: 45,
                            margin: EdgeInsets.symmetric(
                                horizontal: mQuery.size.width*0.16
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xffFFD6AD),
                                borderRadius: BorderRadius.circular(6)
                            ),
                            child: Center(
                              child: Text("Please complete your kyc",
                                style: TextStyle(
                                    color: Color(0xff130160),
                                    fontFamily: 'RobotoBold'
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ) : Demo(),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.33,
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
                    height: MediaQuery.of(context).size.height * 0.38,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.06,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hi, Hritik Chauhan",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "RobotoMedium",
                                    height: 1.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),

                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: Color(0xFFCFCFD2),
                                      size: 18.0,
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                      "Pune, Maharashtra",
                                      style: TextStyle(
                                        color: Color(0xFFCFCFD2),
                                        fontSize: 13,
                                        fontFamily: "RobotoRegular",
                                        height: 1.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/Components/Notifications.svg",
                                  height: 25.0,
                                  width: 25.0,
                                ),
                                const SizedBox(
                                  width: 12.0,
                                ),
                                CircleAvatar(
                                  radius: 18,
                                  backgroundColor: Colors.white,
                                  child: ClipOval(
                                    child: Image.asset(
                                      "assets/Components/Profile.png",
                                      width: 34,
                                      height: 34,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                         Row(
                          children: [
                            (store.read("ankit") == "signup") ? Column(
                              children: [
                                SizedBox(height: 20,),
                                Text("JOB UPDATES",style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'RobotoBold',
                                  color: Colors.white
                                ),),
                              ],
                            ) :
                            Text(
                              "Find your dream job\nhere!",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                                fontFamily: "RobotoBold",
                                height: 1.3,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.75,
                              height:
                                  MediaQuery.of(context).size.height * 0.0515,
                              child: TextField(
                                onChanged: (value) => filterData(value),
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.search,
                                      color: Color(0xFFA0A7B1)),
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'Search',
                                  hintStyle: const TextStyle(
                                    color: Color(0xFFA0A7B1),
                                    fontSize: 13,
                                    fontFamily: "RobotoMedium",
                                    height: 1.3,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              // Filter
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return Filter();
                                  }));
                                },
                                child: SvgPicture.asset(
                                  "assets/Components/homesetting.svg",
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
