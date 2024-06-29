import 'package:daily_lancers/JobPoster/AddJob/job_Location.dart';
import 'package:daily_lancers/JobPoster/Home/JP_Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

String? isPost;

class AddaJob extends StatefulWidget {
  const AddaJob({Key? key}) : super(key: key);

  @override
  State<AddaJob> createState() => _AddaJobState();
}

class _AddaJobState extends State<AddaJob> {
  String _selectedJob = "Job Position";

  List<String> _jobOptions = ["Chef/Cook", "Associate", "Administrative Assistant","Assistant Manager"];
  bool _isOptionsVisible = false;


  bool _isGenderOptionsVisible = false;
  String _selectedGender = "Gender Specific Job";
  List<String> _genderOptions = ["Male", "Female", "Both"];
  List<String> _genderSubOptions = ["Employees must be male only", "Employees must be female only", "Gender independent Job"];


  bool _isEmploymentOptionsVisible = false;
  String _selectedEmployment = "Employment Type";
  List<String> _employmentOptions = ["Hourly Basis", "Weekly Basis", "Contract", "Temporary", "Volunteer", "Apprenticeship"];

  bool _isDescriptionVisible = false;
  bool _isTCVisible = false;



  TextEditingController stipendController = TextEditingController();
  TextEditingController startDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();
  TextEditingController startTimeController = TextEditingController();
  TextEditingController endTimeController = TextEditingController();

  TextEditingController jobDescriptionController = TextEditingController();
  TextEditingController tcController = TextEditingController();
  TimeOfDay? _selectedStartTime;
  TimeOfDay? _selectedEndTime;

  DateTime _selectedDate = DateTime.now();
  DateTime _selectedDate2 = DateTime.now();

  void _showCalendarPopup(BuildContext context) {
    DateTime _selectedDate = DateTime.now(); // Define outside the StatefulBuilder

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Dialog(
              insetPadding: EdgeInsets.all(20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.52,
                child: SingleChildScrollView(
                  child: TableCalendar(
                    focusedDay: _selectedDate,
                    firstDay: DateTime.utc(DateTime.now().year - 1, 1, 1),
                    lastDay: DateTime.utc(DateTime.now().year + 1, 12, 31),
                    calendarStyle: CalendarStyle(
                      selectedTextStyle: TextStyle(color: Colors.white),
                      todayTextStyle: TextStyle(color: _selectedDate == DateTime.now() ?  Colors.black : Colors.black),
                      defaultTextStyle: TextStyle(color: Colors.black),
                      selectedDecoration: BoxDecoration(color: Color(0xffFF9228), shape: BoxShape.circle),
                      todayDecoration: BoxDecoration(border: Border.all(color: Colors.black), shape: BoxShape.circle),
                      outsideDaysVisible: true,
                      weekendTextStyle: TextStyle(color: Colors.black),
                      holidayTextStyle: TextStyle(color: Colors.blue),
                    ),
                    headerStyle: HeaderStyle(formatButtonVisible: false, titleCentered: false),
                    selectedDayPredicate: (DateTime date) {
                      return isSameDay(_selectedDate, date);
                    },
                    onDaySelected: (selectedDay, focusedDay) {
                      setState(() {
                        _selectedDate = selectedDay;
                      });
                    },
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  void _showCalendarPopup2(BuildContext context) {
    DateTime _selectedDate2 = DateTime.now();
    showDialog(
      context: context,
      builder: (BuildContext context) {
         // Provide a default value

        return StatefulBuilder(
          builder: (context, setState) {
            return Dialog(
              insetPadding: EdgeInsets.all(20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.52,
                child: SingleChildScrollView(
                  child: TableCalendar(
                    focusedDay: _selectedDate2,
                    firstDay: DateTime.utc(DateTime.now().year - 1, 1, 1),
                    lastDay: DateTime.utc(DateTime.now().year + 1, 12, 31),
                    calendarStyle: CalendarStyle(
                      selectedTextStyle: TextStyle(
                        color: Colors.white,
                      ),
                      todayTextStyle: TextStyle(
                        color: _selectedDate2 == DateTime.now() ?  Colors.black : Colors.black
                      ),
                      defaultTextStyle: TextStyle(
                        color: Colors.black
                      ),
                      selectedDecoration: BoxDecoration(
                        color: Color(0xffFF9228),
                        shape: BoxShape.circle,
                      ),
                      todayDecoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        shape: BoxShape.circle,
                      ),
                      outsideDaysVisible: true,
                      weekendTextStyle: TextStyle(color: Colors.black),
                      holidayTextStyle: TextStyle(color: Colors.blue),
                    ),
                    headerStyle: HeaderStyle(
                      formatButtonVisible: false,
                      titleCentered: false,
                    ),
                    selectedDayPredicate: (DateTime date) {
                      return isSameDay(_selectedDate2, date);
                    },
                    onDaySelected: (selectedDay, focusedDay) {
                      setState(() {
                        _selectedDate2 = selectedDay;
                      });
                    },
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }


  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      cancelText: "Cancel",
      confirmText: "OK",
      context: context,
      initialTime: _selectedStartTime ?? TimeOfDay.now(),
      builder: (BuildContext context, Widget? child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
          child: Theme(
            data: ThemeData(
              colorScheme: ColorScheme.light(primary: Colors.white),
              timePickerTheme: TimePickerThemeData(
                backgroundColor: Colors.white,
                hourMinuteTextColor: Colors.black,
                hourMinuteColor: Color(0xffF9F9F9),
                dialHandColor: Color(0xffFF9228),
                dialBackgroundColor: Color(0xffededed),
                dayPeriodColor: Color(0xffffe9d4),
                dayPeriodTextColor: Color(0xffff9228),
                dayPeriodBorderSide: BorderSide.none,
                cancelButtonStyle: ButtonStyle(
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    TextStyle(fontFamily: 'RobotoBold'),
                  ),
                  foregroundColor: MaterialStateProperty.all<Color>(Color(0xffFF9228)),
                ),
                confirmButtonStyle: ButtonStyle(
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    TextStyle(fontFamily: 'RobotoBold'),
                  ),
                  foregroundColor: MaterialStateProperty.all<Color>(Color(0xffFF9228)),
                ),
                dayPeriodTextStyle: TextStyle(fontFamily: 'RobotoMedium'),
              ),
            ),
            child: child!,
          ),
        );
      },
    );

    if (picked != null && picked != _selectedStartTime) {
      setState(() {
        _selectedStartTime = picked;
      });
    }
  }

  Future<void> _selectTime2(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      cancelText: "Cancel",
      confirmText: "OK",
      context: context,
      initialTime: _selectedEndTime ?? TimeOfDay.now(),
      builder: (BuildContext context, Widget? child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
          child: Theme(
            data: ThemeData(
              colorScheme: ColorScheme.light(primary: Colors.white),
              timePickerTheme: TimePickerThemeData(
                backgroundColor: Colors.white,
                hourMinuteTextColor: Colors.black,
                hourMinuteColor: Color(0xffF9F9F9),
                dialHandColor: Color(0xffFF9228),
                dialBackgroundColor: Color(0xffededed),
                dayPeriodColor: Color(0xffffe9d4),
                dayPeriodTextColor: Color(0xffff9228),
                dayPeriodBorderSide: BorderSide.none,
                cancelButtonStyle: ButtonStyle(
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    TextStyle(fontFamily: 'RobotoBold'),
                  ),
                  foregroundColor: MaterialStateProperty.all<Color>(Color(0xffFF9228)),
                ),
                confirmButtonStyle: ButtonStyle(
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    TextStyle(fontFamily: 'RobotoBold'),
                  ),
                  foregroundColor: MaterialStateProperty.all<Color>(Color(0xffFF9228)),
                ),
                dayPeriodTextStyle: TextStyle(fontFamily: 'RobotoMedium'),
              ),
            ),
            child: child!,
          ),
        );
      },
    );

    if (picked != null && picked != _selectedEndTime) {
      setState(() {
        _selectedEndTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.045),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: mQuery.size.height*0.06,),
              Row(
                children: [
                  Icon(
                    Icons.close,
                    color: Color(0xff150A33),
                  ),
                  Expanded(child: SizedBox()),
                  GestureDetector(
                    onTap: ()
                    {
                      isPost = "AddaJob";
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return JPHome();
                      }));
                    },
                    child: Text(
                      "Post",
                      style: TextStyle(fontFamily: 'RobotoBold', color: Color(0xffFF9228)),
                    ),
                  )
                ],
              ),
              SizedBox(height: mQuery.size.height * 0.032),
              Text(
                "Add a job",
                style: TextStyle(fontFamily: 'RobotoBold', fontSize: 28),
              ),
              SizedBox(height: mQuery.size.height * 0.023),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isOptionsVisible = !_isOptionsVisible;
                  });
                },
                child: Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.07,
                  padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.045),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      Text(
                        _selectedJob,
                        style: TextStyle(color: Color(0xff333333),
                            fontFamily: 'RobotoMedium'),
                      ),
                      Expanded(child: SizedBox()),
                      _isOptionsVisible ? Icon(Icons.keyboard_arrow_up) : Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                ),
              ),
              SizedBox(height: mQuery.size.height * 0.016),
              Visibility(
                visible: _isOptionsVisible,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: _jobOptions
                        .map((option) => GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedJob = option;
                          _isOptionsVisible = false;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Text(option,style: TextStyle(color: Color(0xff333333),
                            fontFamily: 'RobotoMedium'),),
                      ),
                    ))
                        .toList(),
                  ),
                ),
              ),

              _isOptionsVisible ? SizedBox(height: mQuery.size.height*0.032,) : SizedBox(),

              Container(
                width: double.infinity,
                height: mQuery.size.height*0.07,
                padding: EdgeInsets.symmetric(
                    horizontal: mQuery.size.width*0.045
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white
                ),
                child: TextField(
                  controller: stipendController,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Stipend",
                      hintStyle: TextStyle(
                          fontSize: 16,
                          color: Color(0xff666666),
                          fontFamily: 'RobotoMedium'
                      )
                  ),
                ),
              ),
              SizedBox(height: mQuery.size.height*0.023,),

              // Job Starting Date
              GestureDetector(
                onTap: () {
                  _showCalendarPopup(context);
                },
                child: Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.07,
                  padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.045),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Text(
                    _selectedDate == null
                        ? "Job Starting Date"
                        : '${DateFormat.yMMMd().format(_selectedDate)}',
                    style: TextStyle(
                      fontFamily: 'RobotoMedium',
                      fontSize: 16,
                      color: Color(0xff666666),
                    ),
                  ),
                ),
              ),



              SizedBox(height: mQuery.size.height*0.023,),



              // Job Ending Date
              GestureDetector(
                onTap: () {
                  _showCalendarPopup2(context);
                },
                child: Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.07,
                  padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.045),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: _selectedDate2 == null
                      ? Text(
                    "Job Ending Date",
                    style: TextStyle(
                      fontFamily: 'RobotoMedium',
                      fontSize: 16,
                      color: Color(0xff666666),
                    ),
                  )

                 : Text(
                    '${DateFormat.yMMMd().format(_selectedDate2)}',
                    style: TextStyle(
                      fontFamily: 'RobotoMedium',
                      fontSize: 16,
                      color: Color(0xff666666),
                    ),
                  )
                ),
              ),



              // Job Starting Time
              SizedBox(height: mQuery.size.height*0.023,),
              GestureDetector(
                onTap: () {
                  _selectTime(context);
                },
                child: Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.07,
                  padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.045),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: _selectedStartTime == null
                      ? Text(
                    "Job Starting Time",
                    style: TextStyle(
                      fontFamily: 'RobotoMedium',
                      fontSize: 16,
                      color: Color(0xff666666),
                    ),
                  )
                      : Text(
                    '${_selectedStartTime!.format(context)}',
                    style: TextStyle(
                      fontFamily: 'RobotoMedium',
                      fontSize: 16,
                      color: Color(0xff666666),
                    ),
                  ),
                ),
              ),

              // Job Ending Time
              SizedBox(height: mQuery.size.height*0.023,),
              GestureDetector(
                onTap: () {
                  _selectTime2(context);
                },
                child: Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.07,
                  padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.045),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: _selectedEndTime == null
                      ? Text(
                    "Job Ending Time",
                    style: TextStyle(
                      fontFamily: 'RobotoMedium',
                      fontSize: 16,
                      color: Color(0xff666666),
                    ),
                  )
                      : Text(
                    '${_selectedEndTime!.format(context)}',
                    style: TextStyle(
                      fontFamily: 'RobotoMedium',
                      fontSize: 16,
                      color: Color(0xff666666),
                    ),
                  ),
                ),
              ),


              SizedBox(height: mQuery.size.height*0.023,),
              // Gender Specific Job
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isGenderOptionsVisible = !_isGenderOptionsVisible;
                  });
                },
                child: Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.07,
                  padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.045),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Text(
                    _selectedGender ?? "Gender Specific Job",
                    style: TextStyle(
                      fontFamily: 'RobotoMedium',
                      fontSize: 16,
                      color: Color(0xff666666),
                    ),
                  ),
                ),
              ),
              SizedBox(height: mQuery.size.height * 0.016),
              Visibility(
                visible: _isGenderOptionsVisible,
                child: StatefulBuilder(
                  builder: (BuildContext context, StateSetter setState) {
                    return Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: _genderOptions.asMap().entries.map((entry) {
                          final int index = entry.key;
                          final String option = entry.value;
                          final String subOption = _genderSubOptions[index]; // Get corresponding sub-option

                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedGender = option;
                                _isGenderOptionsVisible = false;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        option,
                                        style: TextStyle(
                                          color: Color(0xff333333),
                                          fontFamily: 'RobotoMedium',
                                        ),
                                      ),
                                      Text(
                                        subOption, // Print corresponding sub-option
                                        style: TextStyle(
                                            color: Color(0xffAAA6B9),
                                            fontSize: 12,
                                            fontFamily: 'RobotoMedium'
                                        ),
                                      ),
                                    ],
                                  ),
                                  Expanded(child: SizedBox()),
                                  Container(
                                    width: mQuery.size.width * 0.06,
                                    height: mQuery.size.height * 0.035,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: _selectedGender == option ? Color(0xffFF9228) : Color(0xff524B6B)
                                      ),
                                      shape: BoxShape.circle,

                                    ),
                                    child: Center(
                                      child: Container(
                                        width: mQuery.size.width*0.04,
                                        height: mQuery.size.height*0.025,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: _selectedGender == option
                                                ? Color(0xffFF9228) : Colors.transparent,
                                          ),
                                          color: _selectedGender == option
                                              ? Color(0xffFF9228)
                                              : Colors.transparent,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    );
                  },
                ),
              ),



             _isGenderOptionsVisible ? SizedBox(height: mQuery.size.height*0.032,) : SizedBox(height: mQuery.size.height*0.01,),
              // Job Location
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return JobLocation();
                  }));
                },
                child: Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.07,
                  padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.045),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Text("Job Location",
                    style: TextStyle(
                      fontFamily: 'RobotoMedium',
                      fontSize: 16,
                      color: Color(0xff666666),
                    ),
                  ),
                ),
              ),
              SizedBox(height: mQuery.size.height * 0.023),

              // Employment Type
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isEmploymentOptionsVisible = !_isEmploymentOptionsVisible;
                  });
                },
                child: Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.07,
                  padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.045),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Text(
                    _selectedEmployment ?? "Employment Type",
                    style: TextStyle(
                      fontFamily: 'RobotoMedium',
                      fontSize: 16,
                      color: Color(0xff666666),
                    ),
                  ),
                ),
              ),
              SizedBox(height: mQuery.size.height * 0.016),
              Visibility(
                visible: _isEmploymentOptionsVisible,
                child: StatefulBuilder(
                  builder: (BuildContext context, StateSetter setState) {
                    return Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: mQuery.size.height*0.045,),
                          Center(
                            child: Text(
                              "Choose Job Type",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'RobotoBold',
                                color: Color(0xff150B3D)
                              ),
                            ),
                          ),
                          SizedBox(height: mQuery.size.height*0.01,),
                          Center(
                            child: Text(
                              "Determine and choose the type of work according to",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'RobotoMediumn',
                                  color: Color(0xff524B6B)
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              "what you want",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'RobotoMediumn',
                                  color: Color(0xff524B6B)
                              ),
                            ),
                          ),

                          SizedBox(height: 10), // Add some space between "Hello World" and options
                          ..._employmentOptions.asMap().entries.map((entry) {
                            final int index = entry.key;
                            final String option = entry.value;
                            // Get corresponding sub-option

                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedEmployment = option;
                                  _isEmploymentOptionsVisible = false;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          option,
                                          style: TextStyle(
                                            color: Color(0xff333333),
                                            fontFamily: 'RobotoBold',
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(child: SizedBox()),
                                    Container(
                                      width: mQuery.size.width * 0.06,
                                      height: mQuery.size.height * 0.035,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: _selectedEmployment == option ? Color(0xffFF9228) : Color(0xff524B6B)
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Container(
                                          width: mQuery.size.width*0.04,
                                          height: mQuery.size.height*0.025,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: _selectedEmployment == option
                                                  ? Color(0xffFF9228) : Colors.transparent,
                                            ),
                                            color: _selectedEmployment == option
                                                ? Color(0xffFF9228)
                                                : Colors.transparent,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                        ],
                      ),
                    );
                  },
                ),
              ),

              _isEmploymentOptionsVisible ? SizedBox(height: mQuery.size.height*0.032,) : SizedBox(height: mQuery.size.height*0.01,),

              // Job Description
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isDescriptionVisible = !_isDescriptionVisible;
                  });
                },
                child: Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.07,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.045),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    "Job Description",
                    style: TextStyle(
                      fontFamily: 'RobotoMedium',
                      fontSize: 16,
                      color: Color(0xff666666),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: _isDescriptionVisible,
                child: Container(
                  width: double.infinity,
                  height: mQuery.size.height*0.16,
                  padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.045),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8)
                    ),
                    color: Colors.white
                  ),
                  child: TextField(
                    style: TextStyle(
                      fontFamily: 'RobotoRegular'
                    ),
                    cursorColor: Colors.grey,
                    controller: jobDescriptionController,
                    maxLines: null,
                    decoration: InputDecoration(
                      border: InputBorder.none,

                    ),
                  ),
                ),
              ),



              _isDescriptionVisible ? SizedBox(height: mQuery.size.height*0.032,) : SizedBox(height: mQuery.size.height*0.032,),
              // Terms & Conditions
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isTCVisible = !_isTCVisible;
                  });
                },
                child: Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.07,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.045),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    "Terms & Conditions",
                    style: TextStyle(
                      fontFamily: 'RobotoMedium',
                      fontSize: 16,
                      color: Color(0xff666666),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: _isTCVisible,
                child: Container(
                  width: double.infinity,
                  height: mQuery.size.height*0.16,
                  padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.045),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8)
                      ),
                      color: Colors.white
                  ),
                  child: TextField(
                    style: TextStyle(
                        fontFamily: 'RobotoRegular'
                    ),
                    cursorColor: Colors.grey,
                    controller: tcController,
                    maxLines: null,
                    decoration: InputDecoration(
                      border: InputBorder.none,

                    ),
                  ),
                ),
              ),




              SizedBox(height: 40,)

            ],
          ),
        ),
      ),
    );
  }
}
