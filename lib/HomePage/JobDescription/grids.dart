import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EachGrid extends StatefulWidget {
  final String svgPath;
  final String title;
  final String subtitle;

  const EachGrid({
    Key? key,
    required this.svgPath,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  State<EachGrid> createState() => _EachGridState();
}

class _EachGridState extends State<EachGrid> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.height * 0.15,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 3),
            child: SvgPicture.asset(widget.svgPath),
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                  color: Color(0xff150B3D),
                  fontSize: 13,
                  fontFamily: "RobotoBold",
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                widget.subtitle,
                style: const TextStyle(
                  color: Color(0xff524B6B),
                  fontSize: 12,
                  fontFamily: "RobotoMedium",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
