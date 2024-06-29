

import 'package:daily_lancers/JobPoster/AddJob/add_a_job.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class JobLocation extends StatefulWidget {
  const JobLocation({super.key});

  @override
  State<JobLocation> createState() => _JobLocationState();
}

class _JobLocationState extends State<JobLocation> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: mQuery.size.height*0.06,),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: mQuery.size.width*0.045
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset("assets/JPImages/kycImages/ArrowBack.svg",color: Color(0xff524B6B),),
                ),
                SizedBox(height: mQuery.size.height*0.045),
                Row(
                  children: [
                    Text("Location",style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'RobotoBold',
                      color: Color(0xff150B3D)
                    ),),
                    Expanded(child: SizedBox()),
                    SvgPicture.asset("assets/JPImages/profileImages/orangeLocationIcon.svg"),
                  ],
                ),
                SizedBox(height: mQuery.size.height*0.032,),
                Container(
                  width: double.infinity,
                  height: mQuery.size.height*0.055,
                  padding: EdgeInsets.symmetric(
                    horizontal: mQuery.size.width*0.045
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),
                  child: Row(
                    children: [
                      Icon(CupertinoIcons.search,color: Color(0xffAAA6B9),),
                      SizedBox(width: mQuery.size.width*0.023,),
                      Expanded(
                        child: TextField(
                          cursorColor: Colors.grey,
                          style: TextStyle(
                            fontSize: 16,
                            height: 1,
                            fontFamily: 'RobotoRegular'
                          ),
                          controller: searchController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                              bottom: mQuery.size.height*0.003
                            ),
                            border: InputBorder.none
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: ()
                        {
                          searchController.clear();
                        },
                        child: Icon(Icons.close,color: Color(0xff150A33),
                         size: mQuery.size.height*0.025,),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(child: SizedBox()),
          GestureDetector(
            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return AddaJob();
              }));
            },
            child: Container(
              width: double.infinity,
              height: mQuery.size.height*0.062,
              margin: EdgeInsets.symmetric(
                horizontal: mQuery.size.width*0.16
              ),
              decoration: BoxDecoration(
                color: Color(0xff130160),
                borderRadius: BorderRadius.circular(6)
              ),
              child: Center(
                child: Text("Submit",style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'RobotoBold'
                ),),
              ),
            ),
          ),
          SizedBox(height: mQuery.size.height*0.032,)
        ],
      ),
    );
  }
}
