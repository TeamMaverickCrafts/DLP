import 'package:daily_lancers/BottomNav/BottomNav.dart';
import 'package:daily_lancers/Chat/UserChat.dart';
import 'package:daily_lancers/HomePage/listview.dart';
import 'package:daily_lancers/JobPoster/AddJob/add_a_job.dart';
import 'package:daily_lancers/JobPoster/KYC/DocVerificationP1.dart';
import 'package:daily_lancers/JobPoster/KYC/inReview_page.dart';
import 'package:daily_lancers/JobPoster/Notifications.dart';
import 'package:daily_lancers/Profile/profile.dart';
import 'package:daily_lancers/DemoAPIData/demodata.dart';
import 'package:daily_lancers/SplashScreen/splash.dart';
import 'package:daily_lancers/filters/filter.dart';
import 'package:daily_lancers/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import 'jp_home_components.dart';

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
  // setState(() {});
}

final List<Map<String, dynamic>> demoData = [
  {
    'profileImage': "assets/JPImages/profileImages/tajImage.png",
    'title': "Chef-Chinese",
    'jobID': "JOB ID - 001",
    'cancelImage': "assets/JPImages/profileImages/Cancel.png",
    'applicantsIcon': "assets/JPImages/dashboardImages/applicantsIcon.svg",
    'date': "04/05",
    'calenderIcon': "assets/JPImages/dashboardImages/calenderIcon.svg",
    'eventDate': "10 October",
    'clockIcon': "assets/Components/clock.svg",
    'time': "12:00 pm",
    'vehicleIcon': "assets/JPImages/dashboardImages/vehicle.svg",
    'availability': "Available",
    'applicantsImage': "assets/JPImages/dashboardImages/apl.png",
    'editImage': "assets/JPImages/dashboardImages/Edit.png",
    'previewImage': "assets/JPImages/dashboardImages/Eye.png",
  },
  // Add more map entries for additional data...
];

List<Map<String, dynamic>> filteredList = [];

class JPHome extends StatefulWidget {
  const JPHome({Key? key}) : super(key: key);

  @override
  State<JPHome> createState() => _JPHomeState();
}


class _JPHomeState extends State<JPHome> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    filteredList.clear();
    filteredList.addAll(demoData);
  }



  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: isPost !=null ? isPostWidget(context) : Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // isPost is a variable that is declared in the AddaJob Page , it is used to track that if we tap in the Post in AddaJob
                  // page then it navigate to Jphomepage and then it will show the listview.builder
                  inReview == "InReview" ? Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: mQuery.size.width*0.055
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: mQuery.size.height*0.4,),
                        Text("Active Jobs",style: TextStyle(
                            color: Color(0xff150B3D),
                            fontSize: 16,
                            fontFamily: 'RobotoBold'
                        ),),
                        SizedBox(height: mQuery.size.height*0.085,),

                        GestureDetector(
                          onTap: ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return AddaJob();
                            }));
                          },
                          child: Container(
                            width: double.infinity,
                            height: mQuery.size.height*0.2,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: mQuery.size.height*0.04,),
                                Text("No Active Jobs",style: TextStyle(
                                    color: Color(0xff150B3D),
                                    fontFamily: 'RobotoMedium',
                                    fontSize: 15
                                ),),
                                SizedBox(height: mQuery.size.height*0.03,),
                                Container(
                                  width: mQuery.size.width*0.46,
                                  height: mQuery.size.height*0.05,
                                  decoration: BoxDecoration(
                                      color: Color(0xff5B4E91),
                                      borderRadius: BorderRadius.circular(6)
                                  ),
                                  child: Center(
                                    child: Text("POST A JOB",style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'RobotoBold',
                                    ),),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                      :
                  splash == "Splash" ? (store.read("ankit") == "signin" ||
                      store.read("ankit") == "signup")
                      ? Center(
                    child: Column(
                      children: [
                        SizedBox(height: mQuery.size.height * 0.45),
                        SvgPicture.asset(
                            "assets/JPImages/dashboardImages/empty.svg"),
                        SizedBox(
                          height: mQuery.size.height * 0.06,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return DocVerificationP1();
                                }));
                          },
                          child: Container(
                            width: double.infinity,
                            height: 45,
                            margin: EdgeInsets.symmetric(
                                horizontal: mQuery.size.width * 0.16),
                            decoration: BoxDecoration(
                                color: Color(0xffFFD6AD),
                                borderRadius: BorderRadius.circular(6)),
                            child: Center(
                              child: Text(
                                "Please complete your kyc",
                                style: TextStyle(
                                    color: Color(0xff130160),
                                    fontFamily: 'RobotoBold'),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                      : (store.read("ankit") == "signinIndv" ||
                      store.read("ankit") == "signupIndv")
                      ? Center(
                    child: Column(
                      children: [
                        SizedBox(height: mQuery.size.height * 0.45),
                        SvgPicture.asset(
                            "assets/JPImages/dashboardImages/empty.svg"),
                        SizedBox(
                          height: mQuery.size.height * 0.06,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return DocVerificationP1();
                                }));
                          },
                          child: Container(
                            width: double.infinity,
                            height: 45,
                            margin: EdgeInsets.symmetric(
                                horizontal: mQuery.size.width * 0.16),
                            decoration: BoxDecoration(
                                color: Color(0xffFFD6AD),
                                borderRadius:
                                BorderRadius.circular(6)),
                            child: Center(
                              child: Text(
                                "Please complete your kyc",
                                style: TextStyle(
                                    color: Color(0xff130160),
                                    fontFamily: 'RobotoBold'),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                      : Demo()

                      :  Center(
                    child: Column(
                      children: [
                        SizedBox(height: mQuery.size.height * 0.45),
                        SvgPicture.asset(
                            "assets/JPImages/dashboardImages/empty.svg"),
                        SizedBox(
                          height: mQuery.size.height * 0.06,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return DocVerificationP1();
                                }));
                          },
                          child: Container(
                            width: double.infinity,
                            height: 45,
                            margin: EdgeInsets.symmetric(
                                horizontal: mQuery.size.width * 0.16),
                            decoration: BoxDecoration(
                                color: Color(0xffFFD6AD),
                                borderRadius:
                                BorderRadius.circular(6)),
                            child: Center(
                              child: Text(
                                "Please complete your kyc",
                                style: TextStyle(
                                    color: Color(0xff130160),
                                    fontFamily: 'RobotoBold'),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
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
                    "assets/Components/JPHomemain.svg",
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
                                  "Welcome, TAJ HOTEL",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "RobotoMedium",
                                    height: 1.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap : ()
                                  {
                                    Navigator.push(context, MaterialPageRoute(builder: (context){
                                      return Notifications();
                                    }));
                                  },
                                  child: SvgPicture.asset(
                                    "assets/Components/Notifications.svg",
                                    height: 25.0,
                                    width: 25.0,
                                  ),
                                ),
                                const SizedBox(
                                  width: 12.0,
                                ),
                                Image.asset("assets/JPImages/profileImages/tajImage.png",width: mQuery.size.width*0.1,),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Row(
                          children: [
                            (store.read("ankit") == "signup")
                                ? Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "JOB UPDATES",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'RobotoBold',
                                      color: Colors.white),
                                ),
                              ],
                            )
                                : Text(
                              "JOB UPDATES",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                                fontFamily: "RobotoBold",
                                height: 1.3,
                              ),
                            ),
                          ],
                        ),
                        Expanded(child: SizedBox()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.75,
                              height: MediaQuery.of(context).size.height * 0.0515,
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
                              onTap: () {
                                // Navigator.push(context,
                                //     MaterialPageRoute(builder: (context) {
                                //       return Filter();
                                //     }));
                              },
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xffFF9228)
                                ),
                                child: Center(
                                  child: SvgPicture.asset("assets/Components/filterPart.svg"),
                                ),
                              ),
                            )
                            // GestureDetector(
                            //   // Filter
                            //   child: GestureDetector(

                            //     child: SvgPicture.asset(
                            //       "assets/Components/Filter.svg",
                            //       height:
                            //           MediaQuery.of(context).size.height * 0.1,
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                        SizedBox(height: mQuery.size.height*0.032,)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ) ,
    );
  }

}
