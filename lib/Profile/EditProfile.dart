import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  int selectedGender = 0;

  @override
  Widget build(BuildContext context) {
    // make scrolling interactive
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Colors.white,
      //   type: BottomNavigationBarType.fixed,
      //   selectedItemColor: const Color(0xFF8DC73F),
      //   unselectedItemColor: Colors.white,
      //   iconSize: 30.0,
      //   currentIndex: _currentIndex,
      //   onTap: (index) {
      //     setState(() {
      //       _currentIndex = index;
      //     });
      //     if (_currentIndex == 0) {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //             builder: (context) =>
      //                 home()), // Replace SecondPage with the actual widget representing the second page
      //       );
      //     } else if (_currentIndex == 1) {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //             builder: (context) =>
      //                 profile()), // Replace SecondPage with the actual widget representing the second page
      //       );
      //     }
      //   },
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset(
      //         'assets/Components/BottomNav/1.svg',
      //         width: 26,
      //         height: 26,
      //         color: _currentIndex == 0
      //             ? const Color(0xFFFF9228)
      //             : Color(0xFFA49EB5),
      //       ),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset(
      //         'assets/Components/BottomNav/2.svg',
      //         width: 26,
      //         height: 26,
      //         color: _currentIndex == 1
      //             ? const Color(0xFFFF9228)
      //             : Color(0xFFA49EB5),
      //       ),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Container(
      //         width: 50.0, // Adjust the size of the circular container
      //         height: 50.0,
      //         decoration: BoxDecoration(
      //           shape: BoxShape.circle,
      //           color: const Color(0xFF130160),
      //         ),
      //         child: IconButton(
      //           icon: Icon(
      //             Icons.add,
      //             color: Colors.white,
      //           ),
      //           onPressed: () {
      //             // Handle the press of the circular container
      //           },
      //         ),
      //       ),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset(
      //         'assets/Components/BottomNav/4.svg',
      //         width: 26,
      //         height: 26,
      //         color: _currentIndex == 3
      //             ? const Color(0xFFFF9228)
      //             : Color(0xFFA49EB5),
      //       ),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset(
      //         'assets/Components/BottomNav/5.svg',
      //         width: 26,
      //         height: 26,
      //         color: _currentIndex == 4
      //             ? const Color(0xFFFF9228)
      //             : Color(0xFFA49EB5),
      //       ),
      //       label: '',
      //     ),
      //   ],
      //   elevation: 0,
      //   selectedLabelStyle: const TextStyle(fontSize: 13.0),
      //   unselectedLabelStyle: const TextStyle(fontSize: 12.0),
      // ),
      backgroundColor: const Color(0xFFF9F9F9),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.32,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Fullname",
                        style: TextStyle(
                          color: Color(0xFF150A33),
                          fontSize: 12,
                          fontFamily: "RobotoBold",
                          height: 1.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.054,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff99ABC6).withOpacity(0.07),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Hritik Chauhan',
                        hintStyle: TextStyle(
                            fontFamily: "RobotoRegular",
                            color: Colors.grey,
                            fontSize: 14.0),
                        labelStyle: TextStyle(color: Color(0xff6E678C)),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  //DOB
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Date of birth",
                        style: TextStyle(
                          color: Color(0xFF150A33),
                          fontSize: 12,
                          fontFamily: "RobotoBold",
                          height: 1.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.054,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff99ABC6).withOpacity(0.07),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: '06 August 1998',
                        hintStyle: TextStyle(
                            fontFamily: "RobotoRegular",
                            color: Colors.grey,
                            fontSize: 14.0),
                        labelStyle: TextStyle(color: Color(0xff6E678C)),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        suffixIcon: Icon(Icons.calendar_month),
                      ),
                    ),
                  ),
                  //Male and Female
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Gender",
                        style: TextStyle(
                          color: Color(0xFF150A33),
                          fontSize: 12,
                          fontFamily: "RobotoBold",
                          height: 1.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.43,
                        height: MediaQuery.of(context).size.height * 0.054,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xff99ABC6).withOpacity(0.07),
                              spreadRadius: 0,
                              blurRadius: 10,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Radio(
                              value: 0,
                              groupValue: selectedGender,
                              onChanged: (value) {
                                setState(() {
                                  selectedGender = value as int;
                                });
                              },
                            ),
                            const Text(
                              "Male",
                              style: TextStyle(
                                color: Color(0xFF150A33),
                                fontSize: 14,
                                fontFamily: "RobotoMedium",
                                height: 1.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.43,
                        height: MediaQuery.of(context).size.height * 0.054,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xff99ABC6).withOpacity(0.07),
                              spreadRadius: 0,
                              blurRadius: 10,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: selectedGender,
                              onChanged: (value) {
                                setState(() {
                                  selectedGender = value as int;
                                });
                              },
                            ),
                            const Text(
                              "Female",
                              style: TextStyle(
                                color: Color(0xFF150A33),
                                fontSize: 14,
                                fontFamily: "RobotoMedium",
                                height: 1.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  //Email

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Email address",
                        style: TextStyle(
                          color: Color(0xFF150A33),
                          fontSize: 12,
                          fontFamily: "RobotoBold",
                          height: 1.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.054,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff99ABC6).withOpacity(0.07),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'teammaverickcrafts.com',
                        hintStyle: TextStyle(
                            fontFamily: "RobotoRegular",
                            color: Colors.grey,
                            fontSize: 14.0),
                        labelStyle: TextStyle(color: Color(0xff6E678C)),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  //Phone number
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Phone number",
                        style: TextStyle(
                          color: Color(0xFF150A33),
                          fontSize: 12,
                          fontFamily: "RobotoBold",
                          height: 1.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.054,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff99ABC6).withOpacity(0.07),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: '+91-9304837716',
                        hintStyle: TextStyle(
                            fontFamily: "RobotoRegular",
                            color: Colors.grey,
                            fontSize: 14.0),
                        labelStyle: TextStyle(color: Color(0xff6E678C)),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  //location
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Location",
                        style: TextStyle(
                          color: Color(0xFF150A33),
                          fontSize: 12,
                          fontFamily: "RobotoBold",
                          height: 1.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.054,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff99ABC6).withOpacity(0.07),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Dehradun, India',
                        hintStyle: TextStyle(
                            fontFamily: "RobotoRegular",
                            color: Colors.grey,
                            fontSize: 14.0),
                        labelStyle: TextStyle(color: Color(0xff6E678C)),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  //save button
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.42,
                    height: MediaQuery.of(context).size.height * 0.053,
                    child: ElevatedButton(
                      onPressed: () {
                        print('Save Button Pressed');
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: const Color(0xFF130160),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: const Text(
                        "Save",
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 14,
                          fontFamily: "RobotoBold",
                          height: 1.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.3,
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
                        SvgPicture.asset(
                          "assets/profile/Settings.svg",
                          height: 25.0,
                          width: 25.0,
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                          height: 10.0,
                        ),
                        Text(
                          "Dehradun, India",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: "RobotoRegular",
                            height: 1.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //location
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
                        child:
                            SvgPicture.asset('assets/profile/chnageimage.svg')),
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
