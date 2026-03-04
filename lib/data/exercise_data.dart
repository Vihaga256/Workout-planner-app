import 'package:demo_app_2/models/exercise_model.dart';

class ExerciseData {
  final List<Exercise> exerciseList = [
    Exercise(
      exerciseName: "Push-ups",
      exerciseImageURL: "assets/exercises/cobra.png",
      nuOfMinutes: 15,
      id: 0,
      completed: false,
    ),
    Exercise(
      exerciseName: "Squats",
      exerciseImageURL: "assets/exercises/downward-facing.png",
      nuOfMinutes: 20,
      id: 1,
      completed: false,
    ),
    Exercise(
      exerciseName: "Plank",
      exerciseImageURL: "assets/exercises/dragging.png",
      nuOfMinutes: 30,
      id: 2,
      completed: false,
    ),
    Exercise(
      exerciseName: "Jumping Jacks",
      exerciseImageURL: "assets/exercises/hunch_back.png",
      nuOfMinutes: 10,
      completed: false,
      id: 3,
    ),
    Exercise(
      exerciseName: "Crunches",
      exerciseImageURL: "assets/exercises/treadmill-machine_men.png",
      nuOfMinutes: 15,
      id: 4,
      completed: false,
    ),
    Exercise(
      exerciseName: "Lunges",
      exerciseImageURL: "assets/exercises/treadmill-machine_women.png",
      nuOfMinutes: 20,
      id: 5,
      completed: false,
    ),
    Exercise(
      exerciseName: "Burpees",
      exerciseImageURL: "assets/exercises/triangle.png",
      nuOfMinutes: 25,
      id: 6,
      completed: false,
    ),
    Exercise(
      exerciseName: "High Knees",
      exerciseImageURL: "assets/exercises/weightlifting.png",
      nuOfMinutes: 10,
      id: 7,
      completed: false,
    ),
    Exercise(
      exerciseName: "Bicycle Crunches",
      exerciseImageURL: "assets/exercises/yoga.png",
      nuOfMinutes: 20,
      id: 8,
      completed: false,
    ),
    Exercise(
      exerciseName: "Leg Raises",
      exerciseImageURL: "assets/exercises/triangle.png",
      nuOfMinutes: 15,
      id: 9,
      completed: false,
    )
  ];
}
