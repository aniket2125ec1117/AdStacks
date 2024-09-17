import 'package:adstack/size/size.dart';
import 'package:adstack/widget/rightDashBoardWidget/calender.dart';
import 'package:adstack/widget/rightDashBoardWidget/event.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RightDashBoard extends StatefulWidget {
  const RightDashBoard({super.key});

  @override
  State<RightDashBoard> createState() => _RightDashBoardState();
}

class _RightDashBoardState extends State<RightDashBoard> {
  DateTime today = DateTime.now();

  List<CircleAvatar> _birthdayList = [
    CircleAvatar(child: Icon(Icons.cake), radius: 30),
    CircleAvatar(child: Icon(Icons.cake), radius: 30),
  ];

  List<CircleAvatar> _anniversaryList = [
    CircleAvatar(child: Icon(Icons.favorite), radius: 30),
    CircleAvatar(child: Icon(Icons.favorite), radius: 30),
    CircleAvatar(child: Icon(Icons.favorite), radius: 30),
  ];

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(context),
      width: rightWidth(context),
      color: const Color.fromARGB(255, 231, 231, 231),
      child: Column(
        children: [
          // Header section
          Container(
            height: headerHeight(context),
            color: const Color.fromARGB(255, 231, 231, 231),
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(FontAwesomeIcons.clipboard),
                    const SizedBox(width: 16),
                    Icon(Icons.notifications_none),
                    const SizedBox(width: 16),
                    Icon(Icons.power_settings_new_outlined),
                  ],
                ),
                CircleAvatar(
                  child: Icon(Icons.person),
                ),
              ],
            ),
          ),
          // Scrollable content section
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                height: height(context),
                width: rightWidth(context),
                color: const Color.fromARGB(255, 44, 13, 97),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    const Text(
                      "GENERAL 10:00 AM TO 7:00 PM",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(height: MediaQuery.of(context).size.height*0.3, child: CalenderWidget(onDaySelected: _onDaySelected)),
                    const SizedBox(height: 20),
                    EventCard(
                      title: "Today's Birthday",
                      icon: Icons.cake,
                      total: _birthdayList.length,
                      buttonText: "Birthday Wishing",
                      person: _birthdayList,
                    ),
                    const SizedBox(height: 20),
                    EventCard(
                      title: "Anniversaries",
                      icon: Icons.favorite,
                      total: _anniversaryList.length,
                      buttonText: "Anniversary Wishing",
                      person: _anniversaryList,
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
