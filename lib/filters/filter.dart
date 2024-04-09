import 'package:daily_lancers/filters/apply.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

double MinStipend = 10;
double MaxStipend = 90;
double StartTime = 10;
double EndTime = 18;
TextEditingController StartDate = TextEditingController();
TextEditingController EndDate = TextEditingController();
List<String> category = ['Chef-Chinese', 'Waiter'];
List<String> location = ['Mumbai', 'Dehradun'];
List<String> hotel = ['Taj Hotel', 'Klm Hotel'];
String selectedCategory = 'Chef-Chinese';
String selectedLocation = 'Mumbai';
String selectedHotel = 'Taj Hotel';
String selectedGender = 'Male';
RangeValues _currentRangeValues = const RangeValues(1, 100);
double _lowerValue = 50;
double _upperValue = 180;

class Filter extends StatefulWidget {
  const Filter({Key? key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  void initState() {
    StartDate.text = DateFormat('dd-MM-yyyy')
        .format(DateTime.now()); //set the initial value of text field
    EndDate.text = DateFormat('dd-MM-yyyy')
        .format(DateTime.now()); //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 110,
        width: MediaQuery.of(context).size.width,
        color: Color(0xffFfffff),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        AppFilter()), // Replace SecondPage with the actual widget representing the second page
              );
            },
            child: Container(
              height: 90,
              decoration: BoxDecoration(
                  color: Color(0xff130160),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  'Apply Now',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        // primary: true,
        elevation: 0,
        backgroundColor: Color(0xffF9F9F9),
        scrolledUnderElevation: 0,
        title: Text(
          'Filter',
          style: TextStyle(fontSize: 20, fontFamily: 'RobotoBold'),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xffF9F9F9),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text(
                  'Category',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'RobotoMedium',
                      color: Color(0xff150B3D)),
                ),
                SizedBox(height: 10),
                DropdownButtonFormField<String>(
                  value: selectedCategory,
                  style: const TextStyle(
                    color: Color(0xFF0D0140),
                    fontFamily: 'RobotoRegular',
                  ),
                  focusColor: const Color(0xffffffff),
                  icon: const Icon(Icons.keyboard_arrow_down_rounded),
                  onChanged: (newValue) {
                    setState(() {
                      selectedCategory = newValue!;
                    });
                  },
                  items: category.map((category) {
                    return DropdownMenuItem(
                      value: category,
                      child: Text(category),
                    );
                  }).toList(),
                  decoration: InputDecoration(
                    hintText: 'Select a Category',
                    hintStyle: TextStyle(
                      fontFamily: 'RobotoRegular',
                      color: Color(0xFF696D61),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Color(0xfff1f1f2)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Color(0xfff1f1f2)),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Location',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'RobotoMedium',
                      color: Color(0xff150B3D)),
                ),
                SizedBox(height: 10),
                DropdownButtonFormField<String>(
                  value: selectedLocation,
                  style: const TextStyle(
                    color: Color(0xFF0D0140),
                    fontFamily: 'RobotoMedium',
                  ),
                  focusColor: const Color(0xffffffff),
                  icon: const Icon(Icons.keyboard_arrow_down_rounded),
                  onChanged: (newValue) {
                    setState(() {
                      selectedLocation = newValue!;
                    });
                  },
                  items: location.map((location) {
                    return DropdownMenuItem(
                      value: location,
                      child: Text(location),
                    );
                  }).toList(),
                  decoration: InputDecoration(
                    hintText: 'Select Location',
                    hintStyle: TextStyle(
                      fontFamily: 'Roboto',
                      color: Color(0xFF696D61),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Color(0xfff1f1f2)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Color(0xfff1f1f2)),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Hotel /Company',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'RobotoMedium',
                      color: Color(0xff150B3D)),
                ),
                SizedBox(height: 10),
                DropdownButtonFormField<String>(
                  value: selectedHotel,
                  style: const TextStyle(
                    color: Color(0xFF0D0140),
                    fontFamily: 'RobotoMedium',
                  ),
                  focusColor: const Color(0xffffffff),
                  icon: const Icon(Icons.keyboard_arrow_down_rounded),
                  onChanged: (newValue) {
                    setState(() {
                      selectedHotel = newValue!;
                    });
                  },
                  items: hotel.map((hotel) {
                    return DropdownMenuItem(
                      value: hotel,
                      child: Text(hotel),
                    );
                  }).toList(),
                  decoration: InputDecoration(
                    hintText: 'Select Location',
                    hintStyle: TextStyle(
                      fontFamily: 'Roboto',
                      color: Color(0xFF696D61),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Color(0xfff1f1f2)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Color(0xfff1f1f2)),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Gender Specific',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'RobotoMedium',
                      color: Color(0xff150B3D)),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = 'Male';
                        });
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: 107,
                        decoration: BoxDecoration(
                            color: selectedGender == 'Male'
                                ? Color(0xffFFD6AD)
                                : Color(0xffFAF2EA),
                            borderRadius: BorderRadius.circular(6)),
                        child: Center(
                            child: Text(
                          'Male',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'RobotoRegular',
                              color: Color(0xff524B6B)),
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = 'Female';
                        });
                      },
                      child: Container(
                          height: MediaQuery.of(context).size.height * 0.04,
                          width: 107,
                          decoration: BoxDecoration(
                              color: selectedGender == 'Female'
                                  ? Color(0xffFFD6AD)
                                  : Color(0xffFAF2EA),
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(
                            child: Text(
                              'Female',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'RobotoRegular',
                                  color: Color(0xff524B6B)),
                            ),
                          )),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = 'Other';
                        });
                      },
                      child: Container(
                          height: MediaQuery.of(context).size.height * 0.04,
                          width: 107,
                          decoration: BoxDecoration(
                              color: selectedGender == 'Other'
                                  ? Color(0xffFFD6AD)
                                  : Color(0xffFAF2EA),
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(
                            child: Text(
                              'Other',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'RobotoRegular',
                                  color: Color(0xff524B6B)),
                            ),
                          )),
                    )
                  ],
                ),
                SizedBox(height: 30),
                Text(
                  'Stipend',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'RobotoBold',
                      color: Color(0xff150B3D)),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Minimum Stipend',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'RobotoRegular',
                          color: Color(0xff150B3D)),
                    ),
                    Text(
                      'Maximum Stipend',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'RobotoRegular',
                          color: Color(0xff150B3D)),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '₹ ${MinStipend.toString()} k',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'RobotoRegular',
                          color: Color(0xff150B3D)),
                    ),
                    Text(
                      '₹ ${MaxStipend.toString()} k',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'RobotoRegular',
                          color: Color(0xff150B3D)),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                FlutterSlider(
                  values: [MinStipend, MaxStipend],
                  onDragging: (handlerIndex, lowerValue, upperValue) {
                    setState(() {
                      print(lowerValue);
                      MinStipend = lowerValue;
                      MaxStipend = upperValue;
                    });
                  },
                  rangeSlider: true,
                  max: 100,
                  min: 1,
                  step: FlutterSliderStep(step: 1),
                  jump: true,
                  trackBar: FlutterSliderTrackBar(
                    activeTrackBar: BoxDecoration(color: Color(0xffFF9228)),
                    inactiveTrackBar: BoxDecoration(color: Color(0xffCCC4C2)),
                    activeTrackBarHeight: 2,
                  ),
                  tooltip: FlutterSliderTooltip(
                    textStyle:
                        TextStyle(fontSize: 17, color: Color(0xffFF9228)),
                  ),
                  rightHandler: FlutterSliderHandler(
                    decoration: BoxDecoration(color: Colors.transparent),
                    child: SvgPicture.asset('assets/slider.svg'),
                  ),
                  handler: FlutterSliderHandler(
                    decoration: BoxDecoration(color: Colors.transparent),
                    child: SvgPicture.asset('assets/slider.svg'),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Color(0xffDEE1E7),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Time',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'RobotoBold',
                      color: Color(0xff150B3D)),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Start',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'RobotoRegular',
                          color: Color(0xff150B3D)),
                    ),
                    Text(
                      'End',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'RobotoRegular',
                          color: Color(0xff150B3D)),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      StartTime < 12
                          ? '${StartTime.toString()} am'
                          : StartTime == 12
                              ? '${StartTime.toString()} pm'
                              : '${(StartTime - 12).toString()} pm',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'RobotoRegular',
                          color: Color(0xff150B3D)),
                    ),
                    Text(
                      EndTime >= 13
                          ? '${(EndTime - 12).toString()} pm'
                          : EndTime == 12
                              ? '${(EndTime).toString()} pm'
                              : '${(EndTime).toString()} am',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'RobotoRegular',
                          color: Color(0xff150B3D)),
                    )
                  ],
                ),
                FlutterSlider(
                  values: [StartTime, EndTime],
                  onDragging: (handlerIndex, lowerValue, upperValue) {
                    setState(() {
                      print(lowerValue);
                      StartTime = lowerValue;
                      EndTime = upperValue;
                    });
                  },
                  rangeSlider: true,
                  max: 23,
                  min: 1,
                  step: FlutterSliderStep(step: 1),
                  jump: true,
                  trackBar: FlutterSliderTrackBar(
                    activeTrackBar: BoxDecoration(color: Color(0xffFF9228)),
                    inactiveTrackBar: BoxDecoration(color: Color(0xffCCC4C2)),
                    activeTrackBarHeight: 2,
                  ),
                  tooltip: FlutterSliderTooltip(
                    textStyle:
                        TextStyle(fontSize: 17, color: Color(0xffFF9228)),
                  ),
                  rightHandler: FlutterSliderHandler(
                    decoration: BoxDecoration(color: Colors.transparent),
                    child: SvgPicture.asset('assets/slider.svg'),
                  ),
                  handler: FlutterSliderHandler(
                    decoration: BoxDecoration(color: Colors.transparent),
                    child: SvgPicture.asset('assets/slider.svg'),
                  ),
                ),
                Divider(
                  color: Color(0xffDEE1E7),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Date',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'RobotoBold',
                      color: Color(0xff150B3D)),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'From',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'RobotoRegular',
                                    color: Color(0xff150B3D)),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 70,
                                width: 170,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    children: [
                                      Container(
                                          padding: EdgeInsets.only(left: 10),
                                          width: 130,
                                          child: Center(
                                              child: TextField(
                                            controller: StartDate,
                                            style: TextStyle(fontSize: 15),
                                            //editing controller of this TextField
                                            decoration: InputDecoration(
                                                //icon of text field

                                                border: OutlineInputBorder(
                                                    borderSide:
                                                        BorderSide.none)),
                                            readOnly: true,
                                            //set it true, so that user will not able to edit text
                                            onTap: () async {
                                              final DateNow = DateTime.now();
                                              DateTime? pickedDate =
                                                  await showDatePicker(
                                                      context: context,
                                                      initialDate: DateNow,
                                                      firstDate: DateTime(1950),
                                                      //DateTime.now() - not to allow to choose before today.
                                                      lastDate: DateTime(2100));

                                              if (pickedDate != null) {
                                                print(
                                                    pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                                String formattedDate =
                                                    DateFormat('dd-MM-yyyy')
                                                        .format(pickedDate);
                                                print(
                                                    formattedDate); //formatted date output using intl package =>  2021-03-16
                                                setState(() {
                                                  StartDate.text =
                                                      formattedDate; //set output date to TextField value.
                                                });
                                              } else {}
                                            },
                                          ))),
                                      Image.asset('assets/Calendar Plus.png'),
                                    ],
                                  ),
                                ),
                              )
                            ]),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'To',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'RobotoRegular',
                                    color: Color(0xff150B3D)),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 70,
                                width: 170,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    children: [
                                      Container(
                                          padding: EdgeInsets.only(left: 10),
                                          width: 130,
                                          child: Center(
                                              child: TextField(
                                            controller: EndDate,
                                            style: TextStyle(fontSize: 15),
                                            //editing controller of this TextField
                                            decoration: InputDecoration(
                                                //icon of text field

                                                border: OutlineInputBorder(
                                                    borderSide:
                                                        BorderSide.none)),
                                            readOnly: true,
                                            //set it true, so that user will not able to edit text
                                            onTap: () async {
                                              final DateNow = DateTime.now();
                                              DateTime? pickedDate =
                                                  await showDatePicker(
                                                      context: context,
                                                      initialDate:
                                                          DateTime.now(),
                                                      firstDate: DateTime(1950),
                                                      //DateTime.now() - not to allow to choose before today.
                                                      lastDate: DateTime(2100));

                                              if (pickedDate != null) {
                                                print(
                                                    pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                                String formattedDate =
                                                    DateFormat('dd-MM-yyyy')
                                                        .format(pickedDate);
                                                print(
                                                    formattedDate); //formatted date output using intl package =>  2021-03-16
                                                setState(() {
                                                  EndDate.text =
                                                      formattedDate; //set output date to TextField value.
                                                });
                                              } else {}
                                            },
                                          ))),
                                      Image.asset('assets/Calendar Plus.png'),
                                    ],
                                  ),
                                ),
                              )
                            ]),
                      ),
                    ],
                  ),
                ),
              ])),
        ),
      ),
    );
  }
}
