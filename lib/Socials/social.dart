import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter_svg/svg.dart';
import 'package:like_button/like_button.dart';

class Social extends StatefulWidget {
  const Social({Key? key}) : super(key: key);

  @override
  State<Social> createState() => _SocialState();
}

class _SocialState extends State<Social> {

  bool isPostOption = false;

  // Define your list of data
  final List<Map<String, dynamic>> hotelData = [
    {
      "image": "assets/Social Images/taj.png",
      "name": "Hotel Taj",
      "followers": "1M Followers",
    },
    {
      "image": "assets/Social Images/klm.png",
      "name": "KLM Hotel",
      "followers": "1M Followers",
    },
    {
      "image": "assets/Social Images/grandHotel.png",
      "name": "Grand Hotel",
      "followers": "1M Followers",
    },
    {
      "image": "assets/Social Images/royalHotel.png",
      "name": "Royal Hotel",
      "followers": "1M Followers",
    },
    {
      "image": "assets/Social Images/pananini.png",
      "name": "Panini Hotel",
      "followers": "1M Followers",
    },
    {
      "image": "assets/Social Images/halcon.png",
      "name": "Halcon Hotel",
      "followers": "1M Followers",
    },
  ];

  final List<Map<String, dynamic>> users = [
    {
      "profileImage": "https://s3-alpha-sig.figma.com/img/9bfc/c3c0/f06ca2928cc089db93641820bd4a8938?Expires=1716163200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=X5uRb1ODEiyCPQLR-wp5wWxc-HXiYOa7vb6U-0l6M4hIhxrc7YekJAkY3hDVBylBRLGiBnOuJiMzZ0~oxbTyjqPfIj9Zw2fVSmiJcdsePmjFz4pz92ZXNJ3Z7e2~4WRoNzxydwbPL6YBiJzfvW21bKiAuo56NY~aa56hHvG9IsTJSD7QZD5RFeI77GDhBMNW0KGCg-6UeeXiAc3UshITgxwL7l5tUh~oRnLq-RUbb2u2sa4kiwMp7qolGacauYjzw5o6iFiCHoI0XqBckzB3p3X8faiFCy65Gu6Ud"
          "s4VSglPbC28jDR1MWLM46TR1GMsSOnXEC03jE3hnCs5Z3xIAA__",
      "author": "Arnold Leonardo",
      "time": "21 minuts ago",
      "post": "What are the characteristics of a fake job call form?",
      "content": "Because I always find fake job calls so I'm confused which job to take can you share your knowledge here? thank you",
      "commentCount": "2",
      "shareCount": "2",
    },
    {
      "profileImage": "https://s3-alpha-sig.figma.com/img/7975/0d78/f41030dd53cc55a265836f6e9aebd6d8?Expires=1716163200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=S1GcFrTcMk72fX5zBS6psrAmFo1drLsghzWNW3jJG78WPF1BEAjBQnNhay77nlpEdnXfhrBna7HSK4ges-J~Ntq3hac8XVwbBkzicTweYlXUKDdCGFJxaWwSa5TNCrU-Ek5vFnIJw3VV6QaY-k4Az4uMW3vo642Bd3Ym1Z9gWBkjVofs8owdKos3dSmB6fA4SXYVdKQjaGvJ5IsOx~gFb5VE5P87ohCDPfgnmKMWWIEXhAQDlIXY8txiV7FVkMZW~SrwueQnmFYFEjd44TNeNddJZyYK4Y1iAWZNF8x~Ld"
          "JCTkFojsxcCwJy0tcgmOomWwmr~3sAAQS5Lt5rOdbz~Q__",
      "author": "Monica",
      "time": "21 minuts ago",
      "post": "Experience when moving to a new job",
      "content": "Culture shock when moving to a new job is normal. This is not something wrong and I personally experienced it, when I experienced this when I changed jobs in 2 days",
      "commentCount": "2",
      "shareCount": "2",
    },
  ];


  int _likeCount = 0;
  int _likeCount2 = 0;

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.045),
        child: Column(
          children: [
            SizedBox(height: mQuery.size.height * 0.035),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.keyboard_backspace_rounded),
                  onPressed: () {
                    // Add your back button functionality here
                  },
                ),
                isPostOption ? Container() : IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: () {
                    // Add your more vert icon functionality here
                  },
                ),
              ],
            ),
            isPostOption ? Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: users.map((userData) {
                    return Container(
                      width: double.infinity,
                      height: mQuery.size.height * 0.35,
                      margin: EdgeInsets.only(
                        bottom: mQuery.size.height*0.023
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: mQuery.size.width * 0.045,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: mQuery.size.height * 0.032),
                                Row(
                                  children: [
                                    ProfilePicture(
                                      name: "",
                                      fontsize: 10,
                                      radius: 25,
                                      img: userData["profileImage"],
                                    ),
                                    SizedBox(width: mQuery.size.width * 0.032),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          userData["author"],
                                          style: TextStyle(
                                            color: Color(0xff150B3D),
                                            fontSize: 12,
                                            fontFamily: 'RobotoBold',
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                              "assets/JPImages/profileImages/watchIcon.svg",
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                              userData["time"],
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontFamily: 'RobotoMedium',
                                                color: Color(0xffAAA6B9),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Expanded(child: SizedBox()),
                                    Icon(Icons.more_vert),
                                  ],
                                ),
                                SizedBox(height: mQuery.size.height * 0.02),
                                Text(
                                  userData["post"],
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff150B3D),
                                    fontFamily: 'RobotoBold',
                                  ),
                                ),
                                SizedBox(height: mQuery.size.height * 0.023),
                                Text(
                                  userData["content"],
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'RobotoMedium',
                                    color: Color(0xff524B6B),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          Container(
                            width: double.infinity,
                            height: mQuery.size.height * 0.06,
                            padding: EdgeInsets.symmetric(
                                horizontal: mQuery.size.width * 0.045),
                            decoration: BoxDecoration(
                                color: Color(0xffece7fc),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Row(
                              children: [
                                LikeButton(
                                  onTap: (bool isLiked) {
                                    setState(() {
                                      _likeCount += isLiked ? -1 : 1;
                                    });
                                    return Future.value(!isLiked);
                                  },
                                  likeBuilder: (bool isLiked) {
                                    return Icon(
                                      isLiked ? Icons.favorite : Icons.favorite_border,
                                      color: isLiked ? Colors.red : null,
                                    );
                                  },
                                ),
                                Text(
                                  "$_likeCount",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff6F6B80),
                                    fontFamily: 'RobotoMedium',
                                  ),
                                ),
                                SizedBox(width: mQuery.size.width * 0.06),
                                SvgPicture.asset("assets/Social Images/commentIcon.svg"),
                                SizedBox(width: mQuery.size.width * 0.023),
                                Text(
                                  userData["commentCount"],
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff6F6B80),
                                    fontFamily: 'RobotoMedium',
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                                SvgPicture.asset(
                                  "assets/JPImages/profileImages/shareIcon.svg",
                                  color: Color(0xff6F6B80),
                                ),
                                SizedBox(width: mQuery.size.width * 0.023),
                                Text(
                                  userData["shareCount"],
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff6F6B80),
                                    fontFamily: 'RobotoMedium',
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            )
                : Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: mQuery.size.width * 0.045,
                mainAxisSpacing: mQuery.size.height * 0.023,
                children: List.generate(hotelData.length, (index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(hotelData[index]["image"]),
                        SizedBox(height: mQuery.size.height * 0.01),
                        Text(
                          hotelData[index]["name"],
                          style: TextStyle(
                            color: Color(0xff0D0140),
                            fontFamily: 'RobotoBold',
                          ),
                        ),
                        SizedBox(height: mQuery.size.height * 0.01),
                        Text(
                          hotelData[index]["followers"],
                          style: TextStyle(
                            color: Color(0xffAAA6B9),
                            fontSize: 12,
                            fontFamily: 'RobotoMedium',
                          ),
                        ),
                        SizedBox(height: mQuery.size.height * 0.016),
                        Container(
                          width: mQuery.size.width * 0.26,
                          height: mQuery.size.height * 0.035,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xff7551FF)),
                          ),
                          child: Center(
                            child: Text(
                              "Follow",
                              style: TextStyle(
                                color: Color(0xff0D0140),
                                fontSize: 12,
                                fontFamily: 'RobotoMedium',
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                // Just for testing ///////
                GestureDetector(
                  onTap: ()
                  {
                    setState(() {
                      isPostOption = !isPostOption;
                    });
                  },
                  child: Container(
                    width: mQuery.size.width*0.43,
                    height: mQuery.size.height*0.045,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xffD6CDFE)
                    ),
                    child: Center(
                      child: Text("Feed",style: TextStyle(
                        color: Color(0xff130160),
                        fontFamily: 'RobotoBold'
                      ),),
                    ),
                  ),
                ),
                Container(
                  width: mQuery.size.width*0.43,
                  height: mQuery.size.height*0.045,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xff130160)
                  ),
                  child: Center(
                    child: Text("My connection",style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'RobotoBold'
                    ),),
                  ),
                ),
              ],
            ),
            SizedBox(height: mQuery.size.height*0.032,)
          ],
        ),
      ),
    );
  }
}
