import 'package:adstack/size/size.dart';
import 'package:adstack/widget/middleDashBoardWidget/custom_listtile.dart';
import 'package:adstack/widget/middleDashBoardWidget/rowtile.dart';
import 'package:flutter/material.dart';

class BodyMiddle extends StatelessWidget {
  const BodyMiddle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // left container 1
                  Container(
                    height: height(context) * 0.4,
                    width: (MediaQuery.of(context).size.width -
                            (leftWidth(context) + rightWidth(context) + 40)) /
                        2,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 54, 29, 97),
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "All Projects",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: ListView(
                                children: [
                                  CustomListTile(
                                    title: "Technology behind the blockchain",
                                    subtitle: "Project #1",
                                    leadingIcon: Icons.person,
                                    onDetailsPressed: () {
                                      print("Project details button pressed");
                                    },
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CustomListTile(
                                    title: "Technology behind the blockchain",
                                    subtitle: "Project #1",
                                    leadingIcon: Icons.person,
                                    onDetailsPressed: () {
                                      print("Project details button pressed");
                                    },
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CustomListTile(
                                    title: "Technology behind the blockchain",
                                    subtitle: "Project #1",
                                    leadingIcon: Icons.person,
                                    onDetailsPressed: () {
                                      print("Project details button pressed");
                                    },
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  // left container 2
                  Container(
                    height: height(context) * 0.4,
                    width: (MediaQuery.of(context).size.width -
                            (leftWidth(context) + rightWidth(context) + 40)) /
                        2,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 54, 29, 97),
                        borderRadius: BorderRadius.circular(25)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // header parts
                        Container(
                          height: (height(context) * 0.4) / 3,
                          width: (MediaQuery.of(context).size.width -
                                  (leftWidth(context) +
                                      rightWidth(context) +
                                      40)) /
                              2,
                          decoration: const BoxDecoration(
                            color: const Color.fromARGB(117, 73, 47, 117),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Top Creators",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Name", style: TextStyle(color: Color.fromARGB(255, 133, 97, 194), fontSize: 15, fontWeight: FontWeight.bold),),
                                    Text("Artworks", style: TextStyle(color: Color.fromARGB(255, 133, 97, 194), fontSize: 15, fontWeight: FontWeight.bold),),
                                    Text("Rating", style: TextStyle(color: Color.fromARGB(255, 133, 97, 194), fontSize: 15, fontWeight: FontWeight.bold),)
                                  ],
                                )
                              ],
                              
                              
                            ),
                          ),
                        ),
                        // body part
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              RowTile(userId: '@madison_c21', artwork: "9821", rating: 3.0),
                              SizedBox(height: 10),
                              RowTile(userId: '@madison_c21', artwork: "9821", rating: 3.0),
                              SizedBox(height: 10),
                              RowTile(userId: '@madison_c21', artwork: "9821", rating: 3.0)
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              );
  }
}