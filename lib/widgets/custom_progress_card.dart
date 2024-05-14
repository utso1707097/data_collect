import 'package:flutter/material.dart';

class CustomProgressCard extends StatelessWidget {
  final String title;
  final double progress;
  final String progressText;
  final String targetLabel;
  final String targetValue;
  final String completedLabel;
  final String completedValue;

  const CustomProgressCard({
    Key? key,
    required this.title,
    required this.progress,
    required this.progressText,
    required this.targetLabel,
    required this.targetValue,
    required this.completedLabel,
    required this.completedValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10),),
      ),
      child: Column(
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff2517FF),
                        Color(0xff5298F0),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: 70,
                      height: 70,
                      child: CircularProgressIndicator(
                        value: progress,
                        // Set your progress value here (0.0 to 1.0)
                        backgroundColor: Color(0xff5298F0),
                        valueColor:
                            AlwaysStoppedAnimation<Color>(Color(0xff2517FF),),
                        strokeWidth: 8,
                      ),
                    ),
                    Text(
                      progressText, // You can replace this with a dynamic value
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                // Add some spacing between the progress bar and text
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      targetLabel,
                      // You can replace this with a dynamic value
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      targetValue,
                      // You can replace this with a dynamic value
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      completedLabel,
                      // You can replace this with a dynamic value
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      completedValue,
                      // You can replace this with a dynamic value
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
              ],
            ),
          )
        ],
      ),
    );
  }
}
