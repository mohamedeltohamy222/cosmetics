import 'package:animate_do/animate_do.dart';
import 'package:cosmetics_app/views/core/components/app_image.dart';
import 'package:cosmetics_app/views/core/components/helper_method.dart';
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
    goTo(OnBoardingView(), timeInSeconds: 3, canPop: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      body: Center(
        child: FadeInDownBig(
          duration: Duration(seconds: 2),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppImage(
                image: 'splash_image.png',
                fit: BoxFit.fill,
                height: 200,
                width: 200,
              ),
              AppImage(image: 'splash_text.png'),
            ],
          ),
        ),
      ),
    );
  }
}
