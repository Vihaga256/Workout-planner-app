import 'package:demo_app_2/constants/colors.dart';
import 'package:flutter/material.dart';

class ProgressCard extends StatefulWidget {
  final double progressValue;
  final int total;

  const ProgressCard({
    super.key,
    required this.progressValue,
    required this.total,
  });

  @override
  State<ProgressCard> createState() => _ProgressCardState();
}

class _ProgressCardState extends State<ProgressCard> {
  @override
  Widget build(BuildContext context) {
    int done = (widget.progressValue * widget.total).toInt();

    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [kGradientTopColor, kGradientBottomColor],
        ),
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Proteins, Fats, Water &\nCarbohydrates",
            style: TextStyle(
              fontSize: 29,
              fontWeight: FontWeight.bold,
              color: kMainWhiteColor,
            ),
          ),
          SizedBox(height: 20),
          LinearProgressIndicator(
            value: widget.progressValue,
            backgroundColor: const Color.fromARGB(255, 12, 55, 197),
            valueColor: AlwaysStoppedAnimation(kMainWhiteColor),
            borderRadius: BorderRadius.circular(100),
            minHeight: 15,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildTag("Done", done.toString()),
              _buildTag("Total", widget.total.toString()),
            ],
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}

Widget _buildTag(String title, String value) {
  return Column(
    children: [
      Text(
        title,
        style: TextStyle(
          color: kMainWhiteColor,
          fontSize: 18,
          fontWeight: FontWeight.w800,
        ),
      ),
      SizedBox(height: 5),
      Text(
        value,
        style: TextStyle(
          color: kMainWhiteColor,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}
