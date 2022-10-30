import 'package:flutter/material.dart';
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
          boxShadow: const [
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
            const SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Target completed $percentage%",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 220,
                  child: LinearProgressBar(
                    maxSteps: 5,
                    progressType: LinearProgressBar
                        .progressTypeLinear, // Use Linear progress
                    currentStep: 4,
                    progressColor: const Color.fromRGBO(194, 186, 245, 1),
                    backgroundColor: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.symmetric(horizontal: 20)),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromRGBO(200, 253, 205, 1))),
                  child: const Text(
                    "View Target",
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
