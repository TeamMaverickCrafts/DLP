import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../DemoAPIData/demodata.dart';
import '../../main.dart';
import '../Notifications.dart';
import 'JP_Home.dart';

List<Map<String, dynamic>> demoData = [
  {
    'profileImage': "assets/JPImages/profileImages/tajImage.png",
    'title': "Chef-Chinese",
    'jobId': "JOB ID - 001",
    'cancelImage': "assets/JPImages/profileImages/Cancel.png",
    'applicantsIcon': "assets/JPImages/dashboardImages/applicantsIcon.svg",
    'date': "04/05",
    'calendarIcon': "assets/JPImages/dashboardImages/calenderIcon.svg",
    'calendarDate': "10 October",
    'clockIcon': "assets/Components/clock.svg",
    'time': "12:00 pm",
    'vehicleIcon': "assets/JPImages/dashboardImages/vehicle.svg",
    'availability': "Available",
    'applicantsImage': "assets/JPImages/dashboardImages/apl.png",
    'editImage': "assets/JPImages/dashboardImages/Edit.png",
    'previewImage': "assets/JPImages/dashboardImages/Eye.png",
  },
  {
    'profileImage': "assets/JPImages/profileImages/tajImage.png",
    'title': "Chef-Chinese",
    'jobId': "JOB ID - 001",
    'cancelImage': "assets/JPImages/profileImages/Cancel.png",
    'applicantsIcon': "assets/JPImages/dashboardImages/applicantsIcon.svg",
    'date': "04/05",
    'calendarIcon': "assets/JPImages/dashboardImages/calenderIcon.svg",
    'calendarDate': "10 October",
    'clockIcon': "assets/Components/clock.svg",
    'time': "12:00 pm",
    'vehicleIcon': "assets/JPImages/dashboardImages/vehicle.svg",
    'availability': "Available",
    'applicantsImage': "assets/JPImages/dashboardImages/apl.png",
    'editImage': "assets/JPImages/dashboardImages/Edit.png",
    'previewImage': "assets/JPImages/dashboardImages/Eye.png",
  }, 
  // Add more items as needed
];


Widget isPostWidget(BuildContext context) {
  var mQuery = MediaQuery.of(context);
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
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
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
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
                          Image.asset("assets/JPImages/profileImages/tajImage.png", width: mQuery.size.width * 0.1,),
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
                            prefixIcon: const Icon(Icons.search, color: Color(0xFFA0A7B1)),
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

      Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: mQuery.size.height*0.032,),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16
                ),
                child: Row(
                  children: [
                    Text("Active Jobs",style: TextStyle(
                        color: Color(0xff150B3D),
                        fontSize: 16,
                        fontFamily: 'RobotoBold'
                    ),
                    ),
                    Expanded(child: SizedBox()),
                    Text("See more",style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff524B6B),
                        fontFamily: 'RobotoMedium'
                    ),),
                    Icon(Icons.arrow_forward_ios,size: mQuery.size.height*0.015,),
                    Icon(Icons.arrow_forward_ios,size: mQuery.size.height*0.015,)
                  ],
                ),
              ),
              SizedBox(height: mQuery.size.height*0.032,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(demoData.length, (index) {
                    return Container(
                      width: mQuery.size.width, // Adjust as needed
                      margin: EdgeInsets.only(right: 10.0),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: mQuery.size.height * 0.23,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                // Your container content
                                Container(
                                  height: mQuery.size.height * 0.23,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: mQuery.size.height * 0.01,
                                          left: mQuery.size.width * 0.045,
                                        ),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              "assets/JPImages/profileImages/tajImage.png",
                                              width: mQuery.size.width * 0.1,
                                            ),
                                            SizedBox(width: mQuery.size.width * 0.016),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Chef-Chinese",
                                                  style: TextStyle(
                                                    color: Color(0xff150B3D),
                                                    fontFamily: 'RobotoBold',
                                                  ),
                                                ),
                                                Text(
                                                  "JOB ID - 001",
                                                  style: TextStyle(
                                                    fontSize: 11,
                                                    color: Color(0xff524B6B),
                                                    fontFamily: 'RobotoMedium',
                                                  ),
                                                )
                                              ],
                                            ),
                                            Expanded(child: SizedBox()),
                                            Image.asset("assets/JPImages/profileImages/Cancel.png")
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: mQuery.size.height * 0.01),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: mQuery.size.width * 0.07,
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                SvgPicture.asset(
                                                  "assets/JPImages/dashboardImages/applicantsIcon.svg",
                                                ),
                                                SizedBox(width: mQuery.size.width * 0.016),
                                                Text(
                                                  "04/05",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xff524B6B),
                                                    fontFamily: 'RobotoMedium',
                                                  ),
                                                ),
                                                Expanded(child: SizedBox()),
                                                SvgPicture.asset(
                                                  "assets/JPImages/dashboardImages/calenderIcon.svg",
                                                ),
                                                SizedBox(width: mQuery.size.width * 0.016),
                                                Text(
                                                  "10 October",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xff524B6B),
                                                    fontFamily: 'RobotoMedium',
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                SvgPicture.asset("assets/Components/clock.svg"),
                                                SizedBox(width: mQuery.size.width * 0.016),
                                                Text(
                                                  "12:00 pm",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xff524B6B),
                                                    fontFamily: 'RobotoMedium',
                                                  ),
                                                ),
                                                Expanded(child: SizedBox()),
                                                SvgPicture.asset(
                                                  "assets/JPImages/dashboardImages/vehicle.svg",
                                                ),
                                                SizedBox(width: mQuery.size.width * 0.016),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    right: mQuery.size.width * 0.045,
                                                  ),
                                                  child: Text(
                                                    "Available",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Color(0xff524B6B),
                                                      fontFamily: 'RobotoMedium',
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(child: SizedBox()),
                                      Container(
                                        height: mQuery.size.height * 0.06,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: mQuery.size.width * 0.04,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20),
                                          ),
                                          color: Color(0xff5A4D90),
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset("assets/JPImages/dashboardImages/apl.png"),
                                            Text(
                                              "Applicants",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontFamily: 'RobotoBold',
                                              ),
                                            ),
                                            SizedBox(width: mQuery.size.width * 0.016),
                                            Image.asset("assets/JPImages/dashboardImages/Edit.png"),
                                            Text(
                                              "Edit Job",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontFamily: 'RobotoBold',
                                              ),
                                            ),
                                            SizedBox(width: mQuery.size.width * 0.016),
                                            Image.asset("assets/JPImages/dashboardImages/Eye.png"),
                                            Text(
                                              "Preview Job",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontFamily: 'RobotoBold',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
          

              // Inactive Jobs in JpHomepage
              SizedBox(height: mQuery.size.height*0.045,),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16
                ),
                child: Row(
                  children: [
                    Text("Inactive Jobs",style: TextStyle(
                        color: Color(0xff150B3D),
                        fontSize: 16,
                        fontFamily: 'RobotoBold'
                    ),
                    ),
                    Expanded(child: SizedBox()),
                    Text("See more",style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff524B6B),
                        fontFamily: 'RobotoMedium'
                    ),),
                    Icon(Icons.arrow_forward_ios,size: mQuery.size.height*0.015,),
                    Icon(Icons.arrow_forward_ios,size: mQuery.size.height*0.015,)
                  ],
                ),
              ),
              SizedBox(height: mQuery.size.height*0.032,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(demoData.length, (index) {
                    return Container(
                      width: mQuery.size.width, // Adjust as needed
                      margin: EdgeInsets.only(right: 10.0),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: mQuery.size.height * 0.23,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                // Your container content
                                Container(
                                  height: mQuery.size.height * 0.23,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: mQuery.size.height * 0.01,
                                          left: mQuery.size.width * 0.045,
                                        ),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              "assets/JPImages/profileImages/tajImage.png",
                                              width: mQuery.size.width * 0.1,
                                            ),
                                            SizedBox(width: mQuery.size.width * 0.016),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Waiter",
                                                  style: TextStyle(
                                                    color: Color(0xff150B3D),
                                                    fontFamily: 'RobotoBold',
                                                  ),
                                                ),
                                                Text(
                                                  "JOB ID - 001",
                                                  style: TextStyle(
                                                    fontSize: 11,
                                                    color: Color(0xff524B6B),
                                                    fontFamily: 'RobotoMedium',
                                                  ),
                                                )
                                              ],
                                            ),
                                            Expanded(child: SizedBox()),
                                            Row(
                                              children: [
                                                SvgPicture.asset("assets/JPImages/profileImages/redCircle.svg"),
                                                SizedBox(width: mQuery.size.width*0.032,),
                                                Text("Inactive",style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color(0xff524B6B),
                                                  fontFamily: 'RobotoMedium'
                                                ),)
                                              ],
                                            ),
                                            SizedBox(width: mQuery.size.width*0.023,),
                                            Image.asset("assets/JPImages/profileImages/Cancel.png")
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: mQuery.size.height * 0.01),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: mQuery.size.width * 0.07,
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                SvgPicture.asset(
                                                  "assets/JPImages/dashboardImages/applicantsIcon.svg",
                                                ),
                                                SizedBox(width: mQuery.size.width * 0.016),
                                                Text(
                                                  "04/05",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xff524B6B),
                                                    fontFamily: 'RobotoMedium',
                                                  ),
                                                ),
                                                Expanded(child: SizedBox()),
                                                SvgPicture.asset(
                                                  "assets/JPImages/dashboardImages/calenderIcon.svg",
                                                ),
                                                SizedBox(width: mQuery.size.width * 0.016),
                                                Text(
                                                  "10 October",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xff524B6B),
                                                    fontFamily: 'RobotoMedium',
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                SvgPicture.asset("assets/Components/clock.svg"),
                                                SizedBox(width: mQuery.size.width * 0.016),
                                                Text(
                                                  "12:00 pm",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xff524B6B),
                                                    fontFamily: 'RobotoMedium',
                                                  ),
                                                ),
                                                Expanded(child: SizedBox()),
                                                SvgPicture.asset(
                                                  "assets/JPImages/dashboardImages/vehicle.svg",
                                                ),
                                                SizedBox(width: mQuery.size.width * 0.016),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    right: mQuery.size.width * 0.045,
                                                  ),
                                                  child: Text(
                                                    "Available",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Color(0xff524B6B),
                                                      fontFamily: 'RobotoMedium',
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(child: SizedBox()),
                                      Container(
                                        height: mQuery.size.height * 0.06,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: mQuery.size.width * 0.04,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20),
                                          ),
                                          color: Color(0xff5A4D90),
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset("assets/JPImages/dashboardImages/apl.png"),
                                            Text(
                                              "Applicants",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontFamily: 'RobotoBold',
                                              ),
                                            ),
                                            SizedBox(width: mQuery.size.width * 0.016),
                                            Image.asset("assets/JPImages/dashboardImages/Edit.png"),
                                            Text(
                                              "Edit Job",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontFamily: 'RobotoBold',
                                              ),
                                            ),
                                            SizedBox(width: mQuery.size.width * 0.016),
                                            Image.asset("assets/JPImages/dashboardImages/Eye.png"),
                                            Text(
                                              "Preview Job",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontFamily: 'RobotoBold',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),

              SizedBox(height: mQuery.size.height*0.032,)
            ],
          ),
        ),
      ),


    ],
  );
}