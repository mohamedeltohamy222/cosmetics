import 'dart:math';

import 'package:cosmetics_app/views/core/components/app_button.dart';
import 'package:cosmetics_app/views/core/app_input.dart';
import 'package:cosmetics_app/views/core/components/app_image.dart';
import 'package:cosmetics_app/views/core/components/app_login_or_register.dart';
import 'package:cosmetics_app/views/core/components/search_input.dart';
import 'package:cosmetics_app/views/core/components/helper_method.dart';
import 'package:cosmetics_app/views/home/pages/view.dart';
import 'package:flutter/material.dart';


class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.all(14.0).copyWith(top: 48),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppImage(image: 'Layer.png', width: 64, height: 64),
                SizedBox(height: 14),
          
                Center(
                  child: Text(
                    'Forget Password',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Color(0xff434C6D),
                    ),
                  ),
                ),
                SizedBox(height: 14),
                Text(textAlign: TextAlign.center,
                  'Please enter your phone number below to recovery your password.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color(0xff8E8EA9),
                  ),
                ),
                SizedBox(height: 40),
               AppInput(label: "Phone Number",withCountryCode: true,bottomSpace: 56,),
               
                
                AppButton(text: 'Login',onPressed: () {
                  goTo(HomePage());
                },),
        
              ],
            ),
          ),
        ),
      ),
    );
  }
}