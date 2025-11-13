import 'package:cosmetics_app/views/auth/login.dart';
import 'package:cosmetics_app/views/core/components/app_button.dart';
import 'package:cosmetics_app/views/core/components/app_image.dart';
import 'package:cosmetics_app/views/core/components/helper_method.dart';
import 'package:flutter/material.dart';

class SuccessDialogView extends StatelessWidget {
  const SuccessDialogView({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: EdgeInsets.all(32),
      children: [
        AppImage(image: 'success.json',height: 100,width: 100,),
        SizedBox(height: 24,),
          Text(textAlign: TextAlign.center,'Password Created!',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
          SizedBox(
            height: 8,
          ),
         
          Text(textAlign: TextAlign.center,'Congratulations! Your password\nhas been successfully created',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),
                 SizedBox(height: 24,),

          AppButton(text: 'Return to login',onPressed: () {
            
            goTo(LoginView());
            
          },)
          
      ],

    );
  }
}