import 'package:demo_app_2/constants/colors.dart';
import 'package:demo_app_2/constants/constants_values.dart';
import 'package:demo_app_2/data/exercise_data.dart';
import 'package:demo_app_2/data/user_data.dart';
import 'package:demo_app_2/models/exercise_model.dart';
import 'package:demo_app_2/widget/add_exercise_card.dart';
import 'package:flutter/material.dart';

class AddNewPage extends StatefulWidget {
  const AddNewPage({super.key});

  @override
  State<AddNewPage> createState() => _AddNewPageState();
}

class _AddNewPageState extends State<AddNewPage> {
  final exerciseList = ExerciseData().exerciseList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(kDefaultPadding),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, ${user.fullName}",
                  style: const TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: kMainColor,
                  ),
                ),
                // SizedBox(height: 8),
                Text(
                  "Let's Add Some Workout and Equipment for tody!",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: kGradientTopColor,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "All Exercises",
                  style: const TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: kMainColor,
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 280,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: exerciseList.length,
                    itemBuilder: (context, index) {
                      Exercise exercise = exerciseList[index];
                      return AddExerciseCard(
                        exerciseImageURL: exercise.exerciseImageURL,
                        exerciseName: exercise.exerciseName,
                        nuOfMinutes: exercise.nuOfMinutes,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
