import 'package:flutter/material.dart';

class AddWorkExp extends StatefulWidget {
  final String initialText;

  const AddWorkExp({Key? key, required this.initialText}) : super(key: key);

  @override
  _AddWorkExpState createState() => _AddWorkExpState();
}

class _AddWorkExpState extends State<AddWorkExp> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      appBar: AppBar(
        title: Text(
          "Add work experience",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 1.0,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF99ABC6).withOpacity(0.18),
                    spreadRadius: 0,
                    blurRadius: 62,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: _controller,
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: 'Tell me about you.',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.42,
            height: MediaQuery.of(context).size.height * 0.053,
            child: ElevatedButton(
              onPressed: () {
                print('Save Button Pressed');
                Navigator.of(context).pop(_controller.text);
              },
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: const Color(0xFF130160),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text(
                "Save",
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 14,
                  fontFamily: "RobotoBold",
                  height: 1.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
