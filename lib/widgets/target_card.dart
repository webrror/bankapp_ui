import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class TargetCard extends StatelessWidget {
  const TargetCard({
    Key? key,
    required this.percentage,
  }) : super(key: key);
  final int percentage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white70,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(
                1.0,
                1.0,
              ),
              blurRadius: 20.0,
              spreadRadius: 3.0,
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
        child: Row(
          children: [
            Image.asset(
              'assets/images/trophy.png',
              height: 85,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Target completed $percentage%",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 220,
                  child: LinearProgressBar(
                    maxSteps: 5,
                    progressType: LinearProgressBar
                        .progressTypeLinear, // Use Linear progress
                    currentStep: 4,
                    progressColor: Color.fromRGBO(194, 186, 245, 1),
                    backgroundColor: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "View Target",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.symmetric(horizontal: 20)),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(200, 253, 205, 1))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
