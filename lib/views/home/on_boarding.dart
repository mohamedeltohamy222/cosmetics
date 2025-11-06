
import 'package:cosmetics_app/views/auth/login.dart';
import 'package:cosmetics_app/views/core/app_button.dart';
import 'package:cosmetics_app/views/core/logic/helper_method.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  List<String> texts = ['WELCOME!', 'SEARCH & PICK', 'PUCH NOTIFICATIONS '];
  List<String> paragraphs = [
    'Makeup has the power to transform your mood and empowers you to be a more confident person.',
    'We have dedicated set of products and routines hand picked for every skin type.',
    'Allow notifications for new makeup & cosmetics offers.',
  ];
  List<String> images = [
    'assets/images/onboardimage0.png',
    'assets/images/onboardimage1.png',
    'assets/images/onboardimage2.jpg',
  ];

  int currentview = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD9D9D9),

      body: Padding(
        padding: const EdgeInsets.all(41.0),
        child: Column(
          children: [
            if (currentview != 2)
            Align(
              alignment: Alignment.topRight,
              child: TextButton(onPressed: () {

                goTo(LoginView());

              }, child: Text('SKIP',style: TextStyle(color: Color(0xff434C6D)),)),
            ),
            Spacer(),
            Image.asset(images[currentview], height: 300, width: 300),
            SizedBox(height: 30),
            Text(
              texts[currentview],
              style: TextStyle(
                color: Color(0xff434C6D),
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Text(
              paragraphs[currentview],
              style: TextStyle(
                color: Color(0xff434C6D),
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 30),
            if(currentview != 2 )
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  if (currentview < texts.length - 1) {
                    currentview++;
                  } else {
                    currentview = 0;
                  }
                });
              },
              child: Image.asset('assets/images/vector.png'),
              backgroundColor: Color(0xff434C6D),
            
            )
            else AppButton(text: 'Lets start',onPressed: () {
              goTo(LoginView());
            },color: Color(0xff434C6D) ,),

            Spacer(),
          ],
        ),
      ),
    );
  }
}

