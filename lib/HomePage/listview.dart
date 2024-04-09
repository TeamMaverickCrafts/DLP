import 'dart:async';

import 'package:daily_lancers/HomePage/HomePage.dart';
import 'package:daily_lancers/HomePage/JobDescription/Job_Description.dart';
import 'package:daily_lancers/DemoAPIData/demodata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(Demo());
}

class Demo extends StatefulWidget {
  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.28,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.07,
            top: MediaQuery.of(context).size.height * 0.03,
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Quick Filters",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: "RobotoBold",
                  height: 1.0,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 20.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.22,
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                            20), // Adjust the radius as needed
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 0,
                            blurRadius: 30,
                            offset: const Offset(
                                0, 4), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/circle.svg",
                              width: 60,
                              height: 60,
                            ),
                            Image.asset("assets/chef.png") // Re
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      "Kitchen",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: "RobotoBold",
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 16.0),
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.22,
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                            20), // Adjust the radius as needed
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 0,
                            blurRadius: 30,
                            offset: const Offset(
                                0, 4), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/circle.svg",
                              width: 60,
                              height: 60,
                            ),
                            Image.asset("assets/waiter.png") // Re
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      "F&B \nServices",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: "RobotoBold",
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 16.0),
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.22,
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                            20), // Adjust the radius as needed
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 0,
                            blurRadius: 30,
                            offset: const Offset(
                                0, 4), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/circle.svg",
                              width: 60,
                              height: 60,
                            ),
                            Image.asset("assets/guest.png") // Re
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      "Guest \nRelations",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: "RobotoBold",
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 16.0),
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.22,
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                            20), // Adjust the radius as needed
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 0,
                            blurRadius: 30,
                            offset: const Offset(
                                0, 4), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/circle.svg",
                              width: 60,
                              height: 60,
                            ),
                            Image.asset("assets/bar.png") // Re
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      "Bar & \nServices",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: "RobotoBold",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.07,
            top: MediaQuery.of(context).size.height * 0.03,
          ),
          child: const Row(
            children: [
              Text(
                "Recent Job List",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: "RobotoBold",
                  height: 1.0,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: filteredList.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ItemDetailsPage(
                          index:
                              index)), // Replace SecondPage with the actual widget representing the second page
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.22,
                  width: MediaQuery.of(context).size.width * 0.9,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.02),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20, left: 20, right: 10),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                          height: 45,
                                          width: 45,
                                          child: Image.asset(
                                              filteredList[index]['image'])),
                                      const SizedBox(width: 20),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            filteredList[index]['title'],
                                            style: const TextStyle(
                                              color: Color(0xff150B3D),
                                              fontSize: 14,
                                              fontFamily: "RobotoBold",
                                              height: 1.0,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5.0,
                                          ),
                                          Text(
                                            filteredList[index]['location'],
                                            style: const TextStyle(
                                                color: Color(0xff524B6B),
                                                fontSize: 12,
                                                fontFamily: "RobotoRegular",
                                                height: 1.0),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        filteredList[index]['isChecked'] =
                                            !(filteredList[index]['isChecked'] ??
                                                false);
                                      });
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                          backgroundColor: filteredList[index]
                                                  ['isChecked']
                                              ? Colors
                                                  .green // Added to bookmarks color
                                              : Colors.red,
                                          elevation: 6,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                10), // Border radius
                                          ),
                                          margin: EdgeInsets.all(16), // Margin
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 12),
                                          behavior: SnackBarBehavior.floating,
                                          content: Center(
                                            child: Text(
                                              filteredList[index]['isChecked']
                                                  ? 'Added to bookmarks'
                                                  : 'Removed from bookmarks',
                                              style: TextStyle(
                                                  color:
                                                      Colors.white), // Text color
                                            ),
                                          ),
                                          duration: Duration(
                                              seconds: 1), // Set duration here
                                        ),
                                      );
                                      // Dismiss the SnackBar after 2 seconds
                                      Timer(Duration(seconds: 2), () {
                                        ScaffoldMessenger.of(context)
                                            .hideCurrentSnackBar();
                                      });
                                    },
                                    child: Icon(
                                      filteredList[index]['isChecked'] == true
                                          ? Icons.bookmark_rounded
                                          : Icons.bookmark_border_rounded,
                                      color: const Color(0xff524B6B),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 10),
                              //main row
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                              filteredList[index]['dateIcon']),
                                          const SizedBox(width: 10),
                                          Text(
                                            filteredList[index]['dateText'],
                                            style: const TextStyle(
                                                color: Color(0xff524B6B),
                                                fontSize: 12,
                                                fontFamily: "RobotoRegular",
                                                height: 1.0),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 12),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                              filteredList[index]['clockIcon']),
                                          const SizedBox(width: 10),
                                          Text(
                                            filteredList[index]['clockText'],
                                            style: const TextStyle(
                                                color: Color(0xff524B6B),
                                                fontSize: 12,
                                                fontFamily: "RobotoRegular",
                                                height: 1.0),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          SvgPicture.asset(filteredList[index]
                                              ['calendarIcon']),
                                          const SizedBox(width: 10),
                                          Text(
                                            filteredList[index]['calendarText'],
                                            style: const TextStyle(
                                                color: Color(0xff524B6B),
                                                fontSize: 12,
                                                fontFamily: "RobotoRegular",
                                                height: 1.0),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 12),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                              filteredList[index]['taxiIcon']),
                                          const SizedBox(width: 10),
                                          Text(
                                            filteredList[index]['taxiText'],
                                            style: const TextStyle(
                                                color: Color(0xff524B6B),
                                                fontSize: 12,
                                                fontFamily: "RobotoRegular",
                                                height: 1.0),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                          
                              const SizedBox(height: 15),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          filteredList[index]['bottomLeftIcon'] == 'hotel'
                              ? SvgPicture.asset(
                                  filteredList[index]['bottomLeftIcon'])
                              : SvgPicture.asset(
                                  filteredList[index]['bottomLeftIcon2']),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.04,
                            decoration: BoxDecoration(
                              color: filteredList[index]['status'] == 'hotel'
                                  ? const Color(0xff5A4D90)
                                  : const Color(0xff49B249),
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                            filteredList[index]['infoIcon']),
                                        const SizedBox(width: 15),
                                        Text(
                                          filteredList[index]['categoryText'],
                                          style: const TextStyle(
                                              color: Color(0xffFFFFFF),
                                              fontSize: 12,
                                              fontFamily: "RobotoBold",
                                              height: 1.0),
                                        )
                                      ]),
                                  Text(
                                    filteredList[index]['priceText'],
                                    style: const TextStyle(
                                        color: Color(0xffFFFFFF),
                                        fontSize: 14,
                                        fontFamily: "RobotoBold",
                                        height: 1.0),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
