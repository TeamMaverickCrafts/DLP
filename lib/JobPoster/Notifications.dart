import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  int? _selectedIndex;

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      body: Column(
        children: [
          SizedBox(height: mQuery.size.height * 0.023),
          Container(
            width: double.infinity,
            height: mQuery.size.height * 0.075,
            padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.05),
            child: Row(
              children: [
                GestureDetector(
                  onTap : ()
                  {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(
                    "assets/JPImages/kycImages/ArrowBack.svg",
                    color: Color(0xff524B6B),
                  ),
                ),
                Expanded(child: SizedBox()),
                Text(
                  "Read all",
                  style: TextStyle(
                    color: Color(0xffFF9228),
                    fontSize: 12,
                    fontFamily: 'RobotoBold',
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "Notifications",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff150B3D),
                        fontFamily: 'RobotoBold',
                      ),
                    ),
                  ),
                  SizedBox(height: mQuery.size.height * 0.04),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.05),
                    child: Column(
                      children: [
                        buildNotificationContainer(
                          mQuery,
                          "Job About To Fill",
                          "Please Check the Chef-Chinese job \nits about to fill, Shortlist the applicant",
                          "assets/JPImages/profileImages/tajImage.png",
                          "Application details",
                          "25 min",
                          0,
                        ),
                        SizedBox(height: mQuery.size.height * 0.023),
                        buildNotificationContainer(
                          mQuery,
                          "Your post notification",
                          "Hritik, and 10+ new people are \ninterested for Chef in Mumbai, U.K",
                          "assets/Components/klm.png",
                          "Add new job",
                          "1 Hour",
                          1,
                        ),
                        SizedBox(height: mQuery.size.height * 0.023),
                        buildNotificationContainer(
                          mQuery,
                          "Job Completed",
                          "Assistant Manager ODC has been \ncompleted check the results.",
                          "assets/JPImages/profileImages/tajImage.png",
                          "See job",
                          "6 Hours",
                          2,
                        ),
                        SizedBox(height: mQuery.size.height * 0.023),
                        buildNotificationContainer(
                          mQuery,
                          "New ODC Request Accepted",
                          "Hritick Chauhan has accepted the \ncustom ODC for the event please \ncheck the message section",
                          "assets/Components/klm.png",
                          "Messages",
                          "6 Hours",
                          3,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildNotificationContainer(
      MediaQueryData mQuery,
      String title,
      String description,
      String imageUrl,
      String action,
      String time,
      int index,
      ) {
    bool isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        width: double.infinity,
        height: mQuery.size.height * 0.17,
        padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.03),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xffece8fa) : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(imageUrl),
                ),
                SizedBox(width: mQuery.size.width * 0.016),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Color(0xff150B3D),
                        fontFamily: 'RobotoBold',
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Color(0xff524B6B),
                          fontSize: 12,
                          fontFamily: 'RobotoRegular',
                        ),
                        children: [
                          TextSpan(
                            text: description,
                            style: TextStyle(
                              color: Color(0xff524B6B),
                              fontSize: 12,
                              fontFamily: 'RobotoRegular',
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: mQuery.size.height * 0.013),
                  ],
                ),
                Expanded(child: SizedBox()),
                Icon(Icons.more_vert)
              ],
            ),
            Row(
              children: [
                Container(
                  width: mQuery.size.width * 0.36,
                  height: 30,
                  margin: EdgeInsets.only(left: mQuery.size.width * 0.125),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xff150B3D)),
                  ),
                  child: Center(
                    child: Text(
                      action,
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff150B3D),
                        fontFamily: 'RobotoRegular',
                      ),
                    ),
                  ),
                ),
                Expanded(child: SizedBox()),
                Text(
                  time,
                  style: TextStyle(
                    color: Color(0xffAAA6B9),
                    fontSize: 10,
                    fontFamily: 'RobotoMedium',
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
