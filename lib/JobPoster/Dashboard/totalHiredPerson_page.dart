
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'dash_page.dart';

class TotalHiredPersonPage extends StatefulWidget {
  const TotalHiredPersonPage({Key? key}) : super(key: key);

  @override
  State<TotalHiredPersonPage> createState() => _TotalHiredPersonPageState();
}

class _TotalHiredPersonPageState extends State<TotalHiredPersonPage> {
  TextEditingController searchController = TextEditingController();

  List<int> expandedIndexes = []; // Initialize expandedIndexes as an empty list

  final List<Map<String, dynamic>> jobList = [
    {
      'title': 'Chef-Chinese',
      'jobId': '001',
      'applicantsNo': 4,
      'date': '10 October',
    },
    {
      'title': 'Assistant Manager',
      'jobId': '002',
      'applicantsNo': 5,
      'date': '12 October',
    },
    {
      'title': 'Receptionist',
      'jobId': '003',
      'applicantsNo': 3,
      'date': '15 October',
    },
    {
      'title': 'Table Handle',
      'jobId': '003',
      'applicantsNo': 3,
      'date': '15 October',
    },
    {
      'title': 'Human Resource',
      'jobId': '003',
      'applicantsNo': 6,
      'date': '15 October',
    },
    {
      'title': 'Cleaning Staff',
      'jobId': '003',
      'applicantsNo': 4,
      'date': '15 October',
    },
  ];

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.045),
        child: Column(
          children: [
            // Header section
            Container(
              child: Column(
                children: [
                  SizedBox(height: mQuery.size.height * 0.04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return DashPage();
                          }));
                        },
                        child: SvgPicture.asset(
                          "assets/JPImages/kycImages/ArrowBack.svg",
                          color: Color(0xff524B6B),
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      Padding(
                        padding: EdgeInsets.only(right: mQuery.size.width * 0.225),
                        child: Center(
                          child: Text(
                            "Total Person Hired",
                            style: TextStyle(
                              color: Color(0xff150B3D),
                              fontSize: 18,
                              fontFamily: 'SatoshiBold',
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: mQuery.size.height * 0.023),
                  Container(
                    width: double.infinity,
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.026),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Color(0xffAAA6B9)),
                        SizedBox(width: mQuery.size.width * 0.023),
                        Expanded(
                          child: TextField(
                            controller: searchController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search",
                              hintStyle: TextStyle(
                                fontSize: 12,
                                fontFamily: 'SatoshiMedium',
                                color: Color(0xffA0A7B1),
                              ),
                              contentPadding: EdgeInsets.only(
                                bottom: 13
                              )
                            ),
                            cursorColor: Colors.grey,
                          ),
                        ),
                        Icon(Icons.close, color: Color(0xff150A33), size: mQuery.size.height * 0.02)
                      ],
                    ),
                  ),
                  SizedBox(height: mQuery.size.height * 0.02)
                ],
              ),
            ),

            // List of job containers
            Expanded(
              child: ListView.builder(
                physics: AlwaysScrollableScrollPhysics(),
                itemCount: jobList.length,
                itemBuilder: (context, index) {
                  final job = jobList[index];
                  return _buildJobContainer(job, mQuery, index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildJobContainer(Map<String, dynamic> job, MediaQueryData mQuery, int index) {
    bool isExpanded = expandedIndexes.contains(index); // Check if this container is expanded
    return Padding(
      padding: EdgeInsets.only(bottom: mQuery.size.height * 0.023),
      child: GestureDetector(
        onTap: () {
          setState(() {
            if (isExpanded) {
              expandedIndexes.remove(index); // Close the tapped container if already open
            } else {
              expandedIndexes.add(index); // Open the tapped container
            }
          });
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.03, vertical: mQuery.size.height * 0.02),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Color(0xffFFFFFF), Color(0xffF4F4F4)]),
            borderRadius: BorderRadius.circular(6),
            border: Border.all(
              color: Color(0xffEDEDED),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            job['title'] ?? '',
                            style: TextStyle(fontSize: 13, fontFamily: 'SatoshiBold'),
                          ),
                          SizedBox(width: mQuery.size.width * 0.02),
                          Container(
                            width: 2,
                            height: 14,
                            decoration: BoxDecoration(
                                color: Color(0xff232323), borderRadius: BorderRadius.circular(2)),
                          ),
                          SizedBox(width: mQuery.size.width * 0.02),
                          Text(
                            "JOB  ID - ${job['jobId']}",
                            style: TextStyle(
                                color: Color(0xff1B1A57), fontSize: 12, fontFamily: 'SatoshiMedium'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset("assets/JPImages/dashboardImages/applicantsIcon.svg"),
                          SizedBox(width: mQuery.size.width * 0.03),
                          Text(
                            "${job['applicantsNo']} Applicants",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff1B1A57),
                                fontFamily: 'SatoshiMedium'),
                          ),
                          SizedBox(width: mQuery.size.width * 0.03),
                          SvgPicture.asset("assets/JPImages/dashboardImages/Ellipse 99.svg"),
                          SizedBox(width: mQuery.size.width * 0.03),
                          SvgPicture.asset("assets/JPImages/dashboardImages/calenderIcon.svg"),
                          SizedBox(width: mQuery.size.width * 0.023),
                          Text(
                            "${job['date']}",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'SatoshiMedium',
                                color: Color(0xff524B6B)),
                          )
                        ],
                      )
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  isExpanded
                      ? Image.asset("assets/JPImages/dashboardImages/Drop Up.png")
                      : Image.asset("assets/JPImages/dashboardImages/Drop Down.png"),
                ],
              ),
              if (isExpanded) ...[
                SizedBox(height: mQuery.size.height * 0.02),
                Column(
                  children: _buildFollowersList(),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildFollowersList() {
    return followers.map((follower) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            Stack(
              children: [
                ProfilePicture(
                  name: "",
                  radius: 20,
                  fontsize: 12,
                  img: follower['image'],
                ),
                Positioned(
                  bottom: 0.5,
                  right: 0.1,
                  child: Container(
                    width: 14,
                    height: 14,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff4CE417),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 12),
            Text(
              follower['name'],
              style: TextStyle(
                color: Color(0xff1B1A57),
                fontFamily: 'SatoshiBold',
              ),
            ),
            Expanded(child: SizedBox()),
            Container(
              width: 80,
              height: 18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color(0xffFFE1D5),
              ),
              child: Center(
                child: Text(
                  "View Profile",
                  style: TextStyle(
                    fontFamily: 'SatoshiBold',
                    fontSize: 9,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }).toList();
  }

  // Dummy data for followers
  final List<Map<String, dynamic>> followers = [
    {'name': 'Mike Mazo', 'image': 'https://s3-alpha-sig.figma.com/img/89c9/d898/0915363a2c70375926d3e4a60ea94e15?Expires=1712534400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=PZy1yJWfgiMkYWvAzaoy5ZKgZZRgL7mHkV~bvgXDUFjiurpFQaSsH6l7whL4nn96aXuRgP15ngWMHHOXkcFrLDWL1qYqgKJk97XFUBO2cXCNHZfmbt2XDApVrds3dx05P19RfAqAweqL9gbqTjgyDc65mbHTQ3~GjebhuOltlLwPzdwAKOsuFoXzS17~J1dLGElbGYFYyHDIjTd6qwvxr1fUJJvSmibjpQ6vXh4c5iA1I5HJ98O7X21SXD4Lfr9Ji5KBhh59ZRK6oHHjaYuzdeTgMgKM4zJxFGXYKXBdhNROXigHnBydJpYEzKJ0tciO13H2qLRdKyiRt~gzHP~U5g__',},
    {'name': 'Marvin Esro', 'image': 'https://s3-alpha-sig.figma.com/img/e235/a8bb/1492b144ee67684e05d7dd970dee8479?Expires=1712534400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=O0m0anZFQQDgbz9PwZ9Xi3S0Jq3x-Vxs2OIfmitAQx7ev5oSQ5v~46ofaid7x1~p4AjRNb8fR0aKd69sj2gH5Su-mf68ayLNv-fcGJ8~yL3VIoDGQ4gbraREKE41NDrkwpfgidIMPi0lhE0CkCk5rHBaw~cKF35sbkPOoAZfaB73jDQ16uzg3uocGlt1k3q2cA~soJ8CKL56RILFDz6pyPvH2HD7mznzGl59oLbbJ8QZ8z3QS5gYjLj3yCshVqpDYvLuOpVQhPH0ln49Mc8LJQ2vXCYsp61z2NDXVd6jVehCQzyljDVhXf60Npul706Fhxn5cPjDVbTx3P~1LLOQxQ__',},
    {'name': 'Gregory Robert','image' :'https://s3-alpha-sig.figma.com/img/bd7d/a1cc/cb4c9c747cd5aa06ca16a3cf66d39315?Expires=1712534400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=UyTS8HD4QgaSZE~yOOdUaHdjxMLV4CQmvBLcbz17H9jERyQRuPXde9FnWWpZ2yKzDEa03kcgGwlUx~k2yREMQFIOLfMM7bzG2hPqSniut91Z1~DXxUTlPJGg9qD~Q0Eil2IoSIIXGaXfWEOdL-1~W0l3UbtqjsxgAS3Gd7entYiLeelZXcChMD-tNBJmm21BCk1qbX3WTiH3cMpFGDRTjBqmbTd7EdB5X50fyaBGKPgybk6tfpcF9pqIUaAqUfmK8OU~Bl0bqWhZcQLyHBtlZDMm6WliWMI7HWfj4vClEsxdwI2LiU8RLUirVAzj3cOz0bzv9u77pgiFCsFETqridQ__',},
    {'name': 'Samuel Wits','image' :'https://s3-alpha-sig.figma.com/img/0d16/e5a0/046f7426ff666be54216de42c4d93e9d?Expires=1712534400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=N3w4uAaS7M0WtI5WG1y~Z57CMiJIsEkd9hqKF6mKiRy5Lv4Sy8qpyJdcBoWHHAaCtMd-wZk2B0s0YzE8e44szzhO3gwh-p1~fIJYrp9WaTUQ5PxXQn8FXYI2crTmN350zA0hAM9T6Mr6eE0SZJXFpKq9LXQRbCwcECvFDu95qbPa9mcVBsxBOt6VASckf-LhO3Vz5iPP0FnU~2W4m1dQKNYXVA8ymv~Edze5KL0JctVeu6U5UeKhwRNWM-LUv2NuznE7peFHj4qEmixyH9NP~Uzakgwbi0DzAoHwQOYFawBrGzgM7ll6l1I53DHjai8rZJSOFEyPnC9QXLOaaDpxqw__',},
    // Add more followers as needed
  ];
}
