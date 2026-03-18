import 'package:demo_app_2/constants/colors.dart';
import 'package:demo_app_2/constants/constants_values.dart';
import 'package:demo_app_2/data/user_data.dart';
import 'package:demo_app_2/models/exercise_model.dart';
import 'package:demo_app_2/widget/exercise_card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExerciseDetailPage extends StatefulWidget {
  final String exerciseTitle;
  final String exerciseDescription;
  final List<Exercise> exerciseList;

  const ExerciseDetailPage({
    super.key,
    required this.exerciseTitle,
    required this.exerciseDescription,
    required this.exerciseList,
  });

  @override
  State<ExerciseDetailPage> createState() => _ExerciseDetailPageState();
}

class _ExerciseDetailPageState extends State<ExerciseDetailPage> {
  final DateFormat _dateFormat = DateFormat('EEEE, MMMM');
  final DateFormat _currentDate = DateFormat('dd');

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = _dateFormat.format(now);
    String formattedDay = _currentDate.format(now);

    return Scaffold(
      appBar: AppBar(
        // leading: Icons.abc,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$formattedDate, $formattedDay',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: kTimecolor,
              ),
            ),
            Text(
              user.fullName,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kMainColor,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(kDefaultPadding),
          child: Column(
            children: [
              Text(
                widget.exerciseDescription,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                  color: kMainColor,
                ),
              ),
              SizedBox(height: 30),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: kDefaultPadding,
                  mainAxisSpacing: kDefaultPadding,
                ),
                itemCount: widget.exerciseList.length,
                itemBuilder: (context, index) {
                  Exercise exercise = widget.exerciseList[index];
                  return ExerciseCard(
                    imageURL: exercise.exerciseImageURL,
                    title: exercise.exerciseName,
                    description: '${exercise.nuOfMinutes} of workout',
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
