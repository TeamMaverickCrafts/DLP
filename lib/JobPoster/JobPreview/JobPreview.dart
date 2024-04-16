import 'package:daily_lancers/HomePage/JobDescription/AppliedSuccess.dart';
import 'package:daily_lancers/SlideFadeAnimation.dart';
import 'package:daily_lancers/DemoAPIData/demodata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:daily_lancers/HomePage/JobDescription/grids.dart';

class JobPreview extends StatefulWidget {
  final int index;

  const JobPreview({Key? key, required this.index}) : super(key: key);

  @override
  State<JobPreview> createState() => _JobPreviewState();
}

class _JobPreviewState extends State<JobPreview> {
  String currentContent = "description"; // Initial content is description

  void changeContent(String newContent) {
    setState(() {
      currentContent = newContent;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget contentWidget = _buildDescriptionContent();
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                children: [
                  Positioned(
                    top: 0,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.14,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 16.0,
                        top: MediaQuery.of(context).size.height * 0.08),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: Colors.black,
                            size: 25,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.001),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            demoData[widget.index]['image'],
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text(
                    demoData[widget.index]['title'],
                    style: const TextStyle(
                      color: Color(0xff150B3D),
                      fontSize: 16,
                      fontFamily: "RobotoBold",
                      height: 1.0,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.045,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        demoData[widget.index]['hotelname'],
                        style: const TextStyle(
                          color: Color(0xff0D0140),
                          fontSize: 16,
                          fontFamily: "RobotoRegular",
                          height: 1.0,
                        ),
                      ),
                      SvgPicture.asset("assets/Components/dot.svg"),
                      Text(
                        demoData[widget.index]['state'],
                        style: const TextStyle(
                          color: Color(0xff0D0140),
                          fontSize: 16,
                          fontFamily: "RobotoRegular",
                          height: 1.0,
                        ),
                      ),
                      SvgPicture.asset("assets/Components/dot.svg"),
                      Text(
                        demoData[widget.index]['calendarText'],
                        style: const TextStyle(
                          color: Color(0xff0D0140),
                          fontSize: 16,
                          fontFamily: "RobotoRegular",
                          height: 1.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft:
                            Radius.circular(20), // Radius for top left corner
                        topRight:
                            Radius.circular(20), // Radius for top right corner
                      ),
                    ),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 1.0,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.055,
                          right: MediaQuery.of(context).size.width * 0.05),
                      child: Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.42,
                                height:
                                    MediaQuery.of(context).size.height * 0.053,
                                child: ElevatedButton(
                                  onPressed: () {
                                    changeContent("description");
                                    print('Description Button Pressed');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: const Color(0xFF130160),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  child: const Text(
                                    "Description",
                                    style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 14,
                                      fontFamily: "RobotoBold",
                                      height: 1.0,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.42,
                                height:
                                    MediaQuery.of(context).size.height * 0.053,
                                child: ElevatedButton(
                                  onPressed: () {
                                    changeContent("hotelInfo");
                                    print('Hotel Info Button Pressed');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: const Color(0xFFFFE1D5),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  child: const Text(
                                    "Hotel Info",
                                    style: TextStyle(
                                      color: Color(0xff130160),
                                      fontSize: 14,
                                      fontFamily: "RobotoBold",
                                      height: 1.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                          ),
                          contentWidget,
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomRow(),
    );
  }

  Widget _buildDescriptionContent() {
    // Build and return description content widget
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            Text(
              "Job Description",
              style: TextStyle(
                color: Color(0xff0D0140),
                fontSize: 18,
                fontFamily: "RobotoBold",
                height: 1.0,
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Text(
          demoData[widget.index]['jobdesc'],
          style: const TextStyle(
            color: Color(0xff524B6B),
            fontSize: 14,
            fontFamily: "RobotoRegular",
            height: 1.5,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.05,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const EachGrid(
                    svgPath: 'assets/profile/stipened.svg',
                    title: 'Stipend',
                    subtitle: '₹2500/Hr',
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.15,
                  ),
                  const EachGrid(
                    svgPath: 'assets/profile/jobtype.svg',
                    title: 'Job Type',
                    subtitle: 'Chef/Cook',
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const EachGrid(
                    svgPath: 'assets/profile/gender.svg',
                    title: 'Gender',
                    subtitle: 'Both',
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.15,
                  ),
                  const EachGrid(
                    svgPath: 'assets/profile/trans.svg',
                    title: 'Transportation',
                    subtitle: 'Provided',
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const EachGrid(
                    svgPath: 'assets/profile/cal.svg',
                    title: 'Available on',
                    subtitle: '05 October',
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.15,
                  ),
                  const EachGrid(
                    svgPath: 'assets/profile/clock.svg',
                    title: 'Timing',
                    subtitle: '12:00 to 19:00',
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
        ),
        const Row(
          children: [
            Text(
              "Location",
              style: TextStyle(
                color: Color(0xff0D0140),
                fontSize: 18,
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
          children: [
            Text(
              demoData[widget.index]['main-location'],
              style: const TextStyle(
                color: Color(0xff524B6B),
                fontSize: 14,
                fontFamily: "RobotoRegular",
                height: 1.0,
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
        ),
        Image.asset("assets/map.png")
      ],
    );
  }

  Widget _buildHotelInfoContent() {
    // Build and return hotel info content widget
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hotel Info",
          style: TextStyle(
            color: Color(0xff0D0140),
            fontSize: 18,
            fontFamily: "RobotoBold",
            height: 1.0,
          ),
        ),
      ],
    );
  }
}

class BottomRow extends StatefulWidget {
  const BottomRow({super.key});

  @override
  State<BottomRow> createState() => _BottomRowState();
}

class _BottomRowState extends State<BottomRow> {
  Widget _tandC(BuildContext context) {
    bool _isChecked = false;

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Terms & Condition",
                style: TextStyle(
                  color: Color(0xff150B3D),
                  fontSize: 15,
                  fontFamily: "RobotoBold",
                  height: 1.0,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: const Text(
                  "These Terms and Conditions shall govern any  accommodation agreements or any other related  contracts entered into between the hotel and the  guest（including daytime guests using rooms for teleworking, etc.; the same shall apply hereinafter） and any matters not stipulated in the Terms and Conditions shall be governed by law and generally established customs.",
                  style: TextStyle(
                    color: const Color(0xff150B3D),
                    fontSize: 12,
                    fontFamily: "RobotoRegular",
                    height: 1.0,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: const Text(
                  "Any usage guidelines and precautions（hereinafter collectively referred to as “Rules”）presented by the hotel in connection with these Terms and Conditions shall, in addition to the Hotel Rules and Regulations established by the hotel and kept in guest rooms, constitute a part of these Terms and Conditions.",
                  style: TextStyle(
                    color: const Color(0xff150B3D),
                    fontSize: 12,
                    fontFamily: "RobotoRegular",
                    height: 1.0,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: const Text(
                  "Notwithstanding the preceding paragraph, any special agreements provided by the hotel within the scope permitted by law and customs shall take precedence. Notwithstanding the preceding paragraph, any special agreements provided by the hotel within the scope permitted by law and customs shall take precedence.",
                  style: TextStyle(
                    color: const Color(0xff150B3D),
                    fontSize: 12,
                    fontFamily: "RobotoRegular",
                    height: 1.0,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: const Text(
                  "Any usage guidelines and precautions（hereinafter collectively referred to as “Rules”）presented by the hotel in connection with these Terms and Conditions shall, in addition to the Hotel Rules and Regulations established by the hotel and kept in guest rooms, constitute a part of these Terms and Conditions.",
                  style: TextStyle(
                    color: const Color(0xff150B3D),
                    fontSize: 12,
                    fontFamily: "RobotoRegular",
                    height: 1.0,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked,
                    onChanged: (bool? value) {
                      // Update the state of the checkbox
                      // This triggers a rebuild of the UI
                      setState(() {
                        _isChecked = value!;
                      });
                    },
                  ),
                  Text(
                    'I agree to the terms and conditions',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
              Expanded(child: Container()),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      SlideAndFadePageRoute(
                        page: AppliedSuccessful(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor:
                        const Color(0xFFFFD6AD), // Background color
                    minimumSize: Size(
                      MediaQuery.of(context).size.width * 1.0,
                      MediaQuery.of(context).size.height * 0.05,
                    ), // Set the width and height
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          8), // Adjust the radius as needed
                    ),
                  ),
                  child: const Text(
                    'ACCEPT',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF130160),
                      fontFamily: 'RobotoBold',
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.bookmark_border_rounded,
            color: Color(0xFFFFD6AD),
            size: 30,
          ),
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return _tandC(context);
                },
              );
            },
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: const Color(0xFFFFD6AD), // Background color
              minimumSize: Size(MediaQuery.of(context).size.height * 0.32,
                  56), // Set the width and height
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(8), // Adjust the radius as needed
              ),
            ),
            child: const Text(
              'Apply Now',
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF130160),
                fontFamily: 'RobotoBold',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
