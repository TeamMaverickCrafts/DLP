import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinput/pinput.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import 'aboutHotel_page.dart';
import 'companyProfile_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController websiteController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController gstController = TextEditingController();
  TextEditingController panController = TextEditingController();

  double _aboutHotelHeight = 65.0;
  bool _isOpen = false;
  PhoneNumber? phoneNumber;
  String selectedCountryCode = 'IN';

  var companyName = "Taj Hotel";

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        dateController.text =
        "${picked.day.toString().padLeft(2, '0')} ${_getMonthName(picked.month)} ${picked.year}";
      });
  }

  String _getMonthName(int month) {
    switch (month) {
      case 1:
        return 'January';
      case 2:
        return 'February';
      case 3:
        return 'March';
      case 4:
        return 'April';
      case 5:
        return 'May';
      case 6:
        return 'June';
      case 7:
        return 'July';
      case 8:
        return 'August';
      case 9:
        return 'September';
      case 10:
        return 'October';
      case 11:
        return 'November';
      case 12:
        return 'December';
      default:
        return '';
    }
  }


  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    final defaultPinTheme = PinTheme(
        width: mQuery.size.width * 0.2,
        height: mQuery.size.height * 0.065,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
                color: Color(0xff524B6B)
            )
        ),
        textStyle: TextStyle(
            fontSize: 26,
            fontFamily: 'SatoshiBold'
        )
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xfff9f9f9),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 230,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/JPImages/kycImages/purpleBg.jpeg"),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: mQuery.size.height * 0.03),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.045),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset("assets/JPImages/kycImages/ArrowBack.svg"),
                          Expanded(child: SizedBox()),
                          SvgPicture.asset("assets/JPImages/profileImages/shareIcon.svg"),
                          SizedBox(width: mQuery.size.width * 0.04),
                          SvgPicture.asset("assets/JPImages/profileImages/settingIcon.svg"),
                        ],
                      ),
                      GestureDetector(
                        onTap: ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return CompanyProfilePage();
                            }));
                          },
                          child: SvgPicture.asset("assets/JPImages/profileImages/taj.svg")),
                      SizedBox(height: mQuery.size.height * 0.016),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "companyName",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'SatoshiBold',
                                ),
                              ),
                              SizedBox(height: mQuery.size.height * 0.016),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset("assets/JPImages/profileImages/Location.png"),
                                          SizedBox(width: mQuery.size.width * 0.02),
                                          Text(
                                            "Mumbai, U.K, India",
                                            style: TextStyle(color: Colors.white, fontSize: 12,
                                                fontFamily: 'SatoshiMedium'),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Image.asset("assets/JPImages/profileImages/Mail.png"),
                                          SizedBox(width: mQuery.size.width * 0.02),
                                          Text(
                                            "help@taj.com",
                                            style: TextStyle(color: Colors.white,
                                                fontFamily: "SatoshiMedium"
                                                ,fontSize: 12),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Image.asset("assets/JPImages/profileImages/Mail.png"),
                                          SizedBox(width: mQuery.size.width * 0.02),
                                          Text("+91 7302622997",
                                            style: TextStyle(color: Colors.white, fontSize: 12,
                                                fontFamily: "SatoshiMedium"),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          Expanded(child: SizedBox()),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Profile Score",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'SatoshiMedium',
                                ),
                              ),
                              Text(
                                "10%",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'SatoshiBold',
                                  color: Color(0xffFC4646),
                                ),
                              ),
                              SizedBox(height: mQuery.size.height * 0.02),
                              Container(
                                width: 125,
                                height: 30,
                                padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.03),
                                decoration: BoxDecoration(
                                  color: Colors.purpleAccent.shade200,
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage("assets/JPImages/kycImages/purpleBg.jpeg"),
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset("assets/JPImages/profileImages/Eye.png"),
                                    Expanded(child: SizedBox()),
                                    Text(
                                      "Preview Profile",
                                      style: TextStyle(color: Colors.white, fontFamily: 'SatoshiMedium', fontSize: 11),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.045),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 65,
                          padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.045),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/JPImages/profileImages/document.svg"),
                              SizedBox(width: mQuery.size.width * 0.03),
                              Text(
                                "Complete Your KYC for ODC* ",
                                style: TextStyle(color: Color(0xff150B3D), fontFamily: 'SatoshiBold'),
                              ),
                              Expanded(child: SizedBox()),
                              Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xfffffece7)
                                ),
                                child: Center(
                                  child: SvgPicture.asset("assets/JPImages/profileImages/arrowRight.svg"),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: mQuery.size.height*0.023,),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _aboutHotelHeight = _aboutHotelHeight == 65.0 ? 230.0 : 65.0; // Toggle the height
                              _isOpen = !_isOpen; // Toggle the dummy data for whether the hotel is open
                            });
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 500), // Animation duration
                            curve: Curves.easeInOut, // Animation curve
                            width: double.infinity,
                            height: _aboutHotelHeight,
                            padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.045),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20,),
                                  Row(
                                    children: [
                                      SvgPicture.asset("assets/JPImages/profileImages/personIcon.svg"),
                                      SizedBox(width: mQuery.size.width * 0.03),
                                      Text(
                                        "About Hotel",
                                        style: TextStyle(color: Color(0xff150B3D), fontFamily: 'SatoshiBold'),
                                      ),
                                      // SvgPicture.asset("assets/profileImages/Edit.svg")
                                      Expanded(child: SizedBox()),
                                      _isOpen ? GestureDetector(
                                        onTap: ()
                                          {
                                            Navigator.push(context, MaterialPageRoute(builder: (context){
                                              return AboutHotelPage();
                                            }));
                                          },
                                          child: SvgPicture.asset("assets/JPImages/profileImages/Edit.svg")) :
                                      SvgPicture.asset("assets/JPImages/profileImages/addIcon.svg")
                                    ],
                                  ),
                                  if (_aboutHotelHeight == 230.0)
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.045),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: mQuery.size.height*0.01,),
                                          Divider(
                                            color: Color(0xffDEE1E7),
                                          ),
                                          SizedBox(height: mQuery.size.height*0.01,),
                                          Text("Built in 1973, the iconic The Taj Hotel Mumbai stands majestically across from the Gateway of India, overlooking the Arabian Sea. The Tower stands in harmonious contrast to The Taj Mahal Palace with its arched balconies and newly refurbished rooms. Sprawling over 2.6 acres, this luxurious hotel features 10 restaurants and a variety of traditional Indian therapies at Jiva Spa.",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xff524B6B),
                                                fontFamily: 'SatoshiMedium'
                                            ),)
                                        ],
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),


                        SizedBox(height: mQuery.size.height*0.023,),
                        Text("Company  Name",style: TextStyle(
                            color: Color(0xff150A33),
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium'
                        ),),
                        SizedBox(height: mQuery.size.height*0.016,),
                        Container(
                          width: double.infinity,
                          height: 40,
                          padding: EdgeInsets.symmetric(
                              horizontal: mQuery.size.width*0.035
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: TextField(
                            controller: nameController,
                            cursorColor: Colors.grey,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Hritik Chauhan",
                                contentPadding: EdgeInsets.only(
                                    bottom: 13
                                ),
                                hintStyle: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'SatoshiMedium',
                                    color: Color(0xff524B6B)
                                )
                            ),
                          ),
                        ),

                        SizedBox(height: mQuery.size.height*0.023,),
                        Text("Date of Establishment",style: TextStyle(
                            color: Color(0xff150A33),
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium'
                        ),),
                        SizedBox(height: mQuery.size.height*0.016,),
                        Container(
                          width: double.infinity,
                          height: 40,
                          padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.035),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  controller: dateController,
                                  cursorColor: Colors.grey,
                                  style:  TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'SatoshiMedium',
                                    color: Color(0xff524B6B),
                                  ),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "06 August 1998",
                                    contentPadding: EdgeInsets.only(bottom: 13),
                                    hintStyle: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'SatoshiMedium',
                                      color: Color(0xff524B6B),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                  onTap: ()
                                  {
                                    _selectDate(context);
                                  },
                                  child: SvgPicture.asset("assets/JPImages/dashboardImages/calenderIcon.svg")),
                            ],
                          ),
                        ),

                        SizedBox(height: mQuery.size.height*0.023,),
                        Text("Official Email",style: TextStyle(
                            color: Color(0xff150A33),
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium'
                        ),),
                        SizedBox(height: mQuery.size.height*0.016,),
                        Container(
                          width: double.infinity,
                          height: 40,
                          padding: EdgeInsets.symmetric(
                              horizontal: mQuery.size.width*0.035
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: TextField(
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: Colors.grey,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "nexzem@gmail.com ",
                                contentPadding: EdgeInsets.only(
                                    bottom: 13
                                ),
                                hintStyle: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'SatoshiMedium',
                                    color: Color(0xff524B6B)
                                )
                            ),
                          ),
                        ),


                        SizedBox(height: mQuery.size.height*0.023,),
                        Text("Phone number",style: TextStyle(
                            color: Color(0xff150A33),
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium'
                        ),),
                        SizedBox(height: mQuery.size.height*0.016,),
                        Container(
                          width: double.infinity,
                          height: 43,
                          padding: EdgeInsets.only(
                              right : mQuery.size.width*0.035
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Row(
                            children: [
                              CountryCodePicker(
                                onChanged: (code) {
                                  setState(() {
                                    selectedCountryCode = code.dialCode!;
                                  });
                                },
                                initialSelection: 'IN',
                                textStyle: TextStyle(
                                  fontSize: 9,
                                  color: Color(0xff524B6B)
                                ),
                                favorite: ['+91', 'IN'],
                                flagWidth: 16,
                                showCountryOnly: false,
                                showFlag: true,
                                showOnlyCountryWhenClosed: false,
                                alignLeft: false,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: mQuery.size.height*0.01
                                ),
                                child: VerticalDivider(color: Color(0xffC4C4C4),),
                              ),
                              SizedBox(width: 10,),
                              Expanded(
                                child: TextField(
                                  controller: phoneController,
                                  cursorColor: Colors.grey,
                                  keyboardType: TextInputType.phone,
                                  maxLength: 10,
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "7302622997",
                                      contentPadding: EdgeInsets.only(
                                          bottom: 13
                                      ),
                                      hintStyle: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'SatoshiMedium',
                                          color: Color(0xff524B6B)
                                      ),
                                      counter: SizedBox.shrink()
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: mQuery.size.height*0.023,),
                        Text("Company Website (Optional)",style: TextStyle(
                            color: Color(0xff150A33),
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium'
                        ),),
                        SizedBox(height: mQuery.size.height*0.016,),
                        Container(
                          width: double.infinity,
                          height: 40,
                          padding: EdgeInsets.symmetric(
                              horizontal: mQuery.size.width*0.035
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: TextField(
                            controller: websiteController,
                            cursorColor: Colors.grey,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "www.dailylancer.in",
                                contentPadding: EdgeInsets.only(
                                    bottom: 13
                                ),
                                hintStyle: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'SatoshiMedium',
                                    color: Color(0xff524B6B)
                                )
                            ),
                          ),
                        ),


                        SizedBox(height: mQuery.size.height*0.023,),
                        Text("Location",style: TextStyle(
                            color: Color(0xff150A33),
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium'
                        ),),
                        SizedBox(height: mQuery.size.height*0.016,),
                        Container(
                          width: double.infinity,
                          height: 40,
                          padding: EdgeInsets.symmetric(
                              horizontal: mQuery.size.width*0.035
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  controller: locationController,
                                  cursorColor: Colors.grey,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Dehradun, India",
                                      contentPadding: EdgeInsets.only(
                                          bottom: 13
                                      ),
                                      hintStyle: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'SatoshiMedium',
                                          color: Color(0xff524B6B)
                                      )
                                  ),
                                ),
                              ),
                              SvgPicture.asset("assets/JPImages/profileImages/LocationIcon.svg"),
                            ],
                          ),
                        ),

                        SizedBox(height: mQuery.size.height*0.023,),
                        Text("GST",style: TextStyle(
                            color: Color(0xff150A33),
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium'
                        ),),
                        SizedBox(height: mQuery.size.height*0.016,),
                        Container(
                          width: double.infinity,
                          height: 40,
                          padding: EdgeInsets.symmetric(
                              horizontal: mQuery.size.width*0.035
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: TextField(
                            controller: gstController,
                            cursorColor: Colors.grey,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "23453453532",
                                contentPadding: EdgeInsets.only(
                                    bottom: 13
                                ),
                                hintStyle: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'SatoshiMedium',
                                    color: Color(0xff524B6B)
                                )
                            ),
                          ),
                        ),

                        SizedBox(height: mQuery.size.height*0.023,),
                        Text("PAN (Optional) ",style: TextStyle(
                            color: Color(0xff150A33),
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium'
                        ),),
                        SizedBox(height: mQuery.size.height*0.016,),
                        Container(
                          width: double.infinity,
                          height: 40,
                          padding: EdgeInsets.symmetric(
                              horizontal: mQuery.size.width*0.035
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: TextField(
                            controller: panController,
                            cursorColor: Colors.grey,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "NXMT8981H",
                                contentPadding: EdgeInsets.only(
                                    bottom: 13
                                ),
                                hintStyle: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'SatoshiMedium',
                                    color: Color(0xff524B6B)
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


