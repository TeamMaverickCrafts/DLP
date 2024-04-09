import 'package:daily_lancers/AppSettings/UpdatePass.dart';
import 'package:daily_lancers/Auth/forgot_otp.dart';
import 'package:daily_lancers/SplashScreen/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _isToggled = true;
  bool _istoggleddarkmode = false;
  Widget _logOut(BuildContext context) {
    bool _isChecked = false;

    return Container(
        height: MediaQuery.of(context).size.height * 0.37,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        child: Column(children: [
          const SizedBox(
            height: 10.0,
          ),
          Container(
            height: 5.0,
            width: 50.0,
            decoration: const BoxDecoration(
              color: Color(0xFF130160),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          const Text(
            "Log out",
            style: TextStyle(
              color: Color(0xff150B3D),
              fontSize: 22,
              fontFamily: "RobotoBold",
              height: 1.0,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          const Text(
            "Are you sure you want to leave?",
            style: TextStyle(
              color: Color(0xff524B6B),
              fontSize: 14,
              fontFamily: "RobotoRegular",
              height: 1.0,
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const SplashScreen()), // Replace SecondPage with the actual widget representing the second page
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: ShapeDecoration(
                  color: const Color(0xFF130160),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x2D99AAC5),
                      blurRadius: 62,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    'YES',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'RobotoBold',
                      fontWeight: FontWeight.w700,
                      height: 0,
                      letterSpacing: 0.84,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const SplashScreen()), // Replace SecondPage with the actual widget representing the second page
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: ShapeDecoration(
                  color: const Color(0xFFD6CDFE),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x2D99AAC5),
                      blurRadius: 62,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    'CANCEL',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'RobotoBold',
                      fontWeight: FontWeight.w700,
                      height: 0,
                      letterSpacing: 0.84,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF9F9F9),
        leading: const Icon(Icons.arrow_back),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color(0xFFF9F9F9),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
              const Row(
                children: [
                  Text(
                    "Settings",
                    style: TextStyle(
                      color: Color(0xFF150A33),
                      fontSize: 18,
                      fontFamily: "RobotoBold",
                      height: 1.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              //Notification
              Container(
                height: 50,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.notifications_none_rounded,
                          color: Color(0xFF3B4657),
                          size: 30,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "Notifications",
                          style: TextStyle(
                            color: Color(0xFF150A33),
                            fontSize: 14,
                            fontFamily: "RobotoRegular",
                            height: 1.0,
                          ),
                        ),
                      ],
                    ),
                    Switch(
                      value: _isToggled,
                      onChanged: (value) {
                        setState(() {
                          _isToggled = value;
                        });
                      },
                      activeTrackColor: const Color(0xFF56CD54),
                      activeColor: const Color(0xFFfffff),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              //Dark Mode
              Container(
                height: 50,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.dark_mode_outlined,
                          color: Color(0xFF3B4657),
                          size: 30,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "Dark Mode",
                          style: TextStyle(
                            color: Color(0xFF150A33),
                            fontSize: 14,
                            fontFamily: "RobotoRegular",
                            height: 1.0,
                          ),
                        ),
                      ],
                    ),
                    Switch(
                      value: _istoggleddarkmode,
                      onChanged: (value) {
                        setState(() {
                          _istoggleddarkmode = value;
                        });
                      },
                      activeTrackColor: const Color(0xFF56CD54),
                      activeColor: const Color(0xFFfffff),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              //Password
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            updatePassInApp()), // Replace NextPage with your desired page
                  );
                },
                child: Container(
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.lock_outline_rounded,
                            color: Color(0xFF3B4657),
                            size: 30,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "Password",
                            style: TextStyle(
                              color: Color(0xFF150A33),
                              fontSize: 14,
                              fontFamily: "RobotoRegular",
                              height: 1.0,
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Color(0xFF3B4657),
                        size: 20,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              //Logout
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return _logOut(context);
                    },
                  );
                },
                child: Container(
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.logout_outlined,
                            color: Color(0xFF3B4657),
                            size: 30,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "Logout",
                            style: TextStyle(
                              color: Color(0xFF150A33),
                              fontSize: 14,
                              fontFamily: "RobotoRegular",
                              height: 1.0,
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Color(0xFF3B4657),
                        size: 20,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              //Help
              Container(
                height: 50,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.help_outline_rounded,
                          color: Color(0xFF3B4657),
                          size: 30,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "Help Center",
                          style: TextStyle(
                            color: Color(0xFF150A33),
                            fontSize: 14,
                            fontFamily: "RobotoRegular",
                            height: 1.0,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Color(0xFF3B4657),
                      size: 20,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              //privacy
              Container(
                height: 50,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.privacy_tip_outlined,
                          color: Color(0xFF3B4657),
                          size: 30,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "Privacy Policies",
                          style: TextStyle(
                            color: Color(0xFF150A33),
                            fontSize: 14,
                            fontFamily: "RobotoRegular",
                            height: 1.0,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Color(0xFF3B4657),
                      size: 20,
                    )
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
