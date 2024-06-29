import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:badges/badges.dart' as badges;
import 'package:percent_indicator/linear_percent_indicator.dart';

class AboutApplicant extends StatefulWidget {
  const AboutApplicant({super.key, required int index});

  @override
  State<AboutApplicant> createState() => _AboutApplicantState();
}

class _AboutApplicantState extends State<AboutApplicant> {
  late String _currentText;
  var odc = 15;

  final Map<String, dynamic> userData = {
    "userName": "Hritik Chauhan",
    "odcValue": 15,
    "likeNo": 12,
    "postNo" : 45,
    "followers" : 100,
    "following" : 63,
    "mobileNo": "+91 22-6665 3366",
    "email": "reservations.mumbai@ihcltata.com",
    "location": "Apollo Bunder, Mumbai, Maharashtra, 400 001, India",
    "gstin": "27AAACT3957G1Z7",
    "shareNo": 2,
  };

  bool _isLiked = false;
  var rating = 4.5;
  var recommendedPer = 88;
  var reviewNo = 21;
  var managerName = "Suraj Sinha";
  var position = "Manager";
  var hotelName = "Taj Hotel - Mumbai";
  var date = "Nov 09, 2023";

  @override
  void initState() {
    super.initState();
    _currentText = "About";
  }

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      body: Column(
        children: [
          Column(
            children: [
              SizedBox(height: mQuery.size.height * 0.04),
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
              ProfilePicture(
                  fontsize: 10,
                  name: "",
                  radius: 40,
                  img: "https://s3-alpha-sig.figma.com/img/05be/041b/58b5e1fe37be4a6bb5a74f76d7c0f06d?Expires=1714348800&Key-Pair-Id=APKAQ4GOSFWCVNE"
                      "HN3O4&Signature=ivO3l0v6Bw58oqGD9-njv-YDkK3ZrUmkvoNEhB2qxJzD56MHYJeb~tAWjlbT9TuDQQ~PhrxeIQIucD1pqOoiOH3BSo9R2DtsLoHo6GMdOH83fK0BFhKymnJKXNCa56quvNQRruD9cRcWxIf8TJoOANyNBeaLv6sgwlqzc7BlN04g6L5I~SiOsMT8cxLLjBEvhZ4EvI2PC3QI6AV4dMGKOyQQSg2BvgnFunJQB6EupI2bz8eUPZxVjiK0D8VluyDFSIIDRNfexQNIk-Xe35A71TIYivKrfOfbj69QIcmTgFOuuQkYt-fIzWu-uKP74KM3OuI4sGiqPQI9zQMBJopS-Q__",
                ),
              SizedBox(height: mQuery.size.height*0.02,),
              Center(
                child: Text(userData["userName"],style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoBold'
                ),),
              ),
              SizedBox(height: mQuery.size.height*0.02,),
              Center(
                child: Container(
                  width: mQuery.size.width*0.23,
                  height: mQuery.size.height*0.05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xffFFD6AD)
                  ),
                  child: Center(
                    child: Text("Follow",style: TextStyle(
                      color: Color(0xff130160),
                      fontSize: 13,
                      fontFamily: 'RobotoBold'
                    ),),
                  ),
                ),
              ),

              SizedBox(height: mQuery.size.height * 0.02),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: mQuery.size.width*0.1
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(userData["postNo"].toString(),style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff0D0140),
                          fontFamily: "RobotoBold"
                        ),
                        ),
                        Text("Posts",style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff0D0140),
                            fontFamily: "RobotoBold"
                        ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(userData["followers"].toString(),style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff0D0140),
                            fontFamily: "RobotoBold"
                        ),
                        ),
                        Text("Followers",style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff0D0140),
                            fontFamily: "RobotoBold"
                        ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(userData["following"].toString(),style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff0D0140),
                            fontFamily: "RobotoBold"
                        ),
                        ),
                        Text("Following",style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff0D0140),
                            fontFamily: "RobotoBold"
                        ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: mQuery.size.height*0.023,),

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
                            color: Color(0xff0D0140),
                          ),
                          child: Center(
                            child: Text("Message",style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 12,
                              fontFamily: 'RobotoBold'
                            ),)
                          ),
                        ),
                        Container(
                          width: 155,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xfffae4cf),
                          ),
                          child: Center(
                            child: Text(
                              "ODC Completed - $odc",
                              style: TextStyle(
                                color: Color(0xffFF9228),
                                fontFamily: 'RobotoBold',
                                fontSize: 12,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: mQuery.size.height * 0.04),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 3),
                      child: CupertinoSegmentedControl(
                        borderColor: Colors.white,
                        children: {
                          "About": Container(
                            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                            decoration: BoxDecoration(
                              color: _currentText == "About" ? Color(0xffFCA34D) : Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "About",
                                style: TextStyle(
                                  fontFamily: 'RobotoBold',
                                  color: _currentText == "About" ? Colors.white : Colors.black,
                                ),
                              ),
                            ),
                          ),
                          "Post": Container(
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
                                  fontFamily: 'RobotoBold',
                                ),
                              ),
                            ),
                          ),
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
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.045),
              child: ListView(
                children: [
                  if (_currentText == "About") ...{
                    AboutContainer(context),
                  } else if (_currentText == "Post") ...{
                    PostContainer(context),
                  }
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget AboutContainer(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("About Hritik", style: TextStyle(
            color: Color(0xff150B3D),
            fontFamily: 'RobotoBold'
        ),),
        SizedBox(height: 16,),
        Text("Built in 1973, the iconic The Taj Hotel Mumbai stands majestically across from the Gateway of India, overlooking the Arabian Sea. The Tower stands in harmonious contrast to The Taj Mahal Palace with its arched balconies and newly refurbished rooms. Sprawling over 2.6 acres, this luxurious hotel features 10 restaurants and a variety of traditional Indian therapies at Jiva Spa.",
          style: TextStyle(
              fontSize: 12,
              fontFamily: 'RobotoMedium',
              color: Color(0xff524B6B)
          ),),
        SizedBox(height: mQuery.size.height*0.023,),
        Container(
          width: mQuery.size.width*0.44,
          height: mQuery.size.height*0.045,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Color(0xffFFE1D5)
          ),
          child: Center(
            child: Text('View Applicant CompanyProfile',style: TextStyle(
              fontSize: 12,
              fontFamily: 'RobotoBold'
            ),),
          ),
        ),
        SizedBox(height: mQuery.size.height*0.023,),
        Text("Contacts", style: TextStyle(
            color: Color(0xff150B3D),
            fontFamily: 'RobotoBold'
        ),),
        SizedBox(height : mQuery.size.height*0.012,),
        Row(
          children: [
            Image.asset("assets/JPImages/profileImages/Call.png"),
            SizedBox(width: 23,),
            Text("${userData["mobileNo"]}", style: TextStyle(
                fontSize: 12,
                fontFamily: 'RobotoMedium',
                color: Color(0xff524B6B)
            ),)
          ],
        ),
        Row(
          children: [
            Image.asset("assets/JPImages/profileImages/email.png"),
            SizedBox(width: 23,),
            Text("${userData["email"]}", style: TextStyle(
                fontSize: 12,
                fontFamily: 'RobotoMedium',
                color: Color(0xff524B6B)
            ),)
          ],
        ),
        SizedBox(height: mQuery.size.height*0.032,),
        Center(
          child: Text("Ratings & Reviews (21)",style: TextStyle(
            fontFamily: 'RobotoBold',
            fontSize: 20,
            color: Colors.black
          ),),
        ),
        SizedBox(height: mQuery.size.height*0.016,),
        Center(
          child: Text("Summary",style: TextStyle(
            fontSize: 16,
            fontFamily: 'RobotoMedium',
            color: Colors.black
          ),),
        ),
       SizedBox(height: mQuery.size.height*0.012,),
       Row(
         children: [
           Container(
             width: mQuery.size.width*0.6,
             child: Column(
               children: [
                 LinearPercentIndicator(
                   progressColor: Color(0xffFFB400),
                   lineHeight: 8,
                   percent: 1,
                   leading: Text("5",style: TextStyle(
                     color: Colors.black,
                     fontFamily: 'RobotoMedium'
                   ),),
                 ),
                 SizedBox(height: mQuery.size.height*0.016,),
                 LinearPercentIndicator(
                   lineHeight: 8,
                   percent: 0.8,
                   progressColor: Color(0xffFFB400),
                   leading: Text("4",style: TextStyle(
                       color: Colors.black,
                       fontFamily: 'RobotoMedium'
                   ),),
                 ),
                 SizedBox(height: mQuery.size.height*0.016,),
                 LinearPercentIndicator(
                   progressColor: Color(0xffFFB400),
                   lineHeight: 8,
                   percent: 0.6,
                   leading: Text("3",style: TextStyle(
                       color: Colors.black,
                       fontFamily: 'RobotoMedium'
                   ),),
                 ),
                 SizedBox(height: mQuery.size.height*0.016,),
                 LinearPercentIndicator(
                   progressColor: Color(0xffFFB400),
                   lineHeight: 8,
                   percent: 0.4,
                   leading: Text("2",style: TextStyle(
                       color: Colors.black,
                       fontFamily: 'RobotoMedium'
                   ),),
                 ),
                 SizedBox(height: mQuery.size.height*0.016,),
                 LinearPercentIndicator(
                   progressColor: Color(0xffFFB400),
                   lineHeight: 8,
                   percent: 0.1,
                   leading: Text("1",style: TextStyle(
                       color: Colors.black,
                       fontFamily: 'RobotoMedium'
                   ),),
                 ),
                 SizedBox(height: mQuery.size.height*0.023,),
               ],
             ),
           ),
           Expanded(child: SizedBox()),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Row(
                 children: [
                   Text("$rating",style: TextStyle(
                     fontSize: 24,
                     fontFamily: 'RobotoMedium',
                     color: Colors.black
                   ),),
                   RatingBar.builder(
                     initialRating: 1,
                     minRating: 1,
                     direction: Axis.horizontal,
                     allowHalfRating: true,
                     itemCount: 1,
                     itemSize: 20,
                     itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                     itemBuilder: (context, _) => Icon(
                       Icons.star,
                       color: Color(0xffFFB400),
                     ),
                     onRatingUpdate: (rating) {
                       print(rating);
                     },
                   )
                 ],
               ),
               Text("$reviewNo Reviews",style: TextStyle(
                  color: Color(0xff9e9e9e),
                 fontFamily: 'SatoshiMedium',
                 fontSize: 12
               ),
               ),
               SizedBox(height: mQuery.size.height*0.036,),
               Text("$recommendedPer%",style: TextStyle(
                   fontSize: 24,
                   fontFamily: 'RobotoMedium',
                   color: Colors.black
               ),),
               Text("Recommended",style: TextStyle(
                   color: Color(0xff9e9e9e),
                   fontFamily: 'RobotoMedium',
                   fontSize: 12
               ),)
             ],
           )
         ],
       ),
        SizedBox(height: mQuery.size.height*0.023,),
        Container(
          width: double.infinity,
          height: mQuery.size.height*0.065,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xffe0e0e0),
            ),
            borderRadius: BorderRadius.circular(5)
          ),
          child: Center(
            child: Text('Write a review',style: TextStyle(
              color: Color(0xff0D0140),
              fontSize: 16,
              fontFamily: 'RobotoMedium'
            ),),
          ),
        ),
        SizedBox(height: mQuery.size.height*0.01,),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "Product reviews are managed by a third party to verify \n",style: TextStyle(
                  fontSize: 11,
                  fontFamily: 'RobotoMedium',
                color: Color(0xff9e9e9e),
              )
              ),
              TextSpan(
                  text: "authenticity and compliance with our",style: TextStyle(
                fontSize: 11,
                fontFamily: 'RobotoMedium',
                color: Color(0xff9e9e9e),
              )
              ),
              TextSpan(
                  text: " Ratings & Reviews\n",style: TextStyle(
                fontSize: 11,
                decoration: TextDecoration.underline,
                decorationColor: Color(0xff42A5F5),
                decorationThickness: 2,
                fontFamily: 'RobotoMedium',
                color: Color(0xff42A5F5),
              )
              ),
              TextSpan(
                  text: "Guidelines",style: TextStyle(
                fontSize: 11,
                decoration: TextDecoration.underline,
                decorationColor: Color(0xff42A5F5),
                decorationThickness: 2,
                fontFamily: 'RobotoMedium',
                color: Color(0xff42A5F5),
              )
              )
            ]
          )
        ),
        Divider(
          color: Colors.grey.shade300,
        ),
        SizedBox(height: mQuery.size.height*0.012,),
        Center(
          child: Text('CompanyProfile Reviews',style: TextStyle(
             fontSize: 24,
            fontFamily: 'RobotoMedium',
            color: Colors.black
          ),),
        ),
        SizedBox(height: mQuery.size.height*0.023,),
        Row(
          children: [
            ProfilePicture(name: "",
                radius: 16,
              fontsize: 10,
              img: "https://s3-alpha-sig.figma.com/img/af80/c648/e5204e7c665b50c448dcec76883f6f61?Expires=1714348800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=F7zF6GeV-V4ww60GrlPmKCiBmoXgazB~StYKHuaE5qFVmLNhje9DsdZB6-Rl1unQujqf-AQkRPSq3LtPVkULN6wqzPtx7QwIo4u7gZ3~C0wQxaheUh3z66Hl20MV8uI6-2uE9tcA-3VmRoqgf3l3~UDIfjlc17TWf2F4ovu9MOid6QGV1MKJ3P3wHjZSFZMAyqUkzkCr7zlSDVtFgr5Q4PIKHGHl7uRxtwr3nBPXTOvyJ6qnJmONQm2L9XKKLVwrg8~uwoXsEhNy~5AgQblEQcGm6JwkIFjLamtUBhGgPyA5c0eisrMkm8lAuP6UnEOB9IUny1DQ5KUVOkwZOgBaFQ__",
            ),
            SizedBox(width: mQuery.size.width*0.02,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("$managerName - $position",style: TextStyle(
                   fontFamily: 'RobotoBold',
                  fontSize: 12,
                  color: Colors.black
                ),
                ),
                Text("$hotelName",style: TextStyle(
                   fontSize: 10,
                  color: Color(0xff0D0140),
                  fontFamily: 'RobotoMedium'
                ),)
              ],
            ),
            Expanded(child: SizedBox()),
            RatingBar.builder(
              initialRating: 5,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 18,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Color(0xffFFB400),
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            )
          ],
        ),
        SizedBox(height: mQuery.size.height*0.016,),
        Padding(
          padding: EdgeInsets.only(
            left: mQuery.size.width*0.1
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Experienced Chef',style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'RobotoMedium'
              ),
              ),
              SizedBox(height: mQuery.size.height*0.016,),
              Text("Incredible culinary experience! Chef Hritik is a true artist in the kitchen. Unforgettable flavors, beautiful presentation, and top-notch service. A must-visit.",style: TextStyle(
                fontSize: 12,
                fontFamily: 'RobotoMedium'
              ),
              ),
              SizedBox(height: mQuery.size.height*0.023,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network("https://s3-alpha-sig.figma.com/img/23f6/e1ba/eae82513e0fd631904844e58799f63cd?Expires=1714348800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=gdzjA6iNkIRxohBBPqpwiJX~PdbD11P0~2vfWg7w-PadmSiSCOFFmCc8oRx3t2Da5bDLFtxjyKJB3oeXWqyx0u7ano51yh2SAyTfPmhPUuNPHMw-p5q24xwVwwbrWsBqVY78OO4cKnqdEvW-uU1UNfh9wWhouB0RMGrr49OX7NL8fQ9RKYbkbHDoc9ApH8zsD4XTCRlZK-fDi85B9Vi5SxrFSkm4s~tNtZ-bogK2EhUb-WHTnslRJ7C1iu3rugtrMkYopwVkastEbkbY58tUbFkr6jyKpwZ115CKYMvCmbEj0mtekHWl3EIEppyNNjT0uMnk4rut3QzRpItXYBOoZQ__",
                    width: 70,
                  ),
                  Image.network("https://s3-alpha-sig.figma.com/img/a6aa/9460/56693657cab7a07bb11e9d9e2e80bc4c?Expires=1714348800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=oTpglrGEhTyW3b8kTkoWiJtu5mRaLEiokEZYW~S-wbnyjtYa4wo5q6BGe8YUTt6lII4VVVAbQaB70sv-WgtiM3nJYTBDsBzHtbbBuWpBTensB0kU7weksebFswNDBKddHTbBpsF4bTAfo2080Rwew-unLbLNHirjAUDinoQSxT3hRPV0rzQ4ULkKKmvKpQ~~QDeBdUakcsCaeEbrGJLTmZIpetQKCnd3UAJWtqlUalYlhPoLea1l5QksyTbj7qNDCcM1253-tdjm2CCmrFx1tp3y05kd9m3vj0crPNZlBKF6foYrT8LQBbzwAg7K~HVilFxuvRgDGJDv4fUGWLWtng__",
                   width: 70,),
                  Image.network("https://s3-alpha-sig.figma.com/img/3481/e008/30517b6bd362c2b35c0353913caf40ed?Expires=1714348800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=J4ikULIruM~3O8I2uo3bjkPrOeLKZTiHZz-U6u5aUrWD1hRUGDGNsCbE9CFeyfOEf9M8E7FgAa6DPr0oWeiqTs1WO7w2CBKTedSEbcE1P08FMdHZ2OgT2u~FpTtK3We~WQLqNHHx7v16Z8zPEnMDQdyb8rc8QWgOFWJBYFMzbcsr9MzGmH54DgiOXmM~1xhEJwrvAQhN1oB9EnxhYQdhO-dVK0CxwyGjegiARdUlHYuDtjUQjqmn1y3d0TFcRwTnP8-6dt5upFJlaz~IixWrgKbKI4p1AAdyMXSe3UtJ6c-cA9Y9ELDR0bwQW5Lr3L5csey05LnDHEmASi-~7x-LEg__",
                   width: 70,),
                  Image.network("https://s3-alpha-sig.figma.com/img/76af/9ee3/7cecec4303e9e0c99c945fc712631353?Expires=1714348800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=lB2aYOxFC5W5qbWFPSGq9dQ9Z-7plAjyDamQlLYGuqWmX-KqckiWmqQs2WoRNrsddgfdL8E3~abNlq2gLRolNmDRbhYv~NOvJyqV1oJsljNe0rn~v3WIsqBHZHs-M1TrC67mJGufB06aBKgKPpj23gqvCjeLH8d9vOWJ--PoV7FINuTjokhWk7SpCM8qu9Z2NiDf9~euEbl4qbRPjr16GYra7JgK6kwBhe0VnLwePf2HtdtFGHYho0nawZecy32UBqlOhbCBBsla-0~mZa1VMRpx9-wB7FHHRP7SsIqENMsNtXHKBPAOo0ve9edOO2fD-ftuvjg~xON7XIbr82uCow__",
                   width: 70,)
                ],
              ),
              SizedBox(height: mQuery.size.height*0.023,),
              Row(
                children: [
                  Text("Helpful ?",style: TextStyle(
                    color: Color(0xff9e9e9e),
                    fontSize: 12,
                    fontFamily: 'RobotoMedium'
                  ),),
                  SizedBox(width: mQuery.size.width*0.03,),
                  Text("Yes (2)",style: TextStyle(
                      color: Color(0xff9e9e9e),
                      fontSize: 12,
                      fontFamily: 'RobotoMedium'
                  ),),
                  SizedBox(width: mQuery.size.width*0.01,),
                  Container(
                    height: 14,
                      child: VerticalDivider(
                        thickness: 1,
                        color: Color(0xff9e9e9e),
                      )),
                  Text("No (0)",style: TextStyle(
                      color: Color(0xff9e9e9e),
                      fontSize: 12,
                      fontFamily: 'RobotoMedium'
                  ),),
                  Expanded(child: SizedBox()),
                  Text("$date",style: TextStyle(
                      color: Color(0xff9e9e9e),
                      fontSize: 12,
                      fontFamily: 'RobotoMedium'
                  ),),
                ],
              )
            ],
          ),
        ),
        Divider(color: Colors.grey.shade300),
        SizedBox(height: mQuery.size.height*0.03,),
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(
            horizontal: mQuery.size.width*0.12
          ),
          height: mQuery.size.height*0.06,
          decoration: BoxDecoration(
            color: Color(0xff130160),
            borderRadius: BorderRadius.circular(6)
          ),
          child: Center(
            child: Text("BOOK NOW FOR ODC EVENT ",style: TextStyle(
              color: Colors.white,
              fontFamily: 'RobotoBold'
            )),
          ),
        )
      ],
    );
  }

  Widget PostContainer(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 432,
          padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Row(
                children: [
                  ProfilePicture(
                    fontsize: 10,
                    radius: 20,
                    name: '',
                    img: "https://s3-alpha-sig.figma.com/img/05be/041b/58b5e1fe37be4a6bb5a74f76d7c0f06d?Expires=1714348800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ivO3l0v6Bw58oqGD9-njv-YDkK3ZrUmkvoNEhB2qxJzD56MHYJeb~tAWjlbT9TuDQQ~PhrxeIQIucD1pqOoiOH3BSo9R2DtsLoHo6GMdOH83fK0BFhKymnJKXNCa56quv"
                        "NQRruD9cRcWxIf8TJoOANyNBeaLv6sgwlqzc7BlN04g6L5I~SiOsMT8cxLLjBEvhZ4EvI2PC3QI6AV4dMGKOyQQSg2BvgnFunJQB6EupI2bz8eUPZxVjiK0D8VluyDFSIIDRNfexQNIk-Xe35A71TIYivKrfOfbj69QIcmTgFOuuQkYt-fIzWu-uKP74KM3OuI4sGiqPQI9zQMBJopS-Q__",
                  ),
                  SizedBox(width: 16,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(userData["userName"], style: TextStyle(
                          fontFamily: 'RobotoBold',
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
                              fontFamily: 'RobotoMedium',
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
                              fontFamily: 'RobotoMedium',
                              color: Color(0xff524B6B)
                          )
                      ),
                      TextSpan(text: "Read More",
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'RobotoMedium',
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
                  fontFamily: 'RobotoBold',
                  color: Color(0xff150B3D)
              ),),
              Text("Youtube.com", style: TextStyle(
                  fontSize: 10,
                  color: Color(0xff150B3D),
                  fontFamily: 'RobotoMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.016,),
              Container(
                width: double.infinity,
                height: 60,

                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Color(0xffece7fc),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)
                  )
                ),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/JPImages/profileImages/likeIcon.svg"),
                    SizedBox(width: 6,),
                    Text("${userData["likeNo"]}", style: TextStyle(
                        fontSize: 10,
                        fontFamily: 'RobotoMedium',
                        color: Color(0xff6F6B80)
                    ),),
                    Expanded(child: SizedBox()),
                    SvgPicture.asset("assets/JPImages/profileImages/shareIcon.svg",
                      color: Color(0xff6F6B80),),
                    SizedBox(width: 6,),
                    Text("${userData["shareNo"]}", style: TextStyle(
                        fontSize: 10,
                        color: Color(0xff6F6B80),
                        fontFamily: 'RobotoMedium'
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

