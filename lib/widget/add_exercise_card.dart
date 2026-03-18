import 'package:demo_app_2/constants/colors.dart';
import 'package:flutter/material.dart';

class AddExerciseCard extends StatefulWidget {
  final String exerciseName;
  final String exerciseImageURL;
  final int nuOfMinutes;

  const AddExerciseCard({
    super.key,
    required this.exerciseName,
    required this.exerciseImageURL,
    required this.nuOfMinutes,
  });

  @override
  State<AddExerciseCard> createState() => _AddExerciseCardState();
}

class _AddExerciseCardState extends State<AddExerciseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: MediaQuery.of(context).size.width * 0.52,
      padding: EdgeInsets.all(15),
      // width: 200,
      // height: 200,
      decoration: BoxDecoration(
        color: kSubtitleColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: kBoxShadow, offset: Offset(2, 5), blurRadius: 2),
        ],
      ),
      child: Column(
        children: [
          Text(
            widget.exerciseName,
            style: TextStyle(
              fontSize: 23,
              color: kMainColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Image.asset(
            widget.exerciseImageURL,
            width: MediaQuery.of(context).size.width * 0.23,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Text(
            "${widget.nuOfMinutes.toString()} Minutes",
            style: TextStyle(
              fontSize: 18,
              color: kTimecolor,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // ignore: deprecated_member_use
                  color: kBoxShadow.withOpacity(0.9),
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      size: 30,
                      color: kGradientBottomColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // ignore: deprecated_member_use
                  color: kBoxShadow.withOpacity(0.9),
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border,
                      size: 30,
                      color: const Color.fromARGB(255, 255, 0, 0),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
