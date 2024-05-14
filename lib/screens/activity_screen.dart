import 'package:data_fetch/widgets/custom_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../widgets/custom_info_card.dart';
import '../widgets/custom_progress_card.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F8FA),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
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
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Image.asset(
                            "assets/images/avatar.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Md Samaul Haque Malik",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                                maxLines: 2,
                              ),
                              Text(
                                "Software Engineer",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                                maxLines: 2,
                              ),
                              Text(
                                "Interspeed Solutions Limited",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                                maxLines: 2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomProgressCard(
                  title: "Today Strike Rate",
                  progress: 0.7,
                  progressText: "70%",
                  targetLabel: "Today's Target: ",
                  targetValue: "50",
                  completedLabel: "Today's Total visit:",
                  completedValue: "35",
                ),
                CustomProgressCard(
                  title: "Till Date Strike Rate",
                  progress: 1435 / 3445,
                  progressText: "${(1435 / 3445 * 100).toInt()}%",
                  targetLabel: "Monthly target",
                  targetValue: "1435",
                  completedLabel: "Till date visit",
                  completedValue: "3445",
                ),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  CustomInfoCard(
                    icon: Icons.group,
                    title: "Team(SSO & S0)",
                    value: "13",
                  ),
                  SizedBox(height: 10,),
                  CustomInfoCard(
                    icon: Icons.check_circle,
                    title: "Present",
                    value: "9",
                  ),
                  SizedBox(height: 10,),
                  CustomInfoCard(
                    icon: CupertinoIcons.clear_thick_circled,
                    title: "Absent",
                    value: "1",
                  ),
                  SizedBox(height: 10,),
                  CustomInfoCard(
                    icon: Icons.beach_access,
                    title: "On leave",
                    value: "1",
                  ),
                  SizedBox(height: 10,),
                  CustomInfoCard(
                    icon: Icons.hourglass_empty,
                    title: "Idle",
                    value: "2",
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
