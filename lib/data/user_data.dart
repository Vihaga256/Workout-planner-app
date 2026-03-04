import 'package:demo_app_2/models/equipment_model.dart';
import 'package:demo_app_2/models/exercise_model.dart';
import 'package:demo_app_2/models/user_model.dart';

User user = User(
  userId: "123456",
  fullName: "John Doe",
  age: 30,
  gender: "Male",
  address: "123 Main St, City, Country",
  description: "Fitness enthusiast",
  totlaExercisesCompleted: 0,
  totlaEquipmentHandedOver: 0,
  exerciseList: [
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
  ],
  equipmentList: [
    Equipment(
      id: 1,
      equipmentName: "Resistance Bands",
      equipmentDescription: "Elastic bands used for resistance exercises.",
      equipmentImageUrl: "assets/equipments/checklist.png",
      noOfMinuites: 20,
      handOvered: false,
      noOfCalories: 150,
    ),
    Equipment(
      id: 2,
      equipmentName: "Yoga Mat",
      equipmentDescription: "A mat for practicing yoga and floor exercises.",
      equipmentImageUrl: "assets/equipments/dumbbell.png",
      noOfMinuites: 60,
      handOvered: false,
      noOfCalories: 300,
    ),
  ],
  favExerciseList: [
    Exercise(
      exerciseName: "Plank",
      exerciseImageURL: "assets/equipments/dumbbell.png",
      nuOfMinutes: 30,
      id: 2,
      completed: false,
    ),
  ],
  favEquipmentList: [
    Equipment(
      id: 3,
      equipmentName: "Dumbbells",
      equipmentDescription: "Weights used for strength training.",
      equipmentImageUrl: "assets/equipments/dumbbell.png",
      noOfMinuites: 30,
      handOvered: false,
      noOfCalories: 200,
    ),
  ],
);