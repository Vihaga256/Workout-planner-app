
import 'package:demo_app_2/constants/colors.dart';
import 'package:flutter/material.dart';

class EquipemtCard extends StatelessWidget {
  final String imageURL;
  final String title;
  final String description;

  const EquipemtCard({
    super.key,
    required this.imageURL,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        // ignore: deprecated_member_use
        color: kSubtitleColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [BoxShadow(color: kBoxShadow, offset: Offset(1, 5))],
      ),
      width: MediaQuery.of(context).size.width * 0.44,
      height: MediaQuery.of(context).size.height * 0.22,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              color: kMainColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.asset(
            imageURL,
            width: MediaQuery.of(context).size.width * 0.23,
            fit: BoxFit.cover,
          ),
          Text(
            description,
            style: TextStyle(
              fontSize: 16,
              color: kGradientTopColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
