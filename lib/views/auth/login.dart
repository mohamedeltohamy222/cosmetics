import 'dart:math';

import 'package:cosmetics_app/views/auth/forget_password.dart';
import 'package:cosmetics_app/views/core/app_button.dart';
import 'package:cosmetics_app/views/core/app_input.dart';
import 'package:cosmetics_app/views/core/components/app_image.dart';
import 'package:cosmetics_app/views/core/components/app_login_or_register.dart';
import 'package:cosmetics_app/views/core/components/search_input.dart';
import 'package:cosmetics_app/views/core/logic/helper_method.dart';
import 'package:cosmetics_app/views/home/pages/view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.all(14.0).copyWith(top: 48),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppImage(image: 'login_img.png', width: 284, height: 200),
                SizedBox(height: 14),
          
                Text(
                  'Login Now',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Color(0xff434C6D),
                  ),
                ),
                SizedBox(height: 14),
                Text(
                  'Please enter the details below to continue',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color(0xff8E8EA9),
                  ),
                ),
                SizedBox(height: 24),
               SearchInput(label: "Phone Number",withCountryCode: true,),
                SearchInput(label: "Your Password",isPassword: true,bottomSpace: 0,),
               
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                   style:  TextButton.styleFrom(
                      visualDensity: VisualDensity.compact
                    ),
                    onPressed: () {
                      goTo(ForgetPasswordView());
                    },
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(color: Color(0xffD75D72)),
                    ),
                  ),
                ),
                SizedBox(height: 44),
                AppButton(text: 'Login',onPressed: () {
                  goTo(HomePage());
                },),
        
          
               // SizedBox(height: 78),
          
               
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: AppLoginOrRegister(isLogin: true,),
      
    );
  }
}
