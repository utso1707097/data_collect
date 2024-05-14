import 'dart:developer';

import 'package:data_fetch/screens/activity_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor:  Colors.white,
      width: MediaQuery.of(context).size.width * 0.8,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff2517FF),
                  Color(0xff5298F0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40, // Adjust size as needed
                  backgroundColor: Colors.white,
                  // Add your image here
                  child: ClipOval(
                    child: Image.asset(
                      "assets/images/avatar.png",
                      fit: BoxFit.cover, // Adjust fit as needed
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Md Samaul Haque Malik',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Software Engineer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.work_history_outlined),
            title: Text(
              'Activity',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ActivityScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.view_list),
            title: Text(
              'Dashboard',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              // Navigate to see entered outlet page
              // SharedPreferenceController cache = Get.find();
              // log(cache.user?.userId ?? "");
              // Navigator.pop(context);
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => EnteredOutletPage(userId: cache.user?.userId ?? "")),
              // );
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: Text(
              'Logout',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () async {
              // SharedPreferenceController cache = Get.find();
              // await cache.logout();
              // navigatorKey.currentState!.pop();
              // navigatorKey.currentState!.pushReplacement(
              //   MaterialPageRoute(
              //     builder: (context) => LoginPage(),
              //   ),
              // );
            },
          ),
        ],
      ),
    );
  }
}
