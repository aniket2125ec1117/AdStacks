import 'package:adstack/size/size.dart';
import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EventCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final int total;
  final List<CircleAvatar> person;
  final String buttonText;

  EventCard(
      {required this.title,
      required this.icon,
      required this.total,
      required this.buttonText,
      required this.person});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blueGrey[900],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.white),
              const SizedBox(width: 10),
              Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [for (int i = 0; i < person.length; i++) Row(children: [person[i], SizedBox(width: 10,)],),],
          ),
          const SizedBox(height: 22),
          // Text('Total: $total', style: TextStyle(color: Colors.white)),
          Row(
            children: [
              const Text(
                'Total',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                child: const VerticalDivider(
                  thickness: 1,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                total.toString(),
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                child: const VerticalDivider(
                  thickness: 1,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(height: 22),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 40,
              width: rightWidth(context),
              child: ElevatedButton.icon(
                icon: Icon(
                  Icons.send_rounded,
                  color: Colors.white,
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 211, 42, 241),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                label: Text(
                  buttonText,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
