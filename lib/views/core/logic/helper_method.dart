import 'dart:async';
import 'package:flutter/material.dart';

final navigatorkey = GlobalKey<NavigatorState>();


  

  void goTo(Widget page, {bool canPop = true,int? timeInSeconds}) {
  void action (){

  Navigator.pushAndRemoveUntil(
    navigatorkey.currentContext!,
    MaterialPageRoute(
      builder: (context) => page
      ),
    (route) => canPop,
  );
}
if (timeInSeconds != null) {
    Timer(
      Duration(seconds: timeInSeconds),
      () {
        action();
      },
    );
  } else {
    action();
  }

}

