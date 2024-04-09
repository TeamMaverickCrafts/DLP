import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FollowersPage extends StatefulWidget {
  const FollowersPage({Key? key}) : super(key: key);

  @override
  State<FollowersPage> createState() => _FollowersPageState();
}

class _FollowersPageState extends State<FollowersPage> {
  TextEditingController searchController = TextEditingController();

  // Define your map of followers
  final List<Map<String, dynamic>> followers = [
    {
      'name': 'Mike Mazo',
      'image': 'https://s3-alpha-sig.figma.com/img/89c9/d898/0915363a2c70375926d3e4a60ea94e15?Expires=1712534400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=PZy1yJWfgiMkYWvAzaoy5ZKgZZRgL7mHkV~bvgXDUFjiurpFQaSsH6l7whL4nn96aXuRgP15ngWMHHOXkcFrLDWL1qYqgKJk97XFUBO2cXCNHZfmbt2XDApVrds3dx05P19RfAqAweqL9gbqTjgyDc65mbHTQ3~GjebhuOltlLwPzdwAKOsuFoXzS17~J1dLGElbGYFYyHDIjTd6qwvxr1fUJJvSmibjpQ6vXh4c5iA1I5HJ98O7X21SXD4Lfr9Ji5KBhh59ZRK6oHHjaYuzdeTgMgKM4zJxFGXYKXBdhNROXigHnBydJpYEzKJ0tciO13H2qLRdKyiRt~gzHP~U5g__',
    },
    {
      'name': 'Marvin Esro',
      'image': 'https://s3-alpha-sig.figma.com/img/e235/a8bb/1492b144ee67684e05d7dd970dee8479?Expires=1712534400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=O0m0anZFQQDgbz9PwZ9Xi3S0Jq3x-Vxs2OIfmitAQx7ev5oSQ5v~46ofaid7x1~p4AjRNb8fR0aKd69sj2gH5Su-mf68ayLNv-fcGJ8~yL3VIoDGQ4gbraREKE41NDrkwpfgidIMPi0lhE0CkCk5rHBaw~cKF35sbkPOoAZfaB73jDQ16uzg3uocGlt1k3q2cA~soJ8CKL56RILFDz6pyPvH2HD7mznzGl59oLbbJ8QZ8z3QS5gYjLj3yCshVqpDYvLuOpVQhPH0ln49Mc8LJQ2vXCYsp61z2NDXVd6jVehCQzyljDVhXf60Npul706Fhxn5cPjDVbTx3P~1LLOQxQ__',
    },
    {
      'name': 'Gregory Robert',
      'image': 'https://s3-alpha-sig.figma.com/img/bd7d/a1cc/cb4c9c747cd5aa06ca16a3cf66d39315?Expires=1712534400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=UyTS8HD4QgaSZE~yOOdUaHdjxMLV4CQmvBLcbz17H9jERyQRuPXde9FnWWpZ2yKzDEa03kcgGwlUx~k2yREMQFIOLfMM7bzG2hPqSniut91Z1~DXxUTlPJGg9qD~Q0Eil2IoSIIXGaXfWEOdL-1~W0l3UbtqjsxgAS3Gd7entYiLeelZXcChMD-tNBJmm21BCk1qbX3WTiH3cMpFGDRTjBqmbTd7EdB5X50fyaBGKPgybk6tfpcF9pqIUaAqUfmK8OU~Bl0bqWhZcQLyHBtlZDMm6WliWMI7HWfj4vClEsxdwI2LiU8RLUirVAzj3cOz0bzv9u77pgiFCsFETqridQ__',
    },
    {
      'name': 'Samuel Wits',
      'image': 'https://s3-alpha-sig.figma.com/img/0d16/e5a0/046f7426ff666be54216de42c4d93e9d?Expires=1712534400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=N3w4uAaS7M0WtI5WG1y~Z57CMiJIsEkd9hqKF6mKiRy5Lv4Sy8qpyJdcBoWHHAaCtMd-wZk2B0s0YzE8e44szzhO3gwh-p1~fIJYrp9WaTUQ5PxXQn8FXYI2crTmN350zA0hAM9T6Mr6eE0SZJXFpKq9LXQRbCwcECvFDu95qbPa9mcVBsxBOt6VASckf-LhO3Vz5iPP0FnU~2W4m1dQKNYXVA8ymv~Edze5KL0JctVeu6U5UeKhwRNWM-LUv2NuznE7peFHj4qEmixyH9NP~Uzakgwbi0DzAoHwQOYFawBrGzgM7ll6l1I53DHjai8rZJSOFEyPnC9QXLOaaDpxqw__',
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
            Container(
              child: Column(
                children: [
                  SizedBox(height: mQuery.size.height * 0.04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/kycImages/ArrowBack.svg",
                        color: Color(0xff524B6B),
                      ),
                      Expanded(child: SizedBox()),
                      Padding(
                        padding: EdgeInsets.only(right: mQuery.size.width * 0.36),
                        child: Center(
                          child: Text(
                            "Followers",
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
                              contentPadding: EdgeInsets.symmetric(vertical: 15),
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
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "All Followers",
                        style: TextStyle(
                          color: Color(0xff150B3D),
                          fontSize: 16,
                          fontFamily: 'SatoshiBold',
                        ),
                      ),
                      SizedBox(height: mQuery.size.height * 0.023),
                      Container(
                        width: double.infinity,
                        height: mQuery.size.height * 0.9,
                        padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.03),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffEDEDED),
                          ),
                        ),
                        child: Column(
                          children: _buildFollowersList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to build follower list
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
}
