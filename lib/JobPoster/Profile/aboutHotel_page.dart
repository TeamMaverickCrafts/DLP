import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AboutHotelPage extends StatefulWidget {
  const AboutHotelPage({super.key});

  @override
  State<AboutHotelPage> createState() => _AboutHotelPageState();
}

class _AboutHotelPageState extends State<AboutHotelPage> {
  TextEditingController aboutController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: mQuery.size.width*0.0454
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: mQuery.size.height*0.06,),
             GestureDetector(
               onTap: ()
               {
                 Navigator.pop(context);
               },
               child: SvgPicture.asset("assets/JPImages/kycImages/ArrowBack.svg",
                 color: Color(0xff3B4657),
               ),
             ),
            SizedBox(height: mQuery.size.height*0.045,),
            Text("About Hotel",style: TextStyle(
              fontFamily: 'SatoshiBold',
              color: Color(0xff150B3D),
              fontSize: 15
            ),),
            SizedBox(height: mQuery.size.height*0.03,),
            Container(
              width: double.infinity,
              height: 232,
              padding: EdgeInsets.symmetric(
                horizontal: mQuery.size.width*0.035
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
              ),
              child: TextField(
                controller: aboutController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Tell me about you.',
                  hintStyle: TextStyle(
                    color: Color(0xffAAA6B9),
                    fontSize: 12,
                    fontFamily: 'SatoshiMedium'
                  )
                ),
              ),
            ),
            Expanded(child: SizedBox()),
            GestureDetector(
              onTap: ()
              {
                Navigator.pop(context);
              },
              child: Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.symmetric(
                  horizontal: mQuery.size.width*0.16
                ),
                decoration: BoxDecoration(
                  color: Color(0xff130160),
                  borderRadius: BorderRadius.circular(6)
                ),
                child: Center(
                  child: Text("SAVE",style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'SatoshiBold'
                  ),),
                ),
              ),
            ),
            SizedBox(height: mQuery.size.height*0.14,)
          ],
        ),
      ),
    );
  }
}
