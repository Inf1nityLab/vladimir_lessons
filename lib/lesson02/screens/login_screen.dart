import 'package:flutter/material.dart';
import 'package:vladimir_timur_lessons/lesson02/constants/colors.dart';
import 'package:vladimir_timur_lessons/lesson02/screens/main_screen.dart';
import 'package:vladimir_timur_lessons/lesson02/service/navigation.dart';
import 'package:vladimir_timur_lessons/lesson02/widgets/elevated_button_widget.dart';
import 'package:vladimir_timur_lessons/lesson02/widgets/icon_button_widget.dart';
import 'package:vladimir_timur_lessons/lesson02/widgets/text_button_widget.dart';
import 'package:vladimir_timur_lessons/lesson02/widgets/text_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showPass = true;

  void showPassword() {
    setState(() {
      showPass = !showPass;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 70),
        child: Column(
          children: [
            const CircleAvatar(radius: 50, backgroundColor: indigo),
            const SizedBox(
              height: 50,
            ),
            const TextFieldWidget(
              text: 'Email Address',
              iconData: Icons.email_outlined,
              show: false,
            ),
            const SizedBox(
              height: 30,
            ),
            TextFieldWidget(
              text: 'Password',
              iconData: Icons.email,
              show: showPass,
              widget: IconButtonWidget(
                iconData: showPass ? Icons.visibility : Icons.visibility_off,
                onPressed: () {
                  showPassword();
                },
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButtonWidget(
              text: 'Login',
              onPressed: () {
                navigation(context, const MainScreen());
              },
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButtonWidget(text: "Sign up", onPressed: () {}),
                TextButtonWidget(text: "Forgot password?", onPressed: () {}),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
