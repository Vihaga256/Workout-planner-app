import 'package:demo_app_2/models/equipment_model.dart';
import 'package:demo_app_2/models/exercise_model.dart';

class User {
  final String userId;
  final String fullName;
  final int age;
  final String gender;
  final String address;
  final String description;
  int totlaExercisesCompleted = 0;
  int totlaEquipmentHandedOver = 0;
  final List<Exercise> exerciseList;
  final List<Equipment> equipmentList;
  final List<Exercise> favExerciseList;
  final List<Equipment> favEquipmentList;

  User({
    required this.userId,
    required this.fullName,
    required this.age,
    required this.gender,
    required this.address,
    required this.description,
    required this.favExerciseList,
    required this.favEquipmentList,
    required this.exerciseList,
    required this.equipmentList,
    required int totlaExercisesCompleted,
    required int totlaEquipmentHandedOver,
  });

  // Mothodes
  void addExercise(Exercise exercise) {
    exerciseList.add(exercise);
  }

  void removeExercise(Exercise exercise) {
    exerciseList.remove(exercise);
  }

  void addFavoriteExercise(Exercise exercise) {
    favExerciseList.add(exercise);
  }

  void removeFavoriteExercise(Exercise exercise) {
    favExerciseList.remove(exercise);
  }
}
