import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

import 'inReview_page.dart';

class PANDetailsPage extends StatefulWidget {
  const PANDetailsPage({Key? key}) : super(key: key);

  @override
  State<PANDetailsPage> createState() => _PANDetailsPageState();
}

class _PANDetailsPageState extends State<PANDetailsPage> {
  var panNo = "NBVT89324K";
  TextEditingController panNoController = TextEditingController();

  File? _frontImage;
  File? _backImage;

  Future<void> _selectImage(bool isFrontImage) async {
    final picker = ImagePicker();
    try {
      final pickedImage = await picker.pickImage(source: ImageSource.gallery);
      if (pickedImage != null) {
        setState(() {
          if (isFrontImage) {
            _frontImage = File(pickedImage.path);
          } else {
            _backImage = File(pickedImage.path);
          }
        });
      }
    } catch (e) {
      print("Error picking image: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xfff9f9f9),
      body: Column(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 149,
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
                    fit: BoxFit.fill,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: mQuery.size.height * 0.03),
                      Padding(
                        padding: EdgeInsets.only(left: mQuery.size.width * 0.045),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: SvgPicture.asset("assets/kycImages/ArrowBack.svg"),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Document Verification",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'RobotoBold',
                          ),
                        ),
                      ),
                      SizedBox(height: mQuery.size.height * 0.018),
                      Center(
                        child: Text(
                          "Phase 2",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'RobotoBold',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: mQuery.size.width * 0.045,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: mQuery.size.height * 0.023),
                        Text(
                          "PAN Details",
                          style: TextStyle(
                            color: Color(0xff150B3D),
                            fontFamily: 'RobotoBold',
                          ),
                        ),
                        SizedBox(height: mQuery.size.height * 0.02),
                        Text(
                          "PAN Number",
                          style: TextStyle(
                            color: Color(0xff0D0140),
                            fontSize: 12,
                            fontFamily: 'RobotoBold',
                          ),
                        ),
                        SizedBox(height: mQuery.size.height * 0.012),
                        Container(
                          width: double.infinity,
                          height: 40,
                          padding: EdgeInsets.only(left: 16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            controller: panNoController,
                            decoration: InputDecoration(
                              hintText: "$panNo",
                              hintStyle: TextStyle(
                                fontSize: 12,
                                fontFamily: 'RobotoRegular',
                              ),
                              contentPadding:
                              EdgeInsets.symmetric(vertical: 14),
                              border: InputBorder.none,
                            ),
                            cursorColor: Colors.grey,
                          ),
                        ),
                        SizedBox(height: mQuery.size.height * 0.03),
                        Text(
                          "Add your document image to apply for a job",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff524B6B),
                            fontFamily: 'RobotoRegular',
                          ),
                        ),
                        SizedBox(height: mQuery.size.height * 0.023),
                        GestureDetector(
                          onTap: () => _selectImage(true),
                          child: Stack(
                            children: [
                              SvgPicture.asset(
                                  "assets/kycImages/rectanglebox.svg"),
                              Positioned(
                                bottom: 27,
                                left: 85,
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                        "assets/kycImages/uploadIcon.svg"),
                                    SizedBox(
                                        width: mQuery.size.width * 0.023),
                                    Text(
                                      "Upload Front Image*",
                                      style: TextStyle(
                                        color: Color(0xff150B3D),
                                        fontSize: 12,
                                        fontFamily: 'RobotoMedium',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: mQuery.size.height * 0.014),
                        GestureDetector(
                          onTap: () => _selectImage(false),
                          child: Stack(
                            children: [
                              SvgPicture.asset(
                                  "assets/kycImages/rectanglebox.svg"),
                              Positioned(
                                bottom: 27,
                                left: 85,
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                        "assets/kycImages/uploadIcon.svg"),
                                    SizedBox(
                                        width: mQuery.size.width * 0.023),
                                    Text(
                                      "Upload Back Image if any",
                                      style: TextStyle(
                                        color: Color(0xff150B3D),
                                        fontSize: 12,
                                        fontFamily: 'RobotoMedium',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 78,
            color: Colors.white,
            padding: EdgeInsets.symmetric(
              horizontal: mQuery.size.width * 0.045,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return InReviewPage();
                    }));
              },
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(
                  horizontal: mQuery.size.width * 0.022,
                  vertical: mQuery.size.height * 0.018,
                ),
                decoration: BoxDecoration(
                  color: Color(0xff130160),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(
                  child: Text(
                    "SAVE",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'RobotoBold',
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
