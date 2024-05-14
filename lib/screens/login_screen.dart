import 'package:data_fetch/widgets/custom_alert_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';
import '../utils/custom_grid_painter.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_text_field.dart';
import 'activity_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final LoginController controller = Get.find();

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  color: Color(0xff2567E8),
                  child: CustomPaint(
                    painter: GridPainter(),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  color: Color(0xffF6F8FA),
                ),
              ],
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.login,
                      color: Colors.white,
                      size: 36,
                    ),
                    Text(
                      "Sign in to your",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Account",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Enter your username and password to login",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 50,
                              ),
                              CustomTextField(
                                hintText: "Enter your username",
                                controller: controller.nameController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return '';
                                  }
                                  return null; // Return null if the input is valid
                                },
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              CustomTextField(
                                hintText: "Enter your password",
                                controller: controller.passwordController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return '';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              CustomElevatedButton(
                                onPressed: () {
                                  FocusScope.of(context).unfocus();
                                  if (_formKey.currentState?.validate() ??
                                      false) {
                                    controller.nameController.clear();
                                    controller.passwordController.clear();
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ActivityScreen(),
                                      ),
                                    );
                                  } else {
                                    if (controller.nameController.text ==
                                            null ||
                                        controller
                                            .nameController.text.isEmpty) {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return CustomAlertDialog(
                                            title: "Error",
                                            message: "Username is required",
                                          );
                                        },
                                      );
                                    } else if (controller
                                                .passwordController.text ==
                                            null ||
                                        controller
                                            .passwordController.text.isEmpty) {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return CustomAlertDialog(
                                            title: "Error",
                                            message: "Password is required",
                                          );
                                        },
                                      );
                                    }
                                  }
                                },
                                buttonText: "Login",
                              ),
                            ],
                          ),
                        ),
                      ),
                      // adjust color as needed
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
