
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OtherDocumentsPage extends StatefulWidget {
  const OtherDocumentsPage({Key? key});

  @override
  State<OtherDocumentsPage> createState() => _OtherDocumentsPageState();
}

class _OtherDocumentsPageState extends State<OtherDocumentsPage> {
  var panNo = "NBVT89324K";
  TextEditingController panNoController = TextEditingController();
  String? _selectedDocument;
  bool _isDropdownExpanded = false;

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xfff9f9f9),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 149,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/kycImages/purpleBg.jpeg"),
              ),
            ),
            child: Column(
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
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width * 0.045),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: mQuery.size.height * 0.023),
                        Text(
                          "Other Documents",
                          style: TextStyle(
                            color: Color(0xff150B3D),
                            fontFamily: 'RobotoBold',
                          ),
                        ),
                        SizedBox(height: mQuery.size.height * 0.02),
                        Text(
                          "Select Any Document Given Below",
                          style: TextStyle(
                            color: Color(0xff0D0140),
                            fontSize: 12,
                            fontFamily: 'RobotoBold',
                          ),
                        ),
                        SizedBox(height: mQuery.size.height * 0.012),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isDropdownExpanded = !_isDropdownExpanded;
                            });
                          },
                          child: Container(
                            width: double.infinity,
                            height: 40,
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  _selectedDocument ?? 'Select',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'RobotoRegular',
                                  ),
                                ),
                                Icon(
                                  _isDropdownExpanded
                                      ? Icons.keyboard_arrow_up
                                      : Icons.keyboard_arrow_down,
                                  color: Color(0xff150B3D),
                                  size: mQuery.size.height * 0.022,
                                ),
                              ],
                            ),
                          ),
                        ),
                        AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                          height: _isDropdownExpanded ? 170 : 0,
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                ...[
                                  'TAX Invoice',
                                  'Bill With Company Name on It ',
                                  'Registration Certificate  ',
                                ].map((value) {
                                  return ListTile(
                                    title: Text(value,style: TextStyle(
                                      color: Color(0xff150B3D),
                                      fontSize: 12
                                    ),),
                                    onTap: () {
                                      setState(() {
                                        _selectedDocument = value;
                                        _isDropdownExpanded = false;
                                      });
                                    },
                                  );
                                }).toList(),
                              ],
                            ),
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
                        Container(
                          width: double.infinity,
                          child: Stack(
                            children: [
                              SvgPicture.asset("assets/kycImages/rectanglebox.svg"),
                              Positioned(
                                bottom: 27,
                                left: 85,
                                child: Row(
                                  children: [
                                    SvgPicture.asset("assets/kycImages/uploadIcon.svg"),
                                    SizedBox(width: mQuery.size.width * 0.023),
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
                        Container(
                          width: double.infinity,
                          child: Stack(
                            children: [
                              SvgPicture.asset("assets/kycImages/rectanglebox.svg"),
                              Positioned(
                                bottom: 27,
                                left: 85,
                                child: Row(
                                  children: [
                                    SvgPicture.asset("assets/kycImages/uploadIcon.svg"),
                                    SizedBox(width: mQuery.size.width * 0.023),
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
            padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.045),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(
                    horizontal: mQuery.size.width * 0.022,
                    vertical: mQuery.size.height * 0.018),
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
