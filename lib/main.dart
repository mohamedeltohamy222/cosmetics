import 'package:cosmetics_app/views/auth/create_account.dart';
import 'package:cosmetics_app/views/auth/forget_password.dart';
import 'package:cosmetics_app/views/auth/login.dart';
import 'package:cosmetics_app/views/auth/new_password.dart';
import 'package:cosmetics_app/views/auth/verify_code.dart';
import 'package:cosmetics_app/views/core/components/helper_method.dart';
import 'package:cosmetics_app/views/home/on_boarding.dart';
import 'package:cosmetics_app/views/home/pages/home.dart';
import 'package:cosmetics_app/views/home/pages/my_cart.dart';
import 'package:cosmetics_app/views/home/pages/view.dart';
import 'package:cosmetics_app/views/home/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CosmeticsApp());
}

class CosmeticsApp extends StatelessWidget {
  const CosmeticsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorkey,
      
      theme: ThemeData(
        
        cardColor: Color(0xffD9D9D9),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(
            
            fontSize: 12,color: Color(0xff8E8EA9)
          ),
          floatingLabelStyle: TextStyle(
            fontSize: 18,
            color: Color(0xffD75D72)
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            
          ),
          hintStyle: TextStyle(color: Color(0xffb3b3c1 ),fontSize: 12,fontWeight: FontWeight.w500),
           enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffB3B2C1)
          ),
          borderRadius: BorderRadius.circular(8)
        ),
        ),
        appBarTheme: AppBarTheme(
          surfaceTintColor: Colors.transparent,
          color: Colors.transparent,elevation: 0,
          titleTextStyle: TextStyle(color: Color(0xff434C60),fontSize: 24,fontWeight: FontWeight.bold)
        ),
        scaffoldBackgroundColor: Color(0xffD9D9D9),
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xffD75D72),
          onPrimary: Colors.white,
          secondary: Color(0xffFFB3C1),
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          surface: Colors.white,
          onSurface: Color(0xff101623),
        ),
      ),
      
                              
      debugShowCheckedModeBanner: false,
      home:VerifyCodeView(),


    );
  }
}
