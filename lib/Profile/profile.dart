import 'package:daily_lancers/AppSettings/Settings.dart';
import 'package:daily_lancers/HomePage/HomePage.dart';
import 'package:daily_lancers/HomePage/JobDescription/Job_Description.dart';
import 'package:daily_lancers/Profile/EditProfile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    // make scrolling interactive
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.37,
                  ),
                  Container(
                    height: 80,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset('assets/profile/1.svg'),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Required document for ODC*',
                                style: TextStyle(
                                  fontFamily: 'RobotoBold',
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                          SvgPicture.asset('assets/profile/forward.svg'),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 80,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset('assets/profile/2.svg'),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'About me',
                                style: TextStyle(
                                  fontFamily: 'RobotoBold',
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                          SvgPicture.asset('assets/profile/Add.svg'),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 80,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset('assets/profile/3.svg'),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Work experience',
                                style: TextStyle(
                                  fontFamily: 'RobotoBold',
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                          SvgPicture.asset('assets/profile/Add.svg'),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 80,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset('assets/profile/4.svg'),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Education',
                                style: TextStyle(
                                  fontFamily: 'RobotoBold',
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                          SvgPicture.asset('assets/profile/Add.svg'),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 80,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset('assets/profile/5.svg'),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Skill',
                                style: TextStyle(
                                  fontFamily: 'RobotoBold',
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                          SvgPicture.asset('assets/profile/Add.svg'),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 80,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset('assets/profile/6.svg'),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Language',
                                style: TextStyle(
                                  fontFamily: 'RobotoBold',
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                          SvgPicture.asset('assets/profile/Add.svg'),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 80,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset('assets/profile/7.svg'),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Job Details',
                                style: TextStyle(
                                  fontFamily: 'RobotoBold',
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                          SvgPicture.asset('assets/profile/forward.svg'),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 80,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset('assets/profile/8.svg'),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Resume',
                                style: TextStyle(
                                  fontFamily: 'RobotoBold',
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                          SvgPicture.asset('assets/profile/Add.svg'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.35,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
              color: Color(0xff0D0140),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset(
              "assets/Components/homemain.svg",
              height: MediaQuery.of(context).size.height * 0.38,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.white,
                          child: ClipOval(
                            child: Image.asset(
                              "assets/profile/ProfilePic.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/profile/Share.svg",
                          height: 25.0,
                          width: 25.0,
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        GestureDetector(
                          onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const Settings()), // Replace NextPage with your desired page
                          );
                        },
                          child: SvgPicture.asset(
                            "assets/profile/Settings.svg",
                            height: 25.0,
                            width: 25.0,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hritik Chauhan",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontFamily: "RobotoMedium",
                        height: 1.0,
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Profile Score",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: "RobotoMedium",
                            height: 1.0,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "100%",
                          style: TextStyle(
                            color: Color(0xFF71F68E),
                            fontSize: 24,
                            fontFamily: "RobotoBold",
                            height: 1.0,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //location
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.white,
                              size: 12.0,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              "Dehradun, India",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: "RobotoRegular",
                                height: 1.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 7.0),
                        //mail
                        Row(
                          children: [
                            Icon(
                              Icons.mail_outline_rounded,
                              color: Colors.white,
                              size: 12.0,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              "maverickcrafts@gmail.com",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: "RobotoRegular",
                                height: 1.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 7.0),
                        //call
                        Row(
                          children: [
                            Icon(
                              Icons.call_outlined,
                              color: Colors.white,
                              size: 12.0,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              "+91 7302622997",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: "RobotoRegular",
                                height: 1.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    //editprofilebutton

                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const EditProfile()), // Replace NextPage with your desired page
                          );
                        },
                        child: SvgPicture.asset(
                            'assets/profile/editprofilebutton.svg')),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
