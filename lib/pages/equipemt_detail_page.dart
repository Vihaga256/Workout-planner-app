import 'package:demo_app_2/constants/colors.dart';
import 'package:demo_app_2/constants/constants_values.dart';
import 'package:demo_app_2/data/user_data.dart';
import 'package:demo_app_2/models/equipment_model.dart';
import 'package:demo_app_2/widget/equipemt_card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EquipemtDetailPage extends StatefulWidget {
  final String equipmentTitel;
  final String equipmentDescription;
  final List<Equipment> equipmentList;

  const EquipemtDetailPage({
    super.key,
    required this.equipmentTitel,
    required this.equipmentDescription,
    required this.equipmentList,
  });

  @override
  State<EquipemtDetailPage> createState() => _EquipemtDetailPageState();
}

class _EquipemtDetailPageState extends State<EquipemtDetailPage> {
  final DateFormat _dateFormat = DateFormat('EEEE, MMMM');
  final DateFormat _currentDate = DateFormat('dd');

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = _dateFormat.format(now);
    String formattedDay = _currentDate.format(now);

    return Scaffold(
      appBar: AppBar(
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
                widget.equipmentDescription,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                  color: kMainColor,
                ),
              ),
              SizedBox(height: 30),
              // GridView.builder(
              //   shrinkWrap: true,
              //   physics: NeverScrollableScrollPhysics(),
              //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: 2,
              //     crossAxisSpacing: kDefaultPadding,
              //     mainAxisSpacing: kDefaultPadding,
              //   ),
              //   itemCount: widget.equipmentList.length,
              //   itemBuilder: (context, index) {
              //     Equipment equipment = widget.equipmentList[index];
              //     return EquipemtCard(
              //       imageURL: equipment.equipmentImageUrl,
              //       description: equipment.equipmentDescription,
              //       title: equipment.equipmentName,
              //     );
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
