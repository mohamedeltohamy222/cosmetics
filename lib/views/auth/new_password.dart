import 'dart:math';

import 'package:cosmetics_app/views/core/components/app_button.dart';
import 'package:cosmetics_app/views/core/components/app_image.dart';
import 'package:cosmetics_app/views/core/components/app_login_or_register.dart';
import 'package:cosmetics_app/views/core/components/search_input.dart';
import 'package:cosmetics_app/views/home/success_dialog.dart';
import 'package:flutter/material.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(14.0).copyWith(top: 48),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppImage(image: 'Layer.png', width: 64, height: 64),
                SizedBox(height: 14),

                Center(
                  child: Text(
                    'Create Password',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Color(0xff434C6D),
                    ),
                  ),
                ),
                SizedBox(height: 14),
                Text(
                  textAlign: TextAlign.center,
                  'The password should have at least \n6 characters.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color(0xff8E8EA9),
                  ),
                ),
                SizedBox(height: 40),
                AppInput(
                  label: "New password",
                  isPassword: true,
                ),
                AppInput(
                  label: "Confirm password",
                  bottomSpace: 56,
                  isPassword: true,
                ),

                AppButton(text: 'Confirm',onPressed: () {
                  showDialog(context: context, builder: (context) => SuccessDialogView(),);
                },),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
