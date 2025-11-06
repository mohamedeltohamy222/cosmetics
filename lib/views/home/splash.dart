import 'package:cosmetics_app/views/core/logic/helper_method.dart';
import 'package:cosmetics_app/views/home/on_boarding.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    goTo(OnBoardingView(),timeInSeconds: 3,canPop: false);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/splash_image.png'),
            Image.asset('assets/images/splash_text.png')
        
          ],
        ),
      ),


    );
  }
}