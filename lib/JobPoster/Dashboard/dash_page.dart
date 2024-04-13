
import 'package:daily_lancers/JobPoster/Dashboard/totalHiredPerson_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class DashPage extends StatefulWidget {
  const DashPage({Key? key}) : super(key: key);

  @override
  State<DashPage> createState() => _DashPageState();
}

class _DashPageState extends State<DashPage> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    var odc = 70;
    var activeOdc = 14;
    var totalHired = 120;
    var totoalfollowers = 309;

    var p1 = 80;
    var p2 = 20;

    var f1 = 120;
    var f2 = 98;
    var f3 = 35;
    var f4 = 56;


    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.045),
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(height: mQuery.size.height * 0.04),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/JPImages/kycImages/ArrowBack.svg",
                      color: Color(0xff524B6B),
                    ),
                    Expanded(child: SizedBox()),
                    Padding(
                      padding: EdgeInsets.only(right: mQuery.size.width * 0.36),
                      child: Center(
                        child: Text(
                          "Dashboard",
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
                SizedBox(height: mQuery.size.height * 0.023)
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "ODC Insights",
                          style: TextStyle(
                              color: Color(0xff150B3D),
                              fontSize: 18,
                              fontFamily: 'RobotoMedium'),
                        ),
                      ],
                    ),
                    SizedBox(height: mQuery.size.height * 0.023),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: mQuery.size.width * 0.44,
                          height: 84,
                          padding: EdgeInsets.symmetric(
                              horizontal: mQuery.size.width * 0.023),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: mQuery.size.height * 0.02),
                                  Text(
                                    "Total ODC",
                                    style: TextStyle(
                                        color: Color(0xff202224),
                                        fontFamily: 'RobotoMedium'),
                                  ),
                                  SizedBox(height: mQuery.size.height * 0.016),
                                  Text(
                                    "$odc",
                                    style: TextStyle(
                                        color: Color(0xff202224),
                                        fontSize: 20,
                                        fontFamily: 'RobotoBold'),
                                  )
                                ],
                              ),
                              Expanded(child: SizedBox()),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Color(0xffffe8d2),
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: SvgPicture.asset(
                                      "assets/JPImages/dashboardImages/calender.svg"),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: mQuery.size.width * 0.44,
                          height: 84,
                          padding: EdgeInsets.symmetric(
                              horizontal: mQuery.size.width * 0.023),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: mQuery.size.height * 0.02),
                                  Text(
                                    "Active ODC",
                                    style: TextStyle(
                                        color: Color(0xff202224),
                                        fontFamily: 'RobotoMedium'),
                                  ),
                                  SizedBox(height: mQuery.size.height * 0.016),
                                  Text(
                                    "$activeOdc",
                                    style: TextStyle(
                                        color: Color(0xff202224),
                                        fontSize: 20,
                                        fontFamily: 'RobotoBold'),
                                  )
                                ],
                              ),
                              Expanded(child: SizedBox()),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Color(0xffd9f7e8),
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: SvgPicture.asset(
                                      "assets/JPImages/dashboardImages/graph.svg"),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: mQuery.size.height * 0.023),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap : ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return TotalHiredPersonPage();
                            }));
                          },
                          child: Container(
                            width: mQuery.size.width * 0.44,
                            height: 84,
                            padding: EdgeInsets.symmetric(
                                horizontal: mQuery.size.width * 0.023),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16)),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: mQuery.size.height * 0.02),
                                    Text(
                                      "Total Hired",
                                      style: TextStyle(
                                          color: Color(0xff202224),
                                          fontFamily: 'RobotoMedium'),
                                    ),
                                    SizedBox(height: mQuery.size.height * 0.016),
                                    Text(
                                      "$totalHired",
                                      style: TextStyle(
                                          color: Color(0xff202224),
                                          fontSize: 20,
                                          fontFamily: 'RobotoBold'),
                                    )
                                  ],
                                ),
                                Expanded(child: SizedBox()),
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Color(0xffe4e4fe),
                                      shape: BoxShape.circle),
                                  child: Center(
                                    child: SvgPicture.asset(
                                        "assets/JPImages/dashboardImages/groups.svg"),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),

                        Container(
                          width: mQuery.size.width * 0.44,
                          height: 84,
                          padding: EdgeInsets.symmetric(
                              horizontal: mQuery.size.width * 0.023,
                              vertical: mQuery.size.height * 0.01),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("$p1%",style: TextStyle(
                                    fontSize: 7,
                                    fontFamily: 'RobotoBold'
                                  ),),
                                  Container(
                                    height: 50,
                                    width: 27,
                                    color: Color(0xff6D62F7),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("$p2%",style: TextStyle(
                                      fontSize: 7,
                                      fontFamily: 'RobotoBold'
                                  ),),
                                  Container(
                                    height: 24,
                                    width: 27,
                                    color: Color(0xff3DD34C),
                                  ),
                                ],
                              ),
                              Expanded(child: SizedBox()),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 6,
                                        width: 6,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xff6D62F7)
                                        ),
                                      ),
                                      SizedBox(width: mQuery.size.width*0.02,),
                                      Text("Male",style: TextStyle(
                                        fontFamily: 'RobotoBold',
                                        fontSize: 8
                                      ),)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 6,
                                        width: 6,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xff3DD34C)
                                        ),
                                      ),
                                      SizedBox(width: mQuery.size.width*0.02,),
                                      Text("Female",style: TextStyle(
                                        fontFamily: 'RobotoBold',
                                        fontSize: 8
                                      ),)
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: mQuery.size.height * 0.023),
                    Text(
                      "Social Insights",
                      style: TextStyle(
                          color: Color(0xff150B3D),
                          fontSize: 18,
                          fontFamily: 'RobotoMedium'),
                    ),
                    SizedBox(height: mQuery.size.height * 0.023),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: mQuery.size.width * 0.44,
                          height: 84,
                          padding: EdgeInsets.symmetric(
                              horizontal: mQuery.size.width * 0.023),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: mQuery.size.height * 0.02),
                                  Text(
                                    "Total Post",
                                    style: TextStyle(
                                        color: Color(0xff202224),
                                        fontFamily: 'RobotoMedium'),
                                  ),
                                  SizedBox(height: mQuery.size.height * 0.016),
                                  Text(
                                    "$odc",
                                    style: TextStyle(
                                        color: Color(0xff202224),
                                        fontSize: 20,
                                        fontFamily: 'RobotoBold'),
                                  )
                                ],
                              ),
                              Expanded(child: SizedBox()),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Color(0xffffe8d2),
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: SvgPicture.asset(
                                      "assets/JPImages/dashboardImages/calender.svg"),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: mQuery.size.width * 0.44,
                          height: 84,
                          padding: EdgeInsets.symmetric(
                              horizontal: mQuery.size.width * 0.023),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: mQuery.size.height * 0.02),
                                  Text(
                                    "Total Follwers",
                                    style: TextStyle(
                                        color: Color(0xff202224),
                                        fontFamily: 'RobotoMedium'),
                                  ),
                                  SizedBox(height: mQuery.size.height * 0.016),
                                  Text(
                                    "$totoalfollowers",
                                    style: TextStyle(
                                        color: Color(0xff202224),
                                        fontSize: 20,
                                        fontFamily: 'RobotoBold'),
                                  )
                                ],
                              ),
                              Expanded(child: SizedBox()),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Color(0xffe2daff),
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: SvgPicture.asset(
                                      "assets/JPImages/dashboardImages/person.svg"),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: mQuery.size.height*0.03,),
                    Text("Locations (Followers)",style: TextStyle(
                        fontFamily: 'RobotoMedium',
                      fontSize: 18

                    ),),
                    SizedBox(height: mQuery.size.height*0.023,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Mumbai",style: TextStyle(
                          fontFamily: 'RobotoMedium',
                          color: Color(0xff686D7D)
                        ),),
                        Row(
                          children: [
                            Container(
                              height: 10,
                              width: mQuery.size.width*0.7,
                              decoration: BoxDecoration(
                                  color: Color(0xff00BFFF),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  )
                              ),
                            ),
                            Expanded(child: SizedBox()),
                            Text("120",style: TextStyle(
                              color: Color(0xff131417),
                              fontFamily: 'RobotoBold'
                            ),)
                          ],
                        ),
                        SizedBox(height: mQuery.size.height*0.023,),

                        Text("Delhi",style: TextStyle(
                            fontFamily: 'RobotoMedium',
                            color: Color(0xff686D7D)
                        ),),
                        Row(
                          children: [
                            Container(
                              height: 10,
                              width: mQuery.size.width*0.6,
                              decoration: BoxDecoration(
                                  color: Color(0xff00BFFF),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  )
                              ),
                            ),
                            Expanded(child: SizedBox()),
                            Text("$f2",style: TextStyle(
                                color: Color(0xff131417),
                                fontFamily: 'RobotoBold'
                            ),)
                          ],
                        ),
                        SizedBox(height: mQuery.size.height*0.023,),

                        Text("Lucknow",style: TextStyle(
                            fontFamily: 'RobotoMedium',
                            color: Color(0xff686D7D)
                        ),),
                        Row(
                          children: [
                            Container(
                              height: 10,
                              width: mQuery.size.width*0.3,
                              decoration: BoxDecoration(
                                  color: Color(0xff00BFFF),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  )
                              ),
                            ),
                            Expanded(child: SizedBox()),
                            Text("$f3",style: TextStyle(
                                color: Color(0xff131417),
                                fontFamily: 'RobotoBold'
                            ),)
                          ],
                        ),
                        SizedBox(height: mQuery.size.height*0.023,),

                        Text("Dehradun",style: TextStyle(
                            fontFamily: 'RobotoMedium',
                            color: Color(0xff686D7D)
                        ),),
                        Row(
                          children: [
                            Container(
                              height: 10,
                              width: mQuery.size.width*0.4,
                              decoration: BoxDecoration(
                                  color: Color(0xff00BFFF),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                )
                              ),
                            ),
                            Expanded(child: SizedBox()),
                            Text("$f4",style: TextStyle(
                                color: Color(0xff131417),
                                fontFamily: 'RobotoBold'
                            ),)
                          ],
                        ),
                        SizedBox(height: mQuery.size.height*0.023,),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

