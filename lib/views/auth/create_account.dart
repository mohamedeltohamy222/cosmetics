import 'package:cosmetics_app/views/auth/verify_code.dart';
import 'package:cosmetics_app/views/core/components/app_button.dart';
import 'package:cosmetics_app/views/core/components/app_image.dart';
import 'package:cosmetics_app/views/core/components/app_login_or_register.dart';
import 'package:cosmetics_app/views/core/components/search_input.dart';
import 'package:cosmetics_app/views/core/components/helper_method.dart';
import 'package:cosmetics_app/views/home/pages/view.dart';
import 'package:flutter/material.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({super.key});

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

                Text(
                  'Create Account',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Color(0xff434C6D),
                  ),
                ),
             //   SizedBox(height: 14),

                SizedBox(height: 24),
                AppInput(label: "Your Name"),

                AppInput(label: "Phone Number", withCountryCode: true),
                AppInput(
                  label: "Create your password",
                  isPassword: true,
                ),
                AppInput(
                  label: "Confirm password",
                  isPassword: true,
                ),

            
                AppButton(text: 'Next',onPressed: () {
                  goTo(VerifyCodeView());
                },),

              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: AppLoginOrRegister(isLogin:false,),




    );
  }
}
