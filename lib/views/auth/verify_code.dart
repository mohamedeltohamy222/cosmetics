import 'package:cosmetics_app/views/auth/new_password.dart';
import 'package:cosmetics_app/views/core/components/app_button.dart';
import 'package:cosmetics_app/views/core/components/app_image.dart';
import 'package:cosmetics_app/views/core/components/app_resend.dart';
import 'package:cosmetics_app/views/core/components/app_verify_code.dart';
import 'package:cosmetics_app/views/core/components/helper_method.dart';
import 'package:cosmetics_app/views/home/pages/view.dart';
import 'package:cosmetics_app/views/home/success_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyCodeView extends StatelessWidget {
  const VerifyCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(backgroundColor: Color(0xffffffff)),
      // backgroundColor: Color(0xffffffff),
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
                    'Verify Code',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Color(0xff434C6D),
                    ),
                  ),
                ),

                SizedBox(height: 40),

                Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff8E8EA9),
                    ),
                    children: [
                      TextSpan(
                        text: '\tWe just sent a 4-digit verification code to\n',
                      ),
                      TextSpan(
                        text: '+20 1022658997\t',
                        style: TextStyle(
                          color: Color(0xff434C6D),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: 'Enter the code in the box\n below to continue.',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff8E8EA9),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 40),

                Align(
                  alignment: Alignment.bottomLeft,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Edit the number',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 28),
                
                AppVerifyCode(),

                AppResend(),
                SizedBox(height: 128),
                AppButton(
                  text: 'Done',
                  onPressed: () {
                    goTo(NewPasswordView());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
