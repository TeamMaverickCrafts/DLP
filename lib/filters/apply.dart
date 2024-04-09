import 'package:daily_lancers/HomePage/listview.dart';
import 'package:daily_lancers/filters/filter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppFilter extends StatefulWidget {
  const AppFilter({super.key});

  @override
  State<AppFilter> createState() => _AppFilterState();
}

class _AppFilterState extends State<AppFilter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Demo2()
                ],
              ),
            ),
          ),
          Column(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.33,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),
                    color: Color(0xff0D0140),
                  ),
                  child: Stack(
                    children: [
                      SvgPicture.asset(
                        "assets/Components/homemain.svg",
                        height: MediaQuery.of(context).size.height * 0.38,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(children: [
                          SizedBox(
                            height: 50,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                width: MediaQuery.of(context).size.width * 0.75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(children: [
                                    SvgPicture.asset('assets/Search.svg'),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      selectedCategory,
                                      style:
                                          TextStyle(color: Color(0xffAAA6B9)),
                                    )
                                  ]),
                                ),
                              ),
                              SvgPicture.asset(
                                "assets/Components/homesetting.svg",
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.93,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(children: [
                                SvgPicture.asset('assets/Icon Location.svg'),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  selectedLocation,
                                  style: TextStyle(color: Color(0xffAAA6B9)),
                                )
                              ]),
                            ),
                          ),
                        ]),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
