import 'package:demo_app_2/models/equipment_model.dart';

class EquipmentData {
  final List<Equipment> equipmentList = [
    Equipment(
      id: 0,
      equipmentName: "Dumbbells",
      equipmentDescription:
          "A pair of dumbbells for strength training exercises.",
      equipmentImageUrl: "assets/equipments/calendar.png",
      noOfMinuites: 30,
      noOfCalories: 2,
      handOvered: false,
    ),
    Equipment(
      id: 1,
      equipmentName: "Resistance Bands",
      equipmentDescription: "Elastic bands used for resistance exercises.",
      equipmentImageUrl: "assets/equipments/checklist.png",
      noOfMinuites: 20,
      noOfCalories: 15,
      handOvered: false,
    ),
    Equipment(
      id: 2,
      equipmentName: "Yoga Mat",
      equipmentDescription: "A mat for practicing yoga and floor exercises.",
      equipmentImageUrl: "assets/equipments/dumbbell.png",
      noOfMinuites: 60,
      noOfCalories: 30,
      handOvered: false,
    ),
    Equipment(
      id: 3,
      equipmentName: "Jump Rope",
      equipmentDescription:
          "A rope used for cardiovascular exercises and coordination training.",
      equipmentImageUrl: "assets/equipments/dumbbells.png",
      noOfMinuites: 15,
      noOfCalories: 12,
      handOvered: false,
    ),
    Equipment(
      id: 4,
      equipmentName: "Kettlebells",
      equipmentDescription:
          "Weights with a handle used for strength, endurance, and flexibility training.",
      equipmentImageUrl: "assets/equipments/facial-roller.png",
      noOfMinuites: 45,
      noOfCalories: 25,
      handOvered: false,
    ),
    Equipment(
      id: 5,
      equipmentName: "Exercise Ball",
      equipmentDescription:
          "A large, inflatable ball used for core and stability exercises.",
      equipmentImageUrl: "assets/equipments/stationary-bike.png",
      noOfMinuites: 25,
      noOfCalories: 18,
      handOvered: false,
    ),
    Equipment(
      id: 6,
      equipmentName: "Treadmill",
      equipmentDescription:
          "A machine for walking or running while staying in one place.",
      equipmentImageUrl: "assets/equipments/stationary-bike.png",
      noOfMinuites: 40,
      noOfCalories: 35,
      handOvered: false,
    ),
    Equipment(
      id: 7,
      equipmentName: "Stationary Bike",
      equipmentDescription:
          "A bike that remains stationary while you pedal for cardiovascular exercise.",
      equipmentImageUrl: "assets/equipments/stationary-bike.png",
      noOfMinuites: 30,
      noOfCalories: 28,
      handOvered: false,
    ),
    Equipment(
      id: 8,
      equipmentName: "Elliptical Trainer",
      equipmentDescription:
          "A machine that simulates walking, running, and stair climbing for cardiovascular exercise.",
      equipmentImageUrl: "assets/equipments/stationary-bike.png",
      noOfMinuites: 35,
      noOfCalories: 32,
      handOvered: false,
    ),
    Equipment(
      id: 9,
      equipmentName: "Rowing Machine",
      equipmentDescription:
          "A machine that simulates rowing for a full-body cardiovascular workout.",
      equipmentImageUrl: "assets/equipments/stationary-bike.png",
      noOfMinuites: 45,
      noOfCalories: 40,
      handOvered: false,
    ),
  ];
}
