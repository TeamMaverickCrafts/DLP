
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
            Column(
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
                            fontFamily: 'RobotoBold',
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
                              fontFamily: 'RobotoMedium',
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
                            style: TextStyle(fontSize: 13, fontFamily: 'RobotoBold'),
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
                                color: Color(0xff1B1A57), fontSize: 12, fontFamily: 'RobotoMedium'),
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
                                fontFamily: 'RobotoMedium'),
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
                                fontFamily: 'RobotoMedium',
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
                fontFamily: 'RobotoBold',
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
                  "View CompanyProfile",
                  style: TextStyle(
                    fontFamily: 'RobotoBold',
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
    {
      'name': 'Mike Mazo',
      'image': 'https://s3-alpha-sig.figma.com/img/89c9/d898/0915363a2c70375926d3e4a60ea94e15?Expires=1713744000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=hMA92nYG7BGnJYFqgHWzXeXRomLnkL0RBWdV61TS3QF8co8FgZN~OlMsiPioJurg6HKW21ylIyti8tTvqtzwcSX4l4yYqpxmU~pFpqAJU0hhNlxUn9sGOQmPmKCf8Z0rVYzNQA5Y61XYMcT2CU8P3ImKQaYAkNesmw~fMjU2ZSKqN01zLTdYY8LoKjkN1L~fSkV2~gG3cpJF1FefvyoOueMyavcq7UdxUbQJoBPD-~r8Kccs5ceBAzvzRLEQKqmtZysT2JIhAOq4kwAyKJg0xE4qlJzVyoulY1GY8gTsY9jz-GdM0m~CLAwhrgX8Z7XvJKjlj5l5PO9VoPwtrbvLRw__',
    },
    {
      'name': 'Marvin Esro',
      'image': 'https://s3-alpha-sig.figma.com/img/e235/a8bb/1492b144ee67684e05d7dd970dee8479?Expires=1713744000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=cLBg-bN2i9gtpXBaqdfakaSejstuVq5~-u9F1oieMPJRipvGFA9qwtfFUOnx9CTK9Nist6nbDK~RwWDwXsEb6ddpTW4qWn4pAIWv30OPcGYJ88y8CuYBPHtLUjaMAL9AaUWcQCZNxQWKg2oQ-OVx0UHQY0mEvD-pnYVSHeQIBPf-Nig86XXWA3~mZYeSJ5cCoIA-Ivop~sdv96GbE3fF2WE3HVm-YffItILMxUS~w5OWNit6xlEav4HRihVV5X2kruLr8pZFFvp3XHrAXEbYASZ7jvxKqZKPqGaHGNEIuheLTImdYg87pVhkGsx34xpQCYL32wQlScK8x~r6V82~cg__',
    },
    {
      'name': 'Gregory Robert',
      'image': 'https://s3-alpha-sig.figma.com/img/bd7d/a1cc/cb4c9c747cd5aa06ca16a3cf66d39315?Expires=1713744000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=QpNnPqvpQNhpNMK8ogTsb3OCNmQsDegRy15zGKUa1RTfWDYVLlZ3fEygxVyP4YTNbv2CeNlkrIzuXWG3eNfM8z~E0uPLjM1Txy5DW2~95RmF~vS~ORKTKQRl8pWlZSecCkNmYDlpRxPNK6PCe43hfm1GCTomZ-CDbgIqGY3iovg5L4sRBM~01dy8MznggJ8rsU9Oezbktn2wjhSPKYy6OoSNNt~Mix6JR90eLcMfHqNrSw-6npKANQgZt1bX7KjJ8~YgCTHHIxv581UL5zPyW4qkUwVkZL05GvD4arwPMP1pvGzuKyGC6qAEsGTd8lpE~s--yUrH~vX3LRca4YtdZg__',
    },
    {
      'name': 'Samuel Wits',
      'image': 'https://s3-alpha-sig.figma.com/img/0d16/e5a0/046f7426ff666be54216de42c4d93e9d?Expires=1713744000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SbLNptMatLkf5NkB9x7hVeSsZOHdMHhqEccb1CC4OQJfsXlphKsiXEfBtMHANkWOYXBw9OlCjiy4lMNeFC6Wi7lZ690U3WQ7JiKSiA9zqGOiYPHY4jZ1Y7Hf-b2o5m6ULYkq9yuCfcNFPkwqkVrEOU382zlB5qTUZ4Oo6s2XxT9MrUZ~DoThV5FkIeq4i7MdTRV0QpPvDQCqhkDvh33MFcTrweI8mZEr7XTcHuNgGFdP6jLjDBevm-L9uLO4FlClZHx0J~kauKb3xkESKk4nVsxFxn1nof08KpmXd8Dh3pPPZywRYyd656e3xCu6StZ0xRU~oCzoloQnNRl5~ol5bQ__',
    },
  ];
}
