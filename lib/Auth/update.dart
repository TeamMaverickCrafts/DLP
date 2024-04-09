import 'package:daily_lancers/Auth/success.dart';
import 'package:flutter/material.dart';

class updatePassword extends StatefulWidget {
  updatePassword({super.key});

  @override
  State<updatePassword> createState() => _updatePasswordState();
}

class _updatePasswordState extends State<updatePassword> {
  bool _isObscured3 = true;
  bool _isObscured4 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff9f9f9),
      appBar: AppBar(
        backgroundColor: const Color(0xfff9f9f9),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Update Password',
              style: TextStyle(fontSize: 18, fontFamily: 'RobotoMedium'),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'New Password',
              style: TextStyle(fontSize: 12, fontFamily: 'RobotoMedium'),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff99ABC6).withOpacity(0.18),
                    spreadRadius: 0,
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: TextField(
                obscureText: _isObscured3,
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                  hintStyle: const TextStyle(
                      fontFamily: "RobotoMedium",
                      color: Colors.grey,
                      fontSize: 14.0),
                  labelStyle: const TextStyle(color: Color(0xff6E678C)),
                  filled: true,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isObscured3 = !_isObscured3;
                      });
                    },
                    child: Icon(
                      _isObscured3
                          ? Icons.visibility_off_outlined
                          : Icons.remove_red_eye_outlined,
                      color: Colors.grey,
                    ),
                  ),
                  fillColor: Colors.white,
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Confirm Password',
              style: TextStyle(fontSize: 12, fontFamily: 'RobotoMedium'),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff99ABC6).withOpacity(0.18),
                    spreadRadius: 0,
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: TextField(
                obscureText: _isObscured4,
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  hintStyle: const TextStyle(
                      fontFamily: "RobotoMedium",
                      color: Colors.grey,
                      fontSize: 14.0),
                  labelStyle: const TextStyle(color: Color(0xff6E678C)),
                  filled: true,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isObscured4 = !_isObscured4;
                      });
                    },
                    child: Icon(
                      _isObscured4
                          ? Icons.visibility_off_outlined
                          : Icons.remove_red_eye_outlined,
                      color: Colors.grey,
                    ),
                  ),
                  fillColor: Colors.white,
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const success()), // Replace SecondPage with the actual widget representing the second page
                    );
                  },
                  child: Container(
                    width: 266,
                    height: 50,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF130160),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                      shadows: [
                        const BoxShadow(
                          color: Color(0x2D99AAC5),
                          blurRadius: 62,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        'UPDATE',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'RobotoBold',
                          fontWeight: FontWeight.w700,
                          height: 0,
                          letterSpacing: 0.84,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
