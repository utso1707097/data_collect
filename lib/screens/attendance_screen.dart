import 'package:data_fetch/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_circle_widget.dart';

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({super.key});

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F8FA),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.25,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff2517FF),
                          Color(0xff5298F0),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      )),
                  child: const Icon(
                    Icons.calendar_month,
                    size: 60,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.2 - 25, // Adjust position to overlap
                  left: 20,
                  right: 20,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomCircleWidget(
                          text: 'Enter',
                          size: 90.0,
                          innerGradient: LinearGradient(
                            colors: [Colors.blue, Colors.blueAccent],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          outerColor: Colors.blue,
                        ),
                        CustomCircleWidget(
                          text: 'Exit',
                          size: 90.0,
                          innerGradient: LinearGradient(
                            colors: [Colors.green, Colors.lightGreenAccent],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          outerColor: Colors.green,
                        ),
                        CustomCircleWidget(
                          text: 'Leave',
                          size: 90.0,
                          innerGradient: LinearGradient(
                            colors: [Colors.red, Colors.redAccent],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          outerColor: Colors.red,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // Additional content can go here
          ],
        ),
      ),
    );
  }
}
