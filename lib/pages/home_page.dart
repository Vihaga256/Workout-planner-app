import 'package:demo_app_2/constants/colors.dart';
import 'package:demo_app_2/constants/constants_values.dart';
import 'package:demo_app_2/data/equipment_data.dart';
import 'package:demo_app_2/data/exercise_data.dart';
import 'package:demo_app_2/data/user_data.dart';
import 'package:demo_app_2/pages/equipemt_detail_page.dart';
import 'package:demo_app_2/widget/exercise_card.dart';
import 'package:demo_app_2/pages/exercise_detail_page.dart';
import 'package:demo_app_2/widget/progress_card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final exerciseList = ExerciseData().exerciseList;
  final equipmentList = EquipmentData().equipmentList;

  final DateFormat _dateFormat = DateFormat('EEEE, MMMM');
  final DateFormat _currentDate = DateFormat('dd');

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = _dateFormat.format(now);
    String formattedDay = _currentDate.format(now);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
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
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: kMainColor,
                  ),
                ),
                SizedBox(height: 20),
                ProgressCard(progressValue: 0.75, total: 100),
                SizedBox(height: 20),
                Text(
                  "Today's Activity",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: kMainColor,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ExerciseDetailPage(
                              exerciseTitle: "Warmup",
                              exerciseDescription:
                                  "Warmup is a method of preparing the body for exercise or sports by increasing the heart rate and warming the muscles. It is a simple exercise that helps to increase the blood flow to the muscles and prepare them for physical activity.",
                              exerciseList: exerciseList,
                            ),
                          ),
                        );
                        // Navigator.push(
                        //   context,
                        //   PageRouteBuilder(
                        //     transitionDuration: const Duration(
                        //       milliseconds: 400,
                        //     ), // Speed of the slide
                        //     pageBuilder:
                        //         (context, animation, secondaryAnimation) =>
                        //             ExerciseDetailPage(
                        //               exerciseTitle: "Warmup",
                        //               exerciseDescription:
                        //                   "Warmup is a method of preparing...",
                        //               exerciseList: exerciseList,
                        //             ),
                        //     transitionsBuilder:
                        //         (
                        //           context,
                        //           animation,
                        //           secondaryAnimation,
                        //           child,
                        //         ) {
                        //           const begin = Offset(1.0, 0.0);
                        //           const end = Offset.zero;
                        //           const curve =
                        //               Curves.easeInOut; // Smooth start and stop
                        //           var tween = Tween(
                        //             begin: begin,
                        //             end: end,
                        //           ).chain(CurveTween(curve: curve));
                        //           return SlideTransition(
                        //             position: animation.drive(tween),
                        //             child: child,
                        //           );
                        //         },
                        //   ),
                        // );
                      },
                      child: ExerciseCard(
                        description: 'see more',
                        imageURL: 'assets/exercises/cobra.png',
                        title: 'Yoga',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EquipemtDetailPage(
                              equipmentTitel: "equipmentTitel",
                              equipmentDescription: "",
                              equipmentList: equipmentList,
                            ),
                          ),
                        );
                      },
                      // equipmentList
                      child: ExerciseCard(
                        description: 'see more',
                        imageURL: 'assets/equipments/dumbbells2.png',
                        title: 'Equipment',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ExerciseCard(
                      description: 'see more',
                      imageURL: 'assets/exercises/cobra.png',
                      title: 'Yoga',
                    ),
                    ExerciseCard(
                      description: 'see more',
                      imageURL: 'assets/exercises/cobra.png',
                      title: 'Yoga',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
