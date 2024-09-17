import 'package:adstack/widget/middleDashBoardWidget/body_first.dart';
import 'package:adstack/widget/middleDashBoardWidget/body_middle.dart';

import 'package:adstack/widget/middleDashBoardWidget/line_chart.dart';

import 'package:flutter/material.dart';
import 'package:adstack/size/size.dart';

class MiddleDashboard extends StatefulWidget {
  const MiddleDashboard({super.key});

  @override
  State<MiddleDashboard> createState() => _MiddleDashboardState();
}

class _MiddleDashboardState extends State<MiddleDashboard> {
  late TextEditingController _textFormField;

  @override
  void initState() {
    super.initState();
    _textFormField = TextEditingController();
  }

  @override
  void dispose() {
    _textFormField.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(context),
      width: middleWidth(context),
      color: const Color.fromARGB(255, 231, 231, 231),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Header section
              Container(
                height: headerHeight(context),
                width: MediaQuery.of(context).size.width -
                    (rightWidth(context) + leftWidth(context)),
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Home",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: headerHeight(context) * 0.8,
                      width: 300,
                      child: TextField(
                        controller: _textFormField,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 29, 8, 65),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 16.0),
                          hintText: 'Search',
                          hintStyle: const TextStyle(color: Colors.white),
                          suffixIcon: const Icon(
                            Icons.search_outlined,
                            color: Colors.white,
                          ),
                        ),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),

              // bodyFirst
              const BodyFirst(),
              const SizedBox(height: 10),
              // midllePart
              const BodyMiddle(),
              const SizedBox(
                height: 10,
              ),
              // last part
              Container(
                height: height(context) * 0.5,
                width: MediaQuery.of(context).size.width -
                    (leftWidth(context) + rightWidth(context)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: PerformanceGraph(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
