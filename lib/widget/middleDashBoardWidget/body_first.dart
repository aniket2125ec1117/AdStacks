import 'package:adstack/size/size.dart';
import 'package:flutter/material.dart';

class BodyFirst extends StatelessWidget {
  const BodyFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
                children: [
                  Container(
                    height: height(context) * 0.3,
                    width: MediaQuery.of(context).size.width -
                        (leftWidth(context) + rightWidth(context)),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                        image: AssetImage('assets/images/background.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 20,
                    child: Text(
                      'ETHERIUM 2.0',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 9,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 5),
                    ),
                  ),
                  Positioned(
                    top: 60,
                    left: 20,
                    child: Text(
                      'Top Rating',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                  ),
                  Positioned(
                    top: 90,
                    left: 20,
                    child: Text(
                      'Projects',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                  ),
                  Positioned(
                    top: 140,
                    left: 20,
                    child: Text(
                      'Trending Project and high rating ',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 13,
                          letterSpacing: 1),
                    ),
                  ),
                  Positioned(
                    top: 160,
                    left: 20,
                    child: Text(
                      'Project Created by team ',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 13,
                          letterSpacing: 1),
                    ),
                  ),
                  Positioned(
                    top: 220,
                    left: 20,
                    child: SizedBox(
                      width: 150,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 102, 37, 114),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {},
                        child: const Text(
                          "Learn More.",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              );
  }
}