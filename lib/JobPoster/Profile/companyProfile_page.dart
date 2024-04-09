import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CompanyProfilePage extends StatefulWidget {
  const CompanyProfilePage({super.key});

  @override
  State<CompanyProfilePage> createState() => _CompanyProfilePageState();
}

class _CompanyProfilePageState extends State<CompanyProfilePage> {
  late String _currentText;

  final Map<String, dynamic> companyData = {
    "hotel": "Taj Hotel",
    "odcValue": 15,
    "likeNo": 12,
    "mobileNo": "+91 22-6665 3366",
    "email": "reservations.mumbai@ihcltata.com",
    "location": "Apollo Bunder, Mumbai, Maharashtra, 400 001, India",
    "gstin": "27AAACT3957G1Z7",
    "shareNo": 2,
  };

  bool _isLiked = false;

  @override
  void initState() {
    super.initState();
    _currentText = "About Us";
  }

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                SizedBox(height: mQuery.size.height * 0.056),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.045),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset(
                          "assets/JPImages/kycImages/ArrowBack.svg",
                          color: Color(0xff3B4657),
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      Icon(Icons.more_vert),
                    ],
                  ),
                ),
                SizedBox(height: mQuery.size.height * 0.033),
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 115,
                      color: Color(0xffF2F2F2),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${companyData["hotel"]}",
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'SatoshiBold',
                              color: Color(0xff0D0140),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 80,
                        left: 135,
                        child: Image.asset("assets/JPImages/profileImages/tajImage.png")),
                  ],
                ),
                SizedBox(height: mQuery.size.height * 0.02),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.045),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 155,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffC8E6C9),
                            ),
                            child: Center(
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "ODC Posted - ",
                                      style: TextStyle(
                                        fontFamily: 'SatoshiBold',
                                        fontSize: 12,
                                        color: Color(0xff4CAF50),
                                      ),
                                    ),
                                    TextSpan(
                                      text: "${companyData["odcValue"]}",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'SatoshiBold',
                                        color: Color(0xff4CAF50),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 155,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xfffae4cf),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset("assets/JPImages/profileImages/visit.svg"),
                                SizedBox(width: mQuery.size.width * 0.02),
                                Text(
                                  "Visit website",
                                  style: TextStyle(
                                    color: Color(0xffFF9228),
                                    fontFamily: 'SatoshiBold',
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: mQuery.size.height * 0.06),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 4, vertical: 3),
                        child: CupertinoSegmentedControl(
                          borderColor: Colors.white,
                          children: {
                            "About Us": Container(
                              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              decoration: BoxDecoration(
                                color: _currentText == "About Us" ? Color(0xffFCA34D) : Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              width: double.infinity,
                              child: Center(
                                child: Text(
                                  "About Us",
                                  style: TextStyle(
                                    fontFamily: 'SatoshiBold',
                                    color: _currentText == "About Us" ? Colors.white : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            "Post": Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: _currentText == "Post" ? Color(0xffFCA34D) : Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                              child: Center(
                                child: Text(
                                  "Post",
                                  style: TextStyle(
                                    color: _currentText == "Post" ? Colors.white : Colors.black,
                                    fontFamily: 'SatoshiBold',
                                  ),
                                ),
                              ),
                            ),
                            "Jobs": Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: _currentText == "Jobs" ? Color(0xffFCA34D) : Colors.white,
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                              child: Center(
                                child: Text(
                                  "Jobs",
                                  style: TextStyle(
                                    color: _currentText == "Jobs" ? Colors.white : Colors.black,
                                    fontFamily: 'SatoshiBold',
                                  ),
                                ),
                              ),
                            )
                          },
                          onValueChanged: (String value) {
                            setState(() {
                              _currentText = value;
                            });
                          },
                        ),
                      ),
                      SizedBox(height: mQuery.size.height * 0.02),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.045),
              child: ListView(
                children: [
                  if (_currentText == "About Us") ...{
                    AboutUsContainer(),
                  } else if (_currentText == "Post") ...{
                    PostContainer(),
                  } else if (_currentText == "Jobs") ...{
                    JobsContainer(),
                  }
                ],
              ),
            ),
          ),
          _currentText == "Post"
              ? Container(
            width: double.infinity,
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 16),
            color: Color(0xffece7fc),
            child: Row(
              children: [
                SvgPicture.asset("assets/JPImages/profileImages/likeIcon.svg"),
                SizedBox(width: 6,),
                Text("${companyData["likeNo"]}", style: TextStyle(
                    fontSize: 10,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff6F6B80)
                ),),
                Expanded(child: SizedBox()),
                SvgPicture.asset("assets/JPImages/profileImages/shareIcon.svg",
                  color: Color(0xff6F6B80),),
                SizedBox(width: 6,),
                Text("${companyData["shareNo"]}", style: TextStyle(
                    fontSize: 10,
                    color: Color(0xff6F6B80),
                    fontFamily: 'SatoshiMedium'
                ),)
              ],
            ),
          )
              : Container()
        ],
      ),
    );
  }

  Widget AboutUsContainer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // the above content will show when the About us will be selelected
        Text("About Hotel", style: TextStyle(
            color: Color(0xff150B3D),
            fontFamily: 'SatoshiBold'
        ),),
        SizedBox(height: 16,),
        Text("Built in 1973, the iconic The Taj Hotel Mumbai stands majestically across from the Gateway of India, overlooking the Arabian Sea. The Tower stands in harmonious contrast to The Taj Mahal Palace with its arched balconies and newly refurbished rooms. Sprawling over 2.6 acres, this luxurious hotel features 10 restaurants and a variety of traditional Indian therapies at Jiva Spa.",
          style: TextStyle(
              fontSize: 12,
              fontFamily: 'SatoshiMedium',
              color: Color(0xff524B6B)
          ),),
        SizedBox(height: 30,),
        Text("Contacts", style: TextStyle(
            color: Color(0xff150B3D),
            fontFamily: 'SatoshiBold'
        ),),
        SizedBox(height: 16,),
        Row(
          children: [
            Image.asset("assets/JPImages/profileImages/Call.png"),
            SizedBox(width: 23,),
            Text("${companyData["mobileNo"]}", style: TextStyle(
                fontSize: 12,
                fontFamily: 'SatoshiMedium',
                color: Color(0xff524B6B)
            ),)
          ],
        ),
        Row(
          children: [
            Image.asset("assets/JPImages/profileImages/email.png"),
            SizedBox(width: 23,),
            Text("${companyData["email"]}", style: TextStyle(
                fontSize: 12,
                fontFamily: 'SatoshiMedium',
                color: Color(0xff524B6B)
            ),)
          ],
        ),
        SizedBox(height: 30,),
        Text("GSTIN", style: TextStyle(
            color: Color(0xff150B3D),
            fontFamily: 'SatoshiBold'
        ),),
        SizedBox(height: 16,),
        Text("${companyData["gstin"]}", style: TextStyle(
            fontSize: 12,
            fontFamily: 'SatoshiMedium',
            color: Color(0xff524B6B)
        )),

        SizedBox(height: 30,),
        Text("Location", style: TextStyle(
            color: Color(0xff150B3D),
            fontFamily: 'SatoshiBold'
        ),),
        SizedBox(height: 16,),
        Text("${companyData["location"]}", style: TextStyle(
            fontSize: 12,
            fontFamily: 'SatoshiMedium',
            color: Color(0xff524B6B)
        )),
        SizedBox(height: 16,),
        Container(
            width: double.infinity,
            child: Image.asset("assets/JPImages/profileImages/LocationBackground.png")
        ),
        SizedBox(height: 30,),
        Text("Hotel Gallery", style: TextStyle(
            color: Color(0xff150B3D),
            fontFamily: 'SatoshiBold'
        ),),
        SizedBox(height: 16,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/JPImages/profileImages/hotelImage1.png"),
            Image.asset("assets/JPImages/profileImages/hotelImage2.png"),
          ],
        )
      ],
    );
  }

  Widget PostContainer() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 380,
          padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15)
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Row(
                  children: [
                    Image.asset("assets/JPImages/profileImages/tajImage.png",
                      width: 30,
                    ),
                    SizedBox(width: 16,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hotel Taj", style: TextStyle(
                            fontFamily: 'SatoshiBold',
                            fontSize: 12,
                            color: Color(0xff150B3D)
                        ),),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/JPImages/profileImages/watchIcon.svg"),
                            SizedBox(width: 10,),
                            Text("21 minuts ago", style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'SatoshiMedium',
                                color: Color(0xffAAA6B9)
                            ),),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco labo... ",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'SatoshiMedium',
                                color: Color(0xff524B6B)
                            )
                        ),
                        TextSpan(text: "Read More",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'SatoshiMedium',
                                color: Color(0xffFF9228)
                            )
                        ),
                      ]
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 165,
                  width: double.infinity,
                  child: Image.asset("assets/JPImages/profileImages/hotelImage1.png", fit: BoxFit.fill,),
                ),
                SizedBox(height: 20,),
                Text("What's it like to work at Taj?", style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'SatoshiBold',
                    color: Color(0xff150B3D)
                ),),
                Text("Youtube.com", style: TextStyle(
                    fontSize: 10,
                    color: Color(0xff150B3D),
                    fontFamily: 'SatoshiMedium'
                ),)
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget JobsContainer() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 210,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    SizedBox(height: 12,),
                    Row(
                      children: [
                        Image.asset("assets/JPImages/profileImages/tajImage.png",
                          width: 50,
                        ),
                        SizedBox(width: 12,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Chef-Chinese", style: TextStyle(
                                color: Color(0xff150B3D),
                                fontFamily: 'SatoshiBold'
                            ),),
                            Text("Taj Hotel . Mumbai", style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff524B6B),
                                fontFamily: 'SatoshiMedium'
                            ),)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 6,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 66),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset("assets/JPImages/profileImages/persons.svg"),
                        SizedBox(width: 10,),
                        Text("03/05", style: TextStyle(
                            color: Color(0xff524B6B),
                            fontSize: 12,
                            fontFamily: 'SatoshiMedium'
                        ),),
                        SizedBox(width: 32,),
                        SvgPicture.asset("assets/JPImages/profileImages/calendor2.svg"),
                        SizedBox(width: 10,),
                        Text("10 October", style: TextStyle(
                            color: Color(0xff524B6B),
                            fontSize: 12,
                            fontFamily: 'SatoshiMedium'
                        ),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SvgPicture.asset("assets/JPImages/profileImages/watchIcon.svg",
                          color: Color(0xff524B6B),),
                        SizedBox(width: 10,),
                        Text("12:00 pm", style: TextStyle(
                            color: Color(0xff524B6B),
                            fontSize: 12,
                            fontFamily: 'SatoshiMedium'
                        ),),
                        SizedBox(width: 18,),
                        SvgPicture.asset("assets/JPImages/profileImages/available.svg"),
                        SizedBox(width: 10,),
                        Text("Availabe", style: TextStyle(
                            color: Color(0xff524B6B),
                            fontSize: 12,
                            fontFamily: 'SatoshiMedium'
                        ),),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(child: SizedBox()),
              Container(
                width: double.infinity,
                height: 36,
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                    color: Color(0xffD9D9D9),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)
                    )
                ),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/JPImages/profileImages/byUser.svg"),
                    SizedBox(width: 6,),
                    Text("By Hotel", style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff524B6B),
                        fontFamily: 'SatoshiMedium'
                    ),),
                    Expanded(child: SizedBox()),
                    Text("₹2K/Hr", style: TextStyle(
                        fontFamily: 'SatoshiMedium'
                    ),)
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 20,),
        Container(
          width: double.infinity,
          height: 210,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    SizedBox(height: 12,),
                    Row(
                      children: [
                        Image.asset("assets/JPImages/profileImages/tajImage.png",
                          width: 50,
                        ),
                        SizedBox(width: 12,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Waiter", style: TextStyle(
                                color: Color(0xff150B3D),
                                fontFamily: 'SatoshiBold'
                            ),),
                            Text("Taj Hotel . Mumbai", style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff524B6B),
                                fontFamily: 'SatoshiMedium'
                            ),)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 6,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 66),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset("assets/JPImages/profileImages/persons.svg"),
                        SizedBox(width: 10,),
                        Text("03/05", style: TextStyle(
                            color: Color(0xff524B6B),
                            fontSize: 12,
                            fontFamily: 'SatoshiMedium'
                        ),),
                        SizedBox(width: 32,),
                        SvgPicture.asset("assets/JPImages/profileImages/calendor2.svg"),
                        SizedBox(width: 10,),
                        Text("10 October", style: TextStyle(
                            color: Color(0xff524B6B),
                            fontSize: 12,
                            fontFamily: 'SatoshiMedium'
                        ),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SvgPicture.asset("assets/JPImages/profileImages/watchIcon.svg",
                          color: Color(0xff524B6B),),
                        SizedBox(width: 10,),
                        Text("12:00 pm", style: TextStyle(
                            color: Color(0xff524B6B),
                            fontSize: 12,
                            fontFamily: 'SatoshiMedium'
                        ),),
                        SizedBox(width: 18,),
                        SvgPicture.asset("assets/JPImages/profileImages/available.svg"),
                        SizedBox(width: 10,),
                        Text("Availabe", style: TextStyle(
                            color: Color(0xff524B6B),
                            fontSize: 12,
                            fontFamily: 'SatoshiMedium'
                        ),),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(child: SizedBox()),
              Container(
                width: double.infinity,
                height: 36,
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                    color: Color(0xffD9D9D9),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)
                    )
                ),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/JPImages/profileImages/byUser.svg"),
                    SizedBox(width: 6,),
                    Text("By Hotel", style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff524B6B),
                        fontFamily: 'SatoshiMedium'
                    ),),
                    Expanded(child: SizedBox()),
                    Text("₹2K/Hr", style: TextStyle(
                        fontFamily: 'SatoshiMedium'
                    ),)
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
